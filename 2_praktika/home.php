<html>
  <head>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400, 600' rel='stylesheet' type='text/css'>
  <link rel='stylesheet' href='style.css'/>
  <link rel='stylesheet' href='hamburger.css'/>
 <style>
body {margin:0;}

.header a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .header a:not(:first-child) {display: none;}
  .header a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .header.responsive {position: relative;}
  .header.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .header .responsive a {
    float: none;
    display: block;
    text-align: left;
  }

}
</style>
  </head>
  
  
  
  <body>
  
    <div class="header" id="myTopnav">
      <div class="container">
        <ul class="nav">
          <li><a class="active" href="#home">Paslaugos</a></li>
          <li><a href="http://domolab5.esy.es/">Failu tvarkykle</a></li>
          <li><a href="https://www.instagram.com/domasku/">Galerija</a></li>
          <li style="float:right"><a href="contacts.html"> Kontaktai</a></li>
		  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
        </ul>
      </div>
    </div>
	
	<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "header") {
        x.className += " responsive";
    } else {
        x.className = "header";
    }
}
</script>
	
	
	
	
	</body>
	</html>