<font color="orange">
<?php echo $this->session->flashdata('hasil'); ?>
</font>
<table border="1">
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
		foreach($pegawai as $p) {
		?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $p->nip; ?></td>
			<td><?php echo ucwords($p->nama); ?></td>
			<td><?php echo $p->nama_jk; ?></td>
			<td><?php echo $p->jenis_status; ?></td>
			<td>
	      <?php echo anchor('pegwai/edit/'.$p->nip,'Edit'); ?>
        <?php echo anchor('pegawai/delete/'.$p->nip,'Delete'); ?>
			</td>
		</tr>
		<?php } ?>
</table>
<a href="http://localhost/wika_test/index.php/pegawai/create">+ Tambah data<a>
