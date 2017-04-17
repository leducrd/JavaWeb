<!DOCTYPE html>
<html>
  <head>
  	<title>Ryan LeDuc - Thanks</title>
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
      <h2>Thanks for connecting with me!</h2>
    
      <p>Thank you, ${user.firstName} ${user.lastName}. I will contact you soon at: ${user.email}.</p>
    
      <p>You should check out my <a href="bio.html">Bio Page</a> or, return to my <a href=".">Home Page</a>.</p>
    </main>
    <footer>
      <small>Copyright &copy;1988-2017 Ryan LeDuc</small>
    </footer>
  </body>
</html>