<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Search</title>
    <meta name="description" content="This is an JSP example for a simple search page">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>MovieListr</h1>
        
<%@ include file="includes/navigation.jsp" %>
        <h2>Search</h2>
        <div class="container">
          <form action="Search" method="post">
          	<p>Select a search type:</p>
          	<p><input type="radio" name="searchType" value="title"> Title</p>
          	<p><input type="radio" name="searchType" value="director"> Director</p>
            <label for="searchString"><strong>Search: </strong></label>
            <input name="searchString">
            <input type="submit" value="Search!">
          </form>
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>