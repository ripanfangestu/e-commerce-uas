<?php 
	include '../../koneksi/koneksi.php';
	$kode = $_POST['kd_material'];
	$nama = $_POST['nama'];
	$stok = $_POST['stok'];
	$harga = $_POST['harga'];
	$tanggal = date("y-m-d");

	$result = mysqli_query($conn, "INSERT INTO inventory VALUES('$kode','$nama','$stok', '$harga', '$tanggal')");

	if($result){
		echo "
			<script>
				alert('DATA BERHASIL DITAMBAHKAN');
				window.location = '../inventory.php';
			</script>
		";
	}


 ?>