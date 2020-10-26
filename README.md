# wika_test
For Test Case

PETUNJUK :
1. clone atau download project dan letakkan di direktori xampp/htdocs (jika menggunakan package web server xampp).
2. buat database dengan nama "wika" (dapat disesuaikan. Jika ingin menggunakan nama lain, silahkan konfigurasi pemanggilan database di config diubah juga).
3. import file "wika.sql" yang berada pada dalam root folder bernama "dbsql".
4. Tunggu proses import selesai. Setelah itu buka browser dan ketikkan di address bar "http://localhost/wika_test"
5. Done. Salam luar biasa.

*******************************************************************************************************************************************************
PESAN:
Jika suatu saat dalam proses import database, table virtual (view) yang dibuat sebelumnya diconvert menjadi table asli, maka solusi yang dapat dilakukan 
adalah menghapus table bersangkutan dan mendefiniskan ulang view yang dimaksud. Berikut query SQL-nya :

===== Query untuk menghapus table yang seharusnya view namun dibeberapa kasus terkadang saat diimport malah menjadi table asli, bukan table virtual 
===== (jalankan satu-satu kode di bawah ini) : 
drop table vpegawai;
drop table vpegawaiSakit;
drop table vabsen;


Setelah berhasil dihapus, maka definiskan ulang View dengan menjalankan rangkaian kode view dan select join di bawah ini:
===== Untuk View "vpegawai" :
create view vpegawai as select a.nip, concat_ws(' ', a.nama_depan, a.nama_belakang) as nama, 
concat_ws(' / ', a.tempat_lahir, a.tgl_lahir) as tempat_tgl_lahir,
b.nama_jk, c.nama_kota, d.jenis_status from pegawai a
join jenis_kelamin b on a.kode_jk=b.kode_jk
join kota c on a.kode_kota=c.kode_kota
join status d on a.kode_status=d.kode_status 

====== Untuk View "vpegawaiSakit" :
create view vpegawaiSakit as select a.tgl_absen as "Tgl Absen", a.nip as "NIP", b.tempat_tgl_lahir as "Tempat/tgl Lahir",
b.nama_kota as "Asal", a.datang as "Datang", a.pulang as "Pulang", c.nama_status
from absen a
join vpegawai b on a.nip=b.nip
join status_absensi c on a.id_status=c.id_status
where a.id_status='s' 


====== Untuk View "vabsen" :
create view vabsen as select a.tgl_absen as "Tgl Absen", a.nip as "NIP", b.nama, b.tempat_tgl_lahir as "Tempat/tgl Lahir",
b.nama_kota as "Asal", a.datang as "Datang", a.pulang as "Pulang", c.nama_status as "Status"
from absen a
join vpegawai b on a.nip=b.nip
join status_absensi c on a.id_status=c.id_status 


*******************************************************************************************************************************************************

Untuk info lebih dan pertanyaan lanjut silahkan email ke kurniya097@gmail.com