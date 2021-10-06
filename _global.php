<?php session_start();

//Errors
error_reporting(0);
ini_set("display_errors",false);

//Url
//$root="https://localhost/";
$root="https://daneesv.com/xepelin/";

//Connection
//$conn=mysqli_connect("localhost","root","root","xepelin");
$conn=mysqli_connect("localhost","daneesv","loop123sindo","xepelin");
mysqli_set_charset($conn,"utf8mb4");

//Break lines to paragraphs
function nl2p($string,$line_breaks=false){
    if($string!=""){
        $string=str_replace(array("<p>","</p>","<br>","<br />"),"",$string);
        if($line_breaks==true){
            return "<p>".preg_replace(array("/([\n]{2,})/i","/([^>])\n([^<])/i"),
            array("</p><p>","$1<br>$2"),
            trim($string))."</p>";
        }else{
            return "<p>".preg_replace(
            array("/([\n]{2,})/i","/([\r\n]{3,})/i","/([^>])\n([^<])/i"),
            array("</p><p>","</p><p>","$1<br>$2"),
            trim($string))."</p>";
        }
    }else{
        return "";
    }
} ?>