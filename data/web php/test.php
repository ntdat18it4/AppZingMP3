<?php
	require "connect.php";

	class Baihat{
		function Baihat($idbaihat, $tenbaihat, $hinhbaihat, $casi, $linkbaihat, $luotthich){
			$this->IdBaiHat = $idbaihat;
			$this->TenBaiHat = $tenbaihat;
			$this->HinhBaiHat = $hinhbaihat;
			$this->CaSi = $casi;
			$this->LinkBaiHat = $linkbaihat;
			$this->LuotThich = $luotthich;
		}
	}
	

	if (isset($_GET['tukhoa'])) {

		$tukhoa = $_GET['tukhoa'];
		$query = "SELECT * FROM baihat WHERE lower(TenBaiHat) LIKE '%tukhoa%'";
		$data = mysqli_query($con, $query);

		$mangcakhuc = array();

		while ($row = mysqli_fetch_assoc($data)) {
		array_push($arraydanhsachbaihat, new Baihat($row['IdBaiHat'], $row['TenBaiHat'], $row['HinhBaiHat'], $row['CaSi'], $row['LinkBaiHat'], $row['LuotThich']));
		}
		echo json_encode($mangcakhuc);
	}
	else {
	
		$query = "SELECT * FROM baihat";
		$data = mysqli_query($con, $query);

		$mangcakhuc = array();

		while ($row = mysqli_fetch_assoc($data)) {
		array_push($arraydanhsachbaihat, new Baihat($row['IdBaiHat'], $row['TenBaiHat'], $row['HinhBaiHat'], $row['CaSi'], $row['LinkBaiHat'], $row['LuotThich']));
		}
		echo json_encode($mangcakhuc);
	}

	mysql_close($con);

?>