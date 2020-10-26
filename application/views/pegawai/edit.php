<!DOCTYPE html>
<html>
<head>
	<title>PT. Wika</title>
</head>
<body>
	<center>
		<h1>Test Case | Wika</h1>
		<h3>Edit Data</h3>
	</center>
	<?php foreach($pegawai as $p){ ?>
	<form action="<?php echo base_url().'index.php/pegawai/update'; ?>" method="post">
		<table style="margin:20px auto;">
			<tr>
				<td>NIP</td>
				<td>
					<input type="hidden" name="nip" value="<?php echo $p->nip ?>">
					<input type="test" value="<?php echo $p->nip ?>" disabled/>
				</td>
			</tr>
			<tr>
				<td>NAMA DEPAN</td>
				<td>
					<input type="text" name="nama_depan" value="<?php echo $p->nama_depan ?>">
				</td>
			</tr>
			<tr>
				<td>NAMA BELAKANG</td>
				<td>
					<input type="text" name="nama_belakang" value="<?php echo $p->nama_belakang ?>">
				</td>
			</tr>
			<tr>
				<td>TEMPAT LAHIR</td>
				<td>
					<input type="text" name="tempat_lahir" value="<?php echo $p->tempat_lahir ?>">
				</td>
			</tr>
			<tr>
				<td>TANGGAL LAHIR</td>
				<td><input type="date" name="tgl_lahir" value="<?php echo $p->tgl_lahir ?>"></td>
			</tr>
			<tr>
				<td>JENIS KELAMIN</td>
        <td>
        <?php if($p->kode_jk == 'l') { ?>
          <select name="jenis_kelamin">
            <option value="l">Laki-laki</option>
            <option value="p">Perempuan</option>
          </select>
        <?php } else { ?>
          <select name="jenis_kelamin">
            <option value="p">Perempuan</option>
            <option value="l">Laki-laki</option>
          </select>
        <?php } ?>
        </td>
			</tr>
			<tr>
				<td>STATUS</td>
        <td>
        <?php if($p->kode_status == 's'): ?>
          <select name="status">
            <option value="s">Single</option>
            <option value="m">Married</option>
          </select>
        <?php else: ?>
          <select name="status">
            <option value="m">Married</option>
            <option value="s">Single</option>
          </select>
        <?php endif ?>
        </td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
	<?php } ?>
</body>
</html>
