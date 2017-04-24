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
        
        <h1>MovieListr has encountered an error!</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
          <p>To continue, click the back button.</p>
          <p><strong>Error Details</strong></p>
          <p>Type: ${pageContext.exception["class"]}</p>
          <p>Message: ${pageContext.exception.message}</p>
        </div>
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>