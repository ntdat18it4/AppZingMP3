<?php
	require "connect.php";

	$query = "SELECT * FROM playlist";
	$data = mysqli_query($con, $query);

	class Danhsachplaylist{
		function Danhsachplaylist($idplaylist, $ten, $hinhnen, $hinhicon){
			$this->IdPlaylist = $idplaylist;
			$this->Ten = $ten;
			$this->HinhPlaylist = $hinhnen;
			$this->Icon = $hinhicon;
		}
	}

	$arrayplaylist = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($arrayplaylist, new Danhsachplaylist($row['IdPlayList'],$row['Ten'],$row['HinhNen'],$row['Hinhicon']));
	}

	echo json_encode($arrayplaylist);
?>