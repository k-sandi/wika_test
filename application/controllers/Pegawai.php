<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Pegawai extends CI_Controller
{

  function __construct() {
    parent::__construct();
    $this->load->library('session');
    $this->load->helper('form');
    $this->load->helper('url');
  }

  function index() {
    $data['pegawai'] = $this->m_wika->get_data('vpegawai')->result();
    $this->load->view('pegawai/list',$data);
  }

  function create() {
    $this->load->view('pegawai/create');
  }

  function create_act(){
		$nip  = $this->input->post('nip');
		$nd   = $this->input->post('nama_depan');
		$nb   = $this->input->post('nama_belakang');
		$tl   = $this->input->post('tempat_lahir');
		$tgl_l= $this->input->post('tgl_lahir');
		$jk   = $this->input->post('jenis_kelamin');
    $stts = $this->input->post('status');

		$data = array(
			'nip' => strtolower($nip),
			'nama_depan' => strtolower($nd),
			'nama_belakang' => strtolower($nb),
			'tempat_lahir' => strtolower($tl),
			'tgl_lahir' => $tgl_l,
			'kode_jk' => strtolower($jk),
			'kode_kota' => 1371,
      'kode_status' => strtolower($stts)
			);
		$this->m_wika->insert_data($data,'pegawai');
		redirect('pegawai/index');
	}

  function edit($nip) {
  	$where = array('nip' => $nip);
  	$data['pegawai'] = $this->m_wika->edit_data($where,'pegawai')->result();
  	$this->load->view('pegawai/edit',$data);
  }

  function update(){
    $nip  = $this->input->post('nip');
		$nd   = $this->input->post('nama_depan');
		$nb   = $this->input->post('nama_belakang');
		$tl   = $this->input->post('tempat_lahir');
		$tgl_l= $this->input->post('tgl_lahir');
		$jk   = $this->input->post('jenis_kelamin');
    $stts = $this->input->post('status');

    $data = array(
			'nama_depan' => strtolower($nd),
			'nama_belakang' => strtolower($nb),
			'tempat_lahir' => strtolower($tl),
			'tgl_lahir' => $tgl_l,
			'kode_jk' => strtolower($jk),
      'kode_status' => strtolower($stts)
			);

  	$where = array(
  		'nip' => $nip
  	);

  	$this->m_wika->update_data($where,$data,'pegawai');
  	redirect('pegawai/index');
  }

  function delete($nip){
		$where = array('nip' => $nip);
		$this->m_wika->delete_data($where,'pegawai');
		redirect('pegawai/index');
	}

  function search(){
			$keyword = $this->input->post('keyword');
			$data['pegawaiS'] = $this->m_wika->get_pegawai_keyword($keyword);
			$this->load->view('pegawai/search',$data);
	}
}
?>
