<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $YonetmenKayitNo  = mysqli_real_escape_string($baglanti, $_POST['YonetmenKayitNo']);
    $YonetmenAdi = mysqli_real_escape_string($baglanti, $_POST['YonetmenAdi']);
    $YonetmenSoyadi = mysqli_real_escape_string($baglanti, $_POST['YonetmenSoyadi']);
    $DogumTarihi = mysqli_real_escape_string($baglanti, $_POST['DogumTarihi']);
    $Nereli = mysqli_real_escape_string($baglanti, $_POST['Nereli']);
    $BaskaFilmler= mysqli_real_escape_string($baglanti, $_POST['BaskaFilmler']);


     $YonetmenUrl = mysqli_real_escape_string($baglanti, $_POST['YonetmenUrl']);

    $sorgu = "UPDATE yönetmen SET YonetmenAdi = '$YonetmenAdi', 	YonetmenSoyadi = '$YonetmenSoyadi', DogumTarihi = '$DogumTarihi', Nereli = '$Nereli', BaskaFilmler = '$BaskaFilmler', YonetmenUrl = '$YonetmenUrl' WHERE YonetmenKayitNo = $YonetmenKayitNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Boran Demir">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	  <link href="secondstyle.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Pacifico|Shadows+Into+Light|Ubuntu" rel="stylesheet">
            <title>Yönetmen Listesi</title>
  
 
	
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

            
              
        <center> <h1>Yönetmen Güncelle</h1> </center>
        <h2><?php echo $islemSonuc; ?></h2> <br>
             <p><a href="listele.php">Katalog Listesine dön...</a></p> </div>
             <br> <br> <br>              <br> <br> <br>              <br> <br> <br>                    <br> <br> <br>
       <br> <br> <br>             <br> <br> <br>              <br> <br> <br>              <br> <br> <br>             <br> <br> <br>








            <div>
          <footer class="footer bg-black small text-center text-white-50" style="border-radius:10px;width: 100%;height: 30px;background-color: #1C2E55">
              <p>Bu Veritabanı <a href="https://www.instagram.com/borandemir1/?hl=tr"> Boran Demir </a>tarafından tasarlanmıştır</p></footer>
            </div> 
    </body>

</html>