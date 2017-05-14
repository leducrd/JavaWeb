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
        
        <h1>Add Movie</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <form action="AddMovie" method="post">
            <label for="title"><strong>First Name: </strong></label>
            <input name="title"><br>
            
            <label for="director"><strong>Last Name: </strong></label>
            <input name="director"><br>
            
            <label for="lengthInMinutes"><strong>Age: </strong></label>
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