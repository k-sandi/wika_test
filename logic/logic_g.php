<?php
$weekday = array('Senin','Selasa','Rabu','Kamis','Jumat');
$weekend = array('Sabtu','Minggu');
$select = 'weekday';

if ($select == 'weekday') {
	for ($i=0; $i<count($weekday); $i++) {
		echo $weekday[$i]."<br/>";
	}
} else {
	for ($i=0; $i<count($weekend); $i++) {
		echo $weekend[$i]."<br/>";
	}
}
?>