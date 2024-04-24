<?php

   $arauak = new DOMDocument();
   $arauak ->load("../XML/departamentuak.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/departamentuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   echo $proc->transformToXML($datuak);

?>