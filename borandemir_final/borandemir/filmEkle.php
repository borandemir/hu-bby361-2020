<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT *, CONCAT(YonetmenAdi, ' ', YonetmenSoyadi) AS Yönetmen FROM yönetmen");
    $sorgu1 = mysqli_query($baglanti, "SELECT *, CdninKonumBilgisi FROM konum");

   
?>
<html>
    <head>
          <meta charset="utf-8">
    <meta name="author" content="Boran Demir">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	  <link href="secondstyle.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Pacifico|Shadows+Into+Light|Ubuntu" rel="stylesheet">
	  
        <title>Film Ekle</title>
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
       <center> <h1>Film Ekle</h1> </center>
        <form action="filmEkleB.php" method="post">
            
            
             <label for="ad">Film Adı:</label><br/>
            <input type="text" name="FilmAdi" style="color:black"><br>
            <label for="ad">Vizyon:</label><br/>
            <input type="text" name="Vizyon" style="color:black"><br>
			<label for="ad"> Yönetmen </label><br/>
            <select name="YonetmenKayitNo" style="color:black">
        <?php while($satir = mysqli_fetch_assoc($sorgu)){ ?>
        <option style="color:black" value="<?php echo $satir['YonetmenKayitNo']; ?>"><?php echo $satir['Yönetmen']; ?></option>
        <?php } ?>
    </select> <br>
            
             <label for="ad">Dil:</label><br/>
            <input type="text" name="Dil" style="color:black"><br>
            
             <label for="ad">Kategori:</label><br/>
            <input type="text" name="Kategori" style="color:black"><br>
            <label for="ad">Konum</label><br/>
            <select name="KonumKayitNo" style="color:black">
        <?php while($satir = mysqli_fetch_assoc($sorgu1)){ ?>
        <option style="color:black" value="<?php echo $satir['KonumKayitNo']; ?>"><?php echo $satir['KonumKayitNo']; ?></option>
        <?php } ?>
    </select> <br>
            <label for="ad">Film Açıklama:</label><br/>
            <input type="text" name="filmAciklama" style="color:black"><br>
    <input id="a" type="submit" value="Yeni Film Ekle" style="color:black"><br><br><br><br>
    
           </form>
              <br> <br> <br> <br> <br> <br> <br> <br><br> <br>
            <div>
          <footer class="footer bg-black small text-center text-white-50" style="border-radius:10px;width: 100%;height: 30px;background-color: #1C2E55">
              <p>Bu Veritabanı <a href="https://www.instagram.com/borandemir1/?hl=tr"> Boran Demir </a>tarafından tasarlanmıştır</p></footer>
        </div>
        </div>
    </body>
</html>
            
            
            
            