<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
  
    <link rel="stylesheet" href="style.css">  
  <title>Rita Hotels</title>
</head>
<body>


<!-- -------------------------------navbar-------------------------- -->
  <div class="container-fluid" id="gallery">

    <div class="row">
      <div class="col-md-12 navbar">
        <a href="index.html" class="logo navbar-brand text-white offset-md-2">Rita Hotels</a>
      <ul class="nav">
          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Services</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="komfort.html">Komfort und Luxus</a></li>
                <li><a class="dropdown-item" href="gesundheit.html">Gesundheit & Pflege</a></li>
                <li><a class="dropdown-item" href="raumdesign.html">Modernes Raumdesign</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Separated link</a></li>
              </ul>
            </li>
            <li class="nav-item"><a href="rooms.php" class="nav-link">Rooms</a></li> 
          <li class="nav-item " ><a href="about.html" class="nav-link">About Us</a></li>
          <li class="nav-item"><a href="gallery.php" class="nav-link">Gallerie</a></li>           
          <li class="nav-item "><a href="contact.php" class="nav-link">Contact Us</a></li> 
        </ul>

    </div> 
</div>
</div>

<!-- -------------------------end------navbar-------------------------- -->


<!-- -------------------------------gallery-------------------------- -->



   
<div class="container-fluid" >

 
<h1 id="center">Foto Gallerie</h1>  
  <div class="images1" >
    <img src="img/gallery/beach.jpg" alt="beach" />
    <img src="img/gallery/bike.jpg" alt="bike" />
    <img src="img\gallery\lux.jpg" alt="Room lux" />
    <img src="img\gallery\massage.jpg" alt="Massage" />
    <img src="img\gallery\massage1.jpg" alt="Massage" />
    <img src="img\gallery\massage3.jpg" alt="Massage" />
    <img src="img\gallery\mod_room.jpg" alt="Room" />
    <img src="img\gallery\res3.jpg" alt="Hotel" />
    <img src="img\gallery\room.gif" alt="Room" />
    <img src="img\gallery\street.jpg" alt="Town" />
    <img src="img\massage2.jpg" alt="Massage" />
  </div>
  <div class="modal1">
    <span class="close"><i class="fas fa-times"></i></span>
    <div class="modal-Content">
      <img src="" class="modal-Img" />
      <span class="modal-Txt"></span>
    </div>
  </div>
</div>
<script src="js/gallery.js"></script>
<script src="https://kit.fontawesome.com/7368c40b21.js" crossorigin="anonymous" ></script>

</div>

 

<!-- -------------------------end------gallery-------------------------- -->

<div class="footer-dark" id="down">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Spa</a></li>
                            <li><a href="#">Sports</a></li>
                            <li><a href="#">Massage</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>Rita Hotels</h3>
                        <p>Lorem ipsum dolors esse ducimus consequuntur nostrum expedita quae hic quod dolorem qui aspernatur. Non, labore harum odit iusto vero magnam dolorem neque quo nihil, illum quas voluptate sequi laboriosam ratione asperiores voluptatem maxime, rem voluptatibus quisquam molestias deserunt. Similique aspernatur obcaecati cupiditate enim doloremque iure fuga.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Rita Hotels © 2021</p>
            </div>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>


    

</body>
  </html>