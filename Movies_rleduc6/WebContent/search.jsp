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
        
        <h1>MovieListr: Search</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <form action="Search" method="post">
            <label for="title"><strong>Search by title: </strong></label>
            <input name="title">
            <input type="submit" value="Search!">
          </form>
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>