<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ROOT</title>
</head>
<?php include "connection.php";
include "query.php"; ?>
<ul>
    <?php foreach ($pdo->query($sql) as $row) { ?>
    <li><a href="sp.php?lysing=<?php echo $row["textalysing"]?>&name=<?php echo $row["myndheiti"]?>&LINK=<?php echo $row["link"] ?>"><?php echo $row["myndheiti"]; }?></a></li>
</ul>
</body>
</html>