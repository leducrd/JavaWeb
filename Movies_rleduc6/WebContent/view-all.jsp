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
        
        <h1>MovieListr</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
        	<c:choose>
	        	<c:when test="${search}">
	        		
	        		<p><b>Search Criteria:</b></p>
	        		<p><b>Type:</b> ${searchType} | <b>Phrase:</b> ${searchString}</p>
	        		<h3>Search Results</h3>
	        		<hr>
	        		
	        	</c:when>
	        	
	        	<c:when test="${viewType == null}">
	        		<h3>View All: Unsorted</h3>
	        		<hr>
	        	</c:when>
	        	
	        	<c:when test="${viewType == 'title'}">
	        		<h3>View All: By Title</h3>
	        		<hr>
	        	</c:when>
	        	
	        	<c:when test="${viewType == 'length'}">
	        		<h3>View All: Length Ascending</h3>
	        		<hr>
	        	</c:when>
        	</c:choose>
        	
           <c:choose>
          
             <c:when test="${empty movies}">
               <p>Sorry, there are no movies listed</p>
             </c:when>
             <c:otherwise>
               <c:forEach var="movie" items="${movies}">
                 <div class="span4">
                   <h4>${movie.title}</h4>
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