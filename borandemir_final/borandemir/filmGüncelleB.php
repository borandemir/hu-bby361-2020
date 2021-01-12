<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $FilmKayitNo = mysqli_real_escape_string($baglanti, $_POST['FilmKayitNo']);
    $FilmAdi = mysqli_real_escape_string($baglanti, $_POST['FilmAdi']);
    $Vizyon = mysqli_real_escape_string($baglanti, $_POST['Vizyon']);
    $YonetmenKayitNo = mysqli_real_escape_string($baglanti, $_POST['YonetmenKayitNo']);
    $Dil = mysqli_real_escape_string($baglanti, $_POST['Dil']);
    $Kategori= mysqli_real_escape_string($baglanti, $_POST['Kategori']);
    
    $KonumKayitNo = mysqli_real_escape_string($baglanti, $_POST['KonumKayitNo']);
    $filmAciklama = mysqli_real_escape_string($baglanti, $_POST['filmAciklama']);

    $sorgu = "UPDATE film SET FilmAdi = '$FilmAdi', Vizyon = '$Vizyon', YonetmenKayitNo	 = '$YonetmenKayitNo', 	Dil = '$Dil', Kategori = '$Kategori',  filmAciklama = '$filmAciklama' WHERE FilmKayitNo = $FilmKayitNo"; 

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
        <title>Film Güncelle</title>
      
    </head>
    
    <body> <div class="container-fluid">
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
       <center> 
           <h1>Film Güncelle</h1> </center> <br>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="listele.php">listeye dön...</a></p>
        </div>          <br> <br> <br> <br> <br> <br> <br> <br><br> <br> <br><br> <br> <br><br> <br> <br><br> <br> <br> 
         <br> <br> <br> <br>  <br> <br>  <br> <br> 


         <div>
          <footer class="footer bg-black small text-center text-white-50" style="border-radius:10px;width: 100%;height: 30px;background-color: #1C2E55">
              <p>Bu Veritabanı <a href="https://www.instagram.com/borandemir1/?hl=tr"> Boran Demir </a>tarafından tasarlanmıştır</p></footer>
        </div>
    </body>
</html>