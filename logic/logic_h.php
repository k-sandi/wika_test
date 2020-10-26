<?php
	$var = 15;
	for ($i=1; $i<=$var; $i++) {
		for($j=1; $j<=$i; $j++) {
			echo "&nbsp";
		}
		for($k=$var; $k>=$i; $k=$k-1) {
			echo "*";
		}
		echo "<br>";
	}
?>