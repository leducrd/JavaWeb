<!DOCTYPE html>
<html>
  <head>
  	<title>My Personal Website</title>
  	<link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <h1>Welcome to my personal website!</h1>
    <p>To connect with me, enter your name and email address below</p>
    
    <form action="connect" >
    
      <label for="firstName">First Name: </label>
      <input name="firstName" value="${user.firstName}"><br>
      
      <label for="lastName">Last Name: </label>
      <input name="lastName" value="${user.lastName}"><br>
      
      <label for="email">Email: </label>
      <input name="email" value="${user.email}"><br>
      
      <input type="submit" value="Connect!">
      
    </form>
  </body>
</html>