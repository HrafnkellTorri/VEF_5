<?php
include_once 'connection.php';
$sql = 'SELECT * FROM myndir ORDER by myndir.myndheiti';
$result = $pdo->query($sql);
$numrows = $result->rowcount();
echo "<P> Fundið var $numrows eintök.</P>";
?>
