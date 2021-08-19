<?php include('dbconnection/config.php');?>


<?php

if( isset( $_POST["senden"] ) )
{
  $name=htmlspecialchars(trim( $_POST["name"] ));
  $email=htmlspecialchars(trim( $_POST["email"] ));
  $telefon=htmlspecialchars(trim( $_POST["telefon"] ));
  $land=htmlspecialchars(trim( $_POST["land"] ));
  $text=htmlspecialchars(trim( $_POST["text"] ));
  $checkbox=htmlspecialchars(trim( $_POST["checkbox"]== 'value1'));
  $approval =htmlspecialchars(trim( $_POST["approval"] ));
  

  
  $sql="
  INSERT INTO contact 
  (name,email,telefon,land,
  text,checkbox,approval)
  VALUES
  (:name,:email,:telefon,:land,
    :text,:checkbox,:approval)
  ";
  
  $stmt=$conn->prepare($sql);
  
  $stmt->bindParam(":name",$name);
  $stmt->bindParam(":email",$email);
  $stmt->bindParam(":telefon",$telefon);
  $stmt->bindParam(":land",$land);
  $stmt->bindParam(":text",$text);
  $stmt->bindParam(":checkbox",$checkbox);
  $stmt->bindParam(":approval",$approval);
  
  $stmt->execute();
  

  
    $_SESSION['text'] =  "<div class='success'>********Wir haben Ihre Nachricht erhalten. Wir werden uns so schnell wie möglich ist</div>";

    header('location:index.html');
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style.css">  
  <title>Rita Hotels</title>
</head>
<body>
  
  <div class="container-fluid" id="contact">
    <div class="row">
      <div class="col-md-12 navbar">
        <a href="index.html" class="logo navbar-brand text-white offset-md-1">Rita Hotels</a>
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
          <li class="nav-item "><a href="contact.html" class="nav-link">Contact Us</a></li> 
        </ul>

    </div> 
  </div>
</div>



<div class="container" id="center">

<div >
     <h2>Kontaktiere uns</h2>
   
       <form class="row g-3" method="POST">
           <div class="col-md-6">
             <label for="inputEmail4" class="form-label">VollName</label>
             <input type="text" class="form-control" id="inputEmail4" name="name">
           </div>
           <div class="col-md-6">
             <label for="inputPassword4" class="form-label">Email</label>
             <input type="email" class="form-control" id="inputPassword4" name="email">
           </div>
           <div class="col-6">
             <label for="inputAddress" class="form-label">Telefon Nummer</label>
             <input type="text" class="form-control"  placeholder="" name="telefon">
           </div>
           <div class="col-6">
             <label for="inputAddress2" class="form-label">Land</label>
             <input type="text" class="form-control" id="inputAddress2" name="land">
           </div>

           <div class="mb-3">
             <label for="exampleFormControlTextarea1" class="form-label">Textarea</label>
             <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="text"></textarea>
           </div>
        
         <div class="col-12">
             <button type="submit" class="btn btn-primary" name="senden">Send</button>
           </div>

           <div class="form-check">
            <input class="form-check-input" type="checkbox" value="value1" name="checkbox" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
              Newsletter
            </label>
          </div>

</div>


         </form>
 
     </div>

 </div>

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