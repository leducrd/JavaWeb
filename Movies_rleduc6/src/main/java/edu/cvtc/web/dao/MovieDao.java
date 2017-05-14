/**
 * 
 */
package edu.cvtc.web.dao;

import java.util.List;

import edu.cvtc.web.dao.impl.MovieDaoException;
import edu.cvtc.web.model.Movie;

/**
 * @author ryanleduc
 *
 */
public interface MovieDao {
	
	void populate(String filepath) throws MovieDaoException;

	List<Movie> retrieveMovies() throws MovieDaoException;
	
	void insertMovie(Movie movie);
}
