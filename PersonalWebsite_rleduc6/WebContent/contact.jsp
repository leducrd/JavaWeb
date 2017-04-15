<!DOCTYPE html>
<html>
  <head>
  	<title>Ryan LeDuc - Contact</title>
  	<link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <header>
    	<nav>
    	  <ul>
    	    <li><a href="index.jsp">Home</a></li>
    	    <li><a href="bio.html">Bio</a></li>
    	    <li><a href="contact.jsp">Contact Me</a></li>
    	  </ul>
    	</nav>
    </header>
    <main>
      <h1>Contact me!</h1>
    
      <p>To learn more about me, visit my <a href="bio.html">Bio Page</a>.</p>
    
      <p><em>${message}</em></p>
    
      <p>To connect with me, enter your name and email address below</p>
    
      <form action="connect" method="post">
    
        <label for="firstName">First Name: </label>
        <input name="firstName" value="${user.firstName}"><br>
      
        <label for="lastName">Last Name: </label>
        <input name="lastName" value="${user.lastName}"><br>
      
        <label for="email">Email: </label>
        <input name="email" value="${user.email}"><br>
      
        <input type="submit" value="Connect!">
      
      </form>
    </main>
  </body>
</html>