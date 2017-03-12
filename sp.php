<html>
	<head>
		<title>Info</title>
	</head>
	<body>
			<pre>
				<?php
               include "connection.php";
				?>
			</pre>

			<?php
				$lysing = $_GET["lysing"];
				$heiti = $_GET["name"];
				$link = $_GET["LINK"];
            echo "<img src=". $link . " </a><br><br>";
            echo $lysing . "<br>";
            echo $heiti . "<br>";



			?>
	</body>
</html>
