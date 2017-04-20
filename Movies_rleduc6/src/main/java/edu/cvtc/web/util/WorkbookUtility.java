/**
 * 
 */
package edu.cvtc.web.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import edu.cvtc.web.model.Movie;

/**
 * @author ryanleduc
 *
 */
public class WorkbookUtility {

	public static final String INPUT_FILE = "/assets/Movies.xlsx";
	
	public static List<Movie> retrieveMoviesFromWorkbook(final File inputFile) throws InvalidFormatException, IOException {
		
		final List<Movie> movies = new ArrayList<>();
		
		// Create reference to the workbook
		final Workbook workbook = WorkbookFactory.create(inputFile);
		
		// create a reference to the sheet in the workbook
		final Sheet sheet = workbook.getSheetAt(0);
		
		// iterate over the rows in the sheet
		for (final Row row : sheet) {
			
			final Cell titleCell = row.getCell(0);
			final Cell directorCell = row.getCell(1);
			final Cell lengthCell = row.getCell(2);
			
			final Movie movie = new Movie(
					titleCell.getStringCellValue().trim(),
					directorCell.getStringCellValue().trim(),
					(int)lengthCell.getNumericCellValue());
			
			movies.add(movie);
		}
		
		return movies;
	}
}
