<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Add a New Movie</title>
    <meta name="description" content="MovieListr form for adding movies to the database.">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>MovieListr</h1>
        
<%@ include file="includes/navigation.jsp" %>
        <h2>Add Movie</h2>
        <div class="container">
          <form action="AddMovie" method="post">
            <label for="title"><strong>Title: </strong></label>
            <input name="title"><br>
            
            <label for="director"><strong>Director: </strong></label>
            <input name="director"><br>
            
            <label for="lengthInMinutes"><strong>Length (In Minutes): </strong></label>
            <input name="lengthInMinutes"><br>
            
            <input type="submit" value="Add Movie">
          </form>
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>