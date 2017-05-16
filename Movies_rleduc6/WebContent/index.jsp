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
        <p>Movies listed and waiting for you....</p>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <p>Thanks for visiting MovieListr! Click on "View Movies" in the navigation above to view all the movies in our database.</p>
        </div>
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>