<?php
    session_start();
    /* Departamentu bateko langileak erakusteko*/

    $departamentuID = $_SESSION["departamentuID"];
    $departamentuIzena = $_SESSION["departamentuIzena"];

   $arauak = new DOMDocument();
   $arauak ->load("../XML/deptLang.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/departamentuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("", "id", $departamentuID);
   $proc ->setParameter("", "izena", $departamentuIzena);

   echo $proc->transformToXML($datuak);


?>