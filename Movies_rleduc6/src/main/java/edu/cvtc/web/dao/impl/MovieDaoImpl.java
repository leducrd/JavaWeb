/**
 * 
 */
package edu.cvtc.web.dao.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.model.Movie;
import edu.cvtc.web.util.DBUtility;
import edu.cvtc.web.util.WorkbookUtility;

/**
 * @author ryanleduc
 *
 */
public class MovieDaoImpl implements MovieDao {
	
	private static final String SELECT_ALL_FROM_MOVIE = "SELECT * FROM movie;";
	private static final String DROP_TABLE_MOVIE = "DROP TABLE IF EXISTS movie;";
	private static final String CREATE_TABLE_MOVIE = "CREATE TABLE movie (id integer primary key autoincrement, title text, director text, lengthInMinutes integer);";

	@Override
	public void populate(String filepath) throws MovieDaoException {
		
		Connection connection = null;
		Statement statement = null;
		
		try {
			
			connection = DBUtility.createConnection();
			statement = connection.createStatement();
			
			statement.setQueryTimeout(DBUtility.TIMEOUT);
			
			statement.executeUpdate(DROP_TABLE_MOVIE);
			statement.executeUpdate(CREATE_TABLE_MOVIE);
			
			final File inputFile = new File(filepath);
			
			final List<Movie> movies = WorkbookUtility.retrieveMoviesFromWorkbook(inputFile);
			
			for (final Movie movie : movies) {
				
				final String insertValues = "insert into movie (title, director, lengthInMinutes)"
						+ "values ("
						+ "'" + movie.getTitle() + "', "
						+ "'" + movie.getDirector() + "', "
						+ movie.getLengthInMinutes() + ");";
				
				System.out.println(insertValues);
				
				
				statement.executeUpdate(insertValues);
			}
		} catch (ClassNotFoundException | SQLException | InvalidFormatException | IOException e) {
			
			e.printStackTrace();
			throw new MovieDaoException("Error: Unable to populate database.");
			
		} finally {
			DBUtility.closeConnections(connection, statement);
		}
		

	}

	@Override
	public List<Movie> retrieveMovies() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMovie(Movie movie) {
		// TODO Auto-generated method stub

	}

}