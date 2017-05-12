<!--  Not enough that we say we want to use the library, must include the dependacy in the POM file -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Populate Database</title>
    <meta name="description" content="MovieListr: populate database from Excel workbook.">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>Populate Database</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <form action="PopulateDatabase" method="post">
          	<p>Click on the populate button to populate the person database.</p>
          	<p>Warning: Submitting this form will reset the database and it will only contain those people in the original spreadsheet.</p>
          	
            <input type="submit" value="Populate!">
          </form>
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>