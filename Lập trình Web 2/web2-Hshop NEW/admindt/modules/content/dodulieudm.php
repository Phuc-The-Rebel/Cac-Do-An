<?php
	include("../../../core/connect.php");
	$id = $_GET['id'];
	$sql = "SELECT * FROM loaisanpham WHERE idLSP = '$id'";
	$resuft = mysqli_query($conn,$sql);
	while ($row = mysqli_fetch_array($resuft)) {
		$arr = [
			'iddms' => $row['idLSP'],
			'tendms' => $row['tenloai']
		]; 
		echo json_encode($arr);
	}
?>