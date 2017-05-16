package edu.cvtc.web.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.dao.impl.MovieDaoException;
import edu.cvtc.web.dao.impl.MovieDaoImpl;
import edu.cvtc.web.model.Movie;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/Search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String target = null;
		
		try {
			
			final MovieDao movieDao = new MovieDaoImpl();
			final List<Movie> movies = movieDao.retrieveMovies();
			List<Movie> filteredMovies = new ArrayList<>();
			
			//final String title = request.getParameter("title");
			
			final String searchType = request.getParameter("searchType");
			final String searchString = request.getParameter("searchString");
			
			switch (searchType) {
			
			case "title":
				filteredMovies = movies.stream()
				.filter((movie) -> movie.getTitle().toLowerCase().contains(searchString.toLowerCase())).collect(Collectors.toList());
				break;
				
			case "director":
				filteredMovies = movies.stream()
				.filter((movie) -> movie.getDirector().toLowerCase().contains(searchString.toLowerCase())).collect(Collectors.toList());
				break;
				
			default:
				break;
				
			}
			
			request.setAttribute("search", true);
			request.setAttribute("searchType", searchType);
			request.setAttribute("searchString", searchString);
			request.setAttribute("movies", filteredMovies);
			
			target = "view-all.jsp";
			
			
		} catch (MovieDaoException e) {
			
			e.printStackTrace();
			
			request.setAttribute("message", "Cannot access database to search.");
			
			target = "error.jsp";
		}
		
		request.getRequestDispatcher(target).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
