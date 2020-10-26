<!DOCTYPE html>
<html>
<head>
	<title>PT. Wika</title>
  <script type="text/javascript">
    function eraseText() {
    document.getElementById("nip").value = "";
    document.getElementById("nd").value = "";
    document.getElementById("nb").value = "";
    document.getElementById("tl").value = "";
    document.getElementById("tgl_l").value = "";
    // document.getElementById("jk").value = "";
    // document.getElementById("status").value = "";
    }
  </script>
</head>
<body>
	<center>
		<h1>Test Case | Wika</h1>
		<h3>Tambah data baru</h3>
	</center>
	<form action="<?php echo base_url().'index.php/pegawai/create_act'; ?>" method="post">
		<table style="margin:20px auto;">
			<tr>
				<td>NIP</td>
				<td><input type="text" name="nip" id="nip" value=""></td>
			</tr>
			<tr>
				<td>NAMA DEPAN</td>
				<td><input type="text" name="nama_depan" id="nd" value=""></td>
			</tr>
			<tr>
				<td>NAMA BELAKANG</td>
				<td><input type="text" name="nama_belakang" id="nb" value=""></td>
			</tr>
			<tr>
				<td>TEMPAT LAHIR</td>
				<td><input type="text" name="tempat_lahir" id="tl" value=""></td>
			</tr>
			<tr>
				<td>TANGGAL LAHIR</td>
				<td><input type="date" name="tgl_lahir" id="tgl_l" value=""></td>
			</tr>
			<tr>
				<td>JENIS KELAMIN</td>
        <td>
        <select name="jenis_kelamin">
          <option value="l">Laki-laki</option>
          <option value="p">Perempuan</option>
        </select>
        </td>
			</tr>
			<tr>
				<td>STATUS</td>
        <td>
          <select name="status">
            <option value="s">Single</option>
            <option value="m">Married</option>
          </select>
        </td>
			</tr>
			<tr>
				<td></td>
        <td align="right"><input type="button" value="Clear" onclick="eraseText();"></td>
				<td align="right"><input type="submit" value="Save"></td>
			</tr>
		</table>
	</form>
</body>
</html>
