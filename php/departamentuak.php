<?php
session_start();

$departamentuak = array(
    "D01" => "Marketing",
    "D02" => "RRHH",
    "D03" => "Salmentak",
    "D04" => "Logistika",
    "D05" => "Finantzak",
    "D06" => "Teknologia"
);

$arauak = new DOMDocument();
$arauak->load("../XML/departamentuak.xsl");

$datuak = new DOMDocument();
$datuak->load("../XML/departamentuak.xml");

$proc = new XSLTProcessor();
$proc->importStylesheet($arauak);

echo $proc->transformToXML($datuak);

if (isset($_GET["id_depto"]) && isset($departamentuak[$_GET["id_depto"]])) {
    $departamentua = $_GET['id_depto'];
    $departamentuIzena = $departamentuak[$_GET["id_depto"]]; 
    $_SESSION["departamentuIzena"] = $departamentuIzena;
    $_SESSION["departamentuID"] = $departamentua;
    header("Location: DeptLang.php");
}
?>
