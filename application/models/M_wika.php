<?php
class M_wika extends CI_Model
{

  function edit_data($where, $table) {
    return $this->db->get_where($table,$where);
  }

  function get_data($table) {
    return $this->db->get($table);
  }

  function insert_data($data, $table) {
    return $this->db->insert($table,$data);
  }

  function update_data($where,$data,$table) {
    $this->db->where($where);
    $this->db->update($table,$data);
  }

  public function delete_data($where,$table) {
    $this->db->where($where);
    $this->db->delete($table);
  }

  public function get_pegawai_keyword($keyword){
			$this->db->select('*');
			$this->db->from('vpegawai');
			$this->db->like('nama',$keyword);
			// $this->db->or_like('nip',$keyword);
			// $this->db->or_like('tempat_lahir',$keyword);
			// $this->db->or_like('tgl_lahir',$keyword);
			// $this->db->or_like('nama_belakang',$keyword);
			return $this->db->get()->result();
		}

  // function get_trs_auto(){
  //     $this->db->select('RIGHT(transaksi_sampah.trs_no,4) as notrans', FALSE); //kode_barang
	// 	  $this->db->order_by('notrans','DESC');
	// 	  $this->db->limit(1);
	// 	  $query = $this->db->get('transaksi_sampah');  //cek dulu apakah ada sudah ada kode di tabel.
	// 	  if($query->num_rows() <> 0){
	// 		   //cek kode jika telah tersedia
	// 		   $data = $query->row();
	// 		   $kode = intval($data->notrans) + 1;
	// 	  }
	// 	  else{
	// 		   $kode = 1;  //cek jika kode belum terdapat pada table
	// 	  }
  //       date_default_timezone_set('Asia/Jakarta');
	// 		  $tgl=date('dmY');
	// 		  $batas = str_pad($kode, 5, "0", STR_PAD_LEFT);
	// 		  $kodetampil = "TRX".$tgl.$batas;  //format kode
	// 		  return $kodetampil;
  //
  // }
}
?>
