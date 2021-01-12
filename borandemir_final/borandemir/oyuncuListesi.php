<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */

 $sorgu = mysqli_query($baglanti, "SELECT FI.FilmAdi, OY.OyuncuAdi, OY.OyuncuSoyadi, OY.Nereli
FROM fimoyuncutablosu FO, film FI, oyuncu OY 
WHERE FO.OyuncuKayitNo2 = OY.OyuncuKayitNo AND FO.FilmKayitNo = FI.FilmKayitNo AND FO.FilmKayitNo = OY.OyuncuKayitNo");

?>
<html>
    <head>
         <meta charset="utf-8">
    <meta name="author" content="Boran Demir">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	  <link href="secondstyle.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Pacifico|Shadows+Into+Light|Ubuntu" rel="stylesheet">
        <title>Oyuncu Listesi</title>
       
    </head>
    
    <body>
         <div class="container-fluid">
	 <div class="row mb-5">
	 <div class="col">
		 
		 <nav class="navbar navbar-expand-lg navbar-light bg-a fixed-top">
  <a class="navbar-brand yazi" href="index.html" style="font-size: 32px;"> Film Veri Tabanı</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
    <ul class="navbar-nav ">
      <li class="nav-item active">
        <a class="nav-link" href="listele.php">Film Listesi</a>
      </li>
         <li class="nav-item active">
        <a class="nav-link" href="yönetmenler.php">Yönetmen Listesi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="KonumListesi.php">Konum Listesi</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="oyuncuListesi.php">Oyuncular Listesi</a>
      </li>
      
    </ul>
  </div>
</nav>
		 
		 
		 </div>
	 </div>
        
        <br>
            <br>
        
       <center> <h1>Oyuncu Listesi</h1></center> <br> <br>
        
     <center>  <?php
            echo("<table border=1 width=80%>");
                echo("<tr>");
                    echo("<td><b>Oyuncu Adı</b></td>");
                    echo("<td><b>Oyuncu Soyadı</b></td>");
                    
                    echo("<td><b>Nereli</b></td>");
                    
                    echo("<td><b>Oynadığı Film</b></td>");
               
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["OyuncuAdi"]."</td>");
                echo("<td>".$satir["OyuncuSoyadi"]."</td>");              
                
                echo("<td>".$satir["Nereli"]."</td>");
                
                echo("<td>".$satir["FilmAdi"]."</td>");
                
                echo("</tr>");
            }
            echo("</table>");
        ?>   </center>
             <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>  <br> 
            
            <div>
          <footer class="footer bg-black small text-center text-white-50" style="border-radius:10px;width: 100%;height: 30px;background-color: #1C2E55">
              <p>Bu Veritabanı <a href="https://www.instagram.com/borandemir1/?hl=tr"> Boran Demir </a>tarafından tasarlanmıştır</p></footer>
        </div>
    </body>
</html>