<?php 

include_once 'koneksi.php';
function auto_code($col, $table, $str, $awal, $akhir)
{
	global $koneksi;

	$query = "SELECT max($col) as maxKode FROM $table";
	$hasil = mysqli_query($koneksi,$query);
	$data = mysqli_fetch_array($hasil);
	$code = $data['maxKode'];
	$auto = (int)substr($code, $awal, $akhir);
	$auto++;
	$autokode = $str.sprintf("%s", $auto);
	return $autokode;
}

$kode = auto_code('nim', 'tb_mahasiswa', 'T110213', 7,1);

$sql = mysqli_query($koneksi, "SELECT * FROM tb_mahasiswa ORDER BY nama ASC");
$jml = mysqli_num_rows($sql);



if (isset($_POST['submit'])) {
	$nim = $_POST['nim'];
	$nama = $_POST['nama'];
	$gender = $_POST['gender'];
	$jurusan = $_POST['jurusan'];

	$sql = mysqli_query($koneksi, "INSERT INTO tb_mahasiswa (nim,nama,gender,jurusan) VALUES ('$nim','$nama','$gender','$jurusan')");
	if ($sql) {
		header('location:index.php');
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Data Mahasiswa</title>
</head>
<body>
	<fieldset>
		<h1>List Mahasiswa</h1>
		<h2>Oleh : Aflah Rafli Rizqullah</h2>
	</fieldset>

	<?php if ($jml == 9 || $jml <= 9): ?>
		<hr>
		<?php else: ?>
		<fieldset>
			<form method="POST">
				<table width="100%">
					<tr>
						<th>NIM</th>
						<th>NAMA</th>
						<th>GENDER</th>
						<th>JURUSAN</th>
						<th>OPSI</th>
					</tr>
					<tr>
						<td><input type="text" name="nim" value="<?=$kode?>" readonly placeholder="NIM"></td>
						<td><input type="text" name="nama" placeholder="NAMA"></td>
						<td>
							<select name="gender">
								<option value="">-- Pilih Gender --</option>
								<option value="Laki - laki">Laki - laki</option>
								<option value="Perempuan">Perempuan</option>
							</select>
						</td>
						<td>
							<select name="jurusan">
								<option value="">-- Pilih Jurusan --</option>
								<option value="TEKNIK INDUSTRI">TEKNIK INDUSTRI</option>
								<option value="TEKNIK INFORMATIKA">TEKNIK INFORMATIKA</option>
							</select>
						</td>
						<td>
							<input type="submit" name="submit" value="SIMPAN">
						</td>
					</tr>
				</table>
			</form>	
		</fieldset>
	<?php endif; ?>

	<?php if ($jml >= 1): ?>
		<fieldset>
			<table width="100%" border="1">
				<tr>
					<th>NO</th>
					<th>NIM</th>
					<th>NAMA</th>
					<th>GENDER</th>
					<th>JURUSAN</th>
				</tr>
				<?php 
				$no=0;
				while ($data = mysqli_fetch_array($sql)) {
					$no++;
					?>
					<tr>
						<td><?=$no?></td>
						<td><?=$data['nim']?></td>
						<td><?=$data['nama']?></td>
						<td><?=$data['gender']?></td>
						<td><?=$data['jurusan']?></td>
					</tr>
					<?php
				}
				?>
			</table>
		</fieldset>
	<?php endif; ?>
</body>
</html>