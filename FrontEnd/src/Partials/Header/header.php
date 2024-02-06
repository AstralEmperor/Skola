<meta charset="UTF-8">
<head>
   <link href="/SKOLA/style.css" type="text/css" rel="stylesheet">
   <link href="/SKOLA/FrontEnd/src/Delovi/Header/header.css" type="text/css" rel="stylesheet">
</head>
<nav class="header">
   <ul class="header__ul">
        <li class="header__listItem"><a href="/SKOLA/index.php">Početna</a></li>
   </ul>
   <ul class="header__ul">
      <li class="header__listItem"><a id="login__link" href="">Uloguj Se</a></li>
   </ul>
</nav>
<hr class="hr">
<div class="login__wrapper"><?php require $_SERVER['DOCUMENT_ROOT'] . "/SKOLA/FrontEnd/src/Delovi/Login/login.php"?></div>
<script src="/SKOLA/FrontEnd/src/Delovi/Header/header.js"></script>