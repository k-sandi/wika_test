<html>
<head>
	<title>PT. Wika</title>
</head>
<body>
	<center><h1>Test Case | Wika</h1></center>
	<table style="margin:20px auto;" border="1">
      <center>
        <?php echo form_open('pegawai/search') ?>
          <input type="text" name="keyword" placeholder="Search by Name">
          <input type="submit" name="search_submit" value="Cari">
        <?php echo form_close() ?>
      </center>
		<tr>
      <th>#</th>
      <th>NIP</th>
      <th>NAMA</th>
      <th>JENIS KELAMIN</th>
      <th>STATUS</th>
      <th>AKSI</th>
		</tr>
		<?php
		$no = 1;
		foreach($pegawai as $p){
		?>
		<tr>
      <td><?php echo $no++; ?></td>
			<td><?php echo strtoupper($p->nip); ?></td>
			<td><?php echo strtoupper($p->nama); ?></td>
			<td><?php echo strtoupper($p->nama_jk); ?></td>
			<td><?php echo strtoupper($p->jenis_status); ?></td>
			<td>
	      <?php echo anchor('pegawai/edit/'.$p->nip,'EDIT'); ?>
        <?php echo anchor('pegawai/delete/'.$p->nip,'HAPUS'); ?>
			</td>
		</tr>
		<?php } ?>
	</table>
  <center><?php echo anchor('pegawai/create','Tambah Data'); ?></center>
</body>
</html>
