<?php

session_start();

$arauak = new DOMDocument();
$arauak->load("../XML/langileak.xsl");

$datuak = new DOMDocument();
$datuak->load("../XML/departamentuak.xml");

if (isset($_GET["ardura"])) {
      $ardura = $_GET['ardura'];
   $_SESSION["arduraID"] = $ardura;
   header("Location: ArdurakLang.php"); 
   exit; 
} else {
   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   echo $proc->transformToXML($datuak);
}

?>
