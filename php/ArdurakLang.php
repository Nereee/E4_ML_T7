<?php
    session_start();
    
    $arduraID = $_SESSION["arduraID"];

   $arauak = new DOMDocument();
   $arauak ->load("../XML/ardurakLang.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/departamentuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("", "id", $arduraID);

   echo $proc->transformToXML($datuak);


?>