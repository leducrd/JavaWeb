<!DOCTYPE html>
<html>
  <head>
  	<title>Ryan LeDuc - Contact</title>
  	<link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <header>
      <h1>Ryan LeDuc</h1>
      <nav>
        <ul>
    	  <li><a href="index.jsp">Home</a></li>
    	  <li><a href="bio.html">Bio</a></li>
    	  <li><a href="contact.jsp">Contact Me</a></li>
    	</ul>
      </nav>
    </header>
    <main>
      <h2>Contact me!</h2>
    
      <p>I can always be fund at rleduc6@student.cvtc.edu</p>
      
      <p>OR</p>
    
      <p>To connect with me, enter your name and email address below and I will contact you as soon as possible.</p>
      
      <p><em>${message}</em></p>
    
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
    <footer>
      <small>Copyright &copy;1988-2017 Ryan LeDuc</small>
    </footer>
  </body>
</html>