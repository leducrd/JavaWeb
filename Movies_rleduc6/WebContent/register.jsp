<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>MovieListr: Register</title>
    <meta name="description" content="Registration Page for the MovieListr app.">
<%@ include file="includes/styles.jsp" %>
  </head>
  <body>
  
    <div class="container">
      
      <div class="hero-unit">
        
        <h1>Register</h1>
        
<%@ include file="includes/navigation.jsp" %>
        
        <div class="container">
        
          <form action="RegisterUser" method="post">
          	
          	<p>You must register to add movies to or populate the database.</p>
          	
          	<input type="hidden" name="action" value="registerUser">
          
          	<label for="firstName"><strong>First Name: </strong></label>
            <input name="firstName"><br>
            
            <label for="lastName"><strong>Last Name: </strong></label>
            <input name="lastName"><br>
            
            <label for="email"><strong>Email: </strong></label>
            <input name="email"><br>
            
            <input type="submit" value="Register!">
            
          </form>
          
        </div>
        
<%@ include file="includes/footer.jsp" %>
      </div>
      
    </div>
    
<%@ include file="includes/scripts.jsp" %>
  </body>
</html>