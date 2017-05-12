
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Success!</title>
    <meta name="description" content="MovieLister success page.">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>Success!</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
        	<p>${message}</p>
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>