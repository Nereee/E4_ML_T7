<?php
    session_start();

    $departamentuID = $_SESSION["departamentuID"];

   $arauak = new DOMDocument();
   $arauak ->load("../XML/deptLang.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/departamentuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("", "id", $departamentuID);

   echo $proc->transformToXML($datuak);


?>