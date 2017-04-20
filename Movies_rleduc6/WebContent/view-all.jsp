<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Home</title>
    <meta name="description" content="This is an MVC example that demonstrates 
    how to use IO to output the contens of an Excel spreadsheet to a web page.">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>Welcome to MovieListr</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <c:choose>
          
            <c:when test="${empty movies}">
              <p>Sorry, there are no movies listed</p>
            </c:when>
            <c:otherwise>
              <c:forEach var="movie" items="${movies}">
                <div class="span4">
                  <h3>${movie.title}</h3>
                  <p>Director: ${movie.director} | Length: ${movie.lengthInMinutes}</p>
                </div>
              </c:forEach>
            </c:otherwise>
 
          </c:choose>
          
        </div>
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>