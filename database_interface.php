<?php
	ini_set('display_errors', 'On');
	$host = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'overwatch';

	$conn = new mysqli($host, $dbuser, $dbpass, $dbname);
	if ($conn->connect_error) {
		die('Connection Failed: ' . $conn->connect_error);
	}
	
	$hero = $_COOKIE['hero'];
	//echo $hero;

	$sql = "SELECT Player_Name, kills_per_min,Damage_per_min,Deaths_per_min FROM `stats` WHERE Hero = '$hero'";
	$result = mysqli_query($conn, $sql);

	$data = array();
	while ($x = mysqli_fetch_assoc($result)) {
		$a = array($x['Player_Name'], $x['Damage_per_min'], $x['Deaths_per_min'],$x['Damage_per_min']);
		array_push($data, $a);
	}

	echo json_encode($data);
	//$values = json_encode($data);
	$dmg = json_encode($data[0][1]);
	

?>