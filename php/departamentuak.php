<?php
session_start();

$arauak = new DOMDocument();
$arauak->load("../XML/departamentuak.xsl");

$datuak = new DOMDocument();
$datuak->load("../XML/departamentuak.xml");

$proc = new XSLTProcessor();
$proc->importStylesheet($arauak);

echo $proc->transformToXML($datuak);

if (isset($_GET["id_depto"])) {
    $departamentua = $_GET['id_depto'];
    $_SESSION["departamentuID"] = $departamentua;
    header("Location: DeptLang.php");
}
?>
