<?php
	require "connect.php";

	$linkbaihat = $_POST['url'];
	$idbaihat = $_POST['idbaihat'];

	$query = "SELECT LinkBaiHat FROM baihat WHERE IdBaiHat = '$idbaihat'";
	$datalinkbaihat = mysqli_query($con, $query);
	$row = mysqli_fetch_assoc($datalinkbaihat);
	
	if ($datalinkbaihat) {
			echo "Ok";
		}else{
			echo "Fail";
		}
?>