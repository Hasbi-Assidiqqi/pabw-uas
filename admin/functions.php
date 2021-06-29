<?php
include 'koneksi.php';

// uploud image
function upload(){
    $namafile = $_FILES['gambar']['name'];
    $ukuranfile = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpname =$_FILES['gambar']['tmp_name'];

    if( $error === 4 ) {
        echo "<script>
        alert('Pilih gambar!');
        </script>";
        return false;

    }

    $ekstesigamabarvalid = ['jpg', 'jpeg', 'png'];
    $ekstesigamabar = explode('.', $namafile);
    $ekstesigamabar = strtolower(end($ekstesigamabar));
    if( !in_array($ekstesigamabar, $ekstesigamabarvalid)){
        echo "<script>
        alert('Format tidak valid!');
        </script>";
        return false;
    }

    if ( $ukuranfile > 10000000) {
        echo "<script>
        alert('File Maksimal 5MB');
        </script>";
        return false;
    }

    $namafilebaru = uniqid();
    $namafilebaru .='.';
    $namafilebaru .= $ekstesigamabar;


    move_uploaded_file($tmpname, '../../dist/images/' . $namafilebaru);
    return $namafilebaru;
}
// uploud video
function uploadvideo(){

    $namafile = $_FILES['video']['name'];
    $ukuranfile = $_FILES['video']['size'];
    $error = $_FILES['video']['error'];
    $tmpname =$_FILES['video']['tmp_name'];

    //cek apakah tidak ada gambar yang diupload
    if( $error === 4 ) {
        echo "<script>
        alert('Pilih gambar!');
        </script>";
        return false;

    }

    //cek apakah yang diupload adalah gambar
    $ekstesigamabarvalid = ['mp4','webm','mov'];
    $ekstesigamabar = explode('.', $namafile);
    $ekstesigamabar = strtolower(end($ekstesigamabar));
    if( !in_array($ekstesigamabar, $ekstesigamabarvalid)){
        echo "<script>
        alert('Format tidak valid!');
        </script>";
        return false;
    }

    // cek jika ukurannya terlalu besar
    if ( $ukuranfile > 5000000000) {
        echo "<script>
        alert('File Maksimal 5MB');
        </script>";
        return false;
    }

    // lolos mengecekkan, gambar siap diupload
    // generate nama baru
    $namafilebaru = uniqid();
    $namafilebaru .='.';
    $namafilebaru .= $ekstesigamabar;


    move_uploaded_file($tmpname, '../../dist/videos/' . $namafilebaru);
    return $namafilebaru;


}

// searching
function cariUserDariUsername($username)    {
    $koneksi = koneksiUas();

    $sql = "SELECT * FROM pengguna WHERE username='$username'";
    $hasil = mysqli_query($koneksi, $sql);
    if (mysqli_num_rows($hasil)>0) {
        $baris=mysqli_fetch_assoc($hasil);
        $data['username'] = $baris['username'];
        $data['nama_lengkap']=$baris['nama_lengkap'];
        $data['password'] = $baris['password'];
        mysqli_close($koneksi);
        return $data;
    } else {
        mysqli_close($koneksi);
        return null;
    }
}
// otentification
function otentik($username, $password){
    $dataUser = array();
    $pwdmd5 = md5($password);
    $dataUser = cariUserDariUsername($username);
    if ($dataUser != null) {
        if ($pwdmd5==$dataUser['password']) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}



// create Pendataan
function createPendataan($data){
    $koneksi = koneksiUas();

    $nik = $data["nik"];
    $nama = $data["nama"];
    $usia = $data["usia"];
    $jenis_kelamin = $data["jenis_kelamin"];
    $alamat = $data["alamat"];
    $asal_pemudik = $data["asal_pemudik"];
    $status = $data["status"];
    $keluhan = $data["keluhan"];
    $wajib_pantau = $data["wajib_pantau"];

    $sql = "INSERT INTO pendataan VALUES ('','$nik','$nama','$usia','$jenis_kelamin','$alamat','$asal_pemudik','$status','$keluhan','$wajib_pantau')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Pendataan
function updatePendataan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $nik = $data["nik"];
    $nama = $data["nama"];
    $usia = $data["usia"];
    $jenis_kelamin = $data["jenis_kelamin"];
    $alamat = $data["alamat"];
    $asal_pemudik = $data["asal_pemudik"];
    $status = $data["status"];
    $keluhan = $data["keluhan"];
    $wajib_pantau = $data["wajib_pantau"];

    $sql = "UPDATE pendataan SET
            nik='$nik',
            nama='$nama',
            usia='$usia',
            jenis_kelamin='$jenis_kelamin',
            alamat='$alamat',
            asal_pemudik='$asal_pemudik',
            status='$status',
            keluhan='$keluhan',
            wajib_pantau='$wajib_pantau'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Pendataan
function deletePendataan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM pendataan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Pemantauan
function createPemantauan($data){
    $koneksi = koneksiUas();

    $nik = $data["nik"];
    $nama = $data["nama"];
    $usia = $data["usia"];
    $waktu_pantau = $data["waktu_pantau"];
    $suhu = $data["suhu"];
    $batuk = $data["batuk"];
    $flu = $data["flu"];
    $sesak = $data["sesak"];
    $keluhan = $data["keluhan"];

    $sql = "INSERT INTO pemantauan VALUES ('','$nik','$nama','$usia','$waktu_pantau','$suhu','$batuk','$flu','$sesak','$keluhan')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Pemantauan
function updatePemantauan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $nik = $data["nik"];
    $nama = $data["nama"];
    $usia = $data["usia"];
    $waktu_pantau = $data["waktu_pantau"];
    $suhu = $data["suhu"];
    $batuk = $data["batuk"];
    $flu = $data["flu"];
    $sesak = $data["sesak"];
    $keluhan = $data["keluhan"];

    $sql = "UPDATE pemantauan SET
            nik='$nik',
            nama='$nama',
            usia='$usia',
            waktu_pantau='$waktu_pantau',
            suhu='$suhu',
            batuk='$batuk',
            flu='$flu',
            sesak='$sesak',
            keluhan='$keluhan'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Pemantauan
function deletePemantauan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM pemantauan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Berita (berita)
function createBerita($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];
    $kategori = $data["kategori"];
    $tanggal = $data["tanggal"];
    $deskripsi = $data["deskripsi"];

    $sql = "INSERT INTO berita VALUES ('','$gambar','$judul','$kategori','$tanggal','$deskripsi')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Berita (berita)
function updateBerita($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];
    $kategori = $data["kategori"];
    $tanggal = $data["tanggal"];
    $deskripsi = $data["deskripsi"];

    $sql = "UPDATE berita SET
            gambar='$gambar',
            judul='$judul',
            kategori='$kategori',
            tanggal='$tanggal',
            deskripsi='$deskripsi'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Berita (berita)
function deleteBerita($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM berita WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Kategori
function createKategori($data){
    $koneksi = koneksiUas();

    $judul = $data["judul"];

    $sql = "INSERT INTO kategori_berita VALUES ('','$judul')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Kategori
function updateKategori($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $judul = $data["judul"];

    $sql = "UPDATE kategori_berita SET
            judul='$judul'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Kategori
function deleteKategori($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM kategori_berita WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create foto (galeri)
function createFoto($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];

    $sql = "INSERT INTO galeri_foto VALUES ('','$gambar','$judul')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update foto (galeri)
function updateFoto($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];

    $sql = "UPDATE galeri_foto SET
            gambar='$gambar',
            judul='$judul'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete foto (galeri)
function deleteFoto($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM galeri_foto WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create video (galeri)
function createVideo($data){
    $koneksi = koneksiUas();

    $video = uploadVideo();
    if(!$video){
        return false;
    }
    $judul = $data["judul"];

    $sql = "INSERT INTO galeri_video VALUES ('','$video','$judul')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update video (galeri)
function updateVideo($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $video = uploadVideo();
    if(!$video){
        return false;
    }
    $judul = $data["judul"];

    $sql = "UPDATE galeri_video SET
            video='$video',
            judul='$judul'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete video (galeri)
function deleteVideo($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM galeri_video WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Statistik agama
function createStatistikAgama($data){
    $koneksi = koneksiUas();

    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "INSERT INTO statistik_agama VALUES ('','$jenis','$pria','$wanita','$jumlah')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Statistik agama
function updateStatistikAgama($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "UPDATE statistik_agama SET
            jenis='$jenis',
            pria='$pria',
            wanita='$wanita',
            jumlah='$jumlah'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Statistik agama
function deleteStatistikAgama($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM statistik_agama WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Statistik pekerjaan
function createStatistikPekerjaan($data){
    $koneksi = koneksiUas();

    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "INSERT INTO statistik_pekerjaan VALUES ('','$jenis','$pria','$wanita','$jumlah')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Statistik pekerjaan
function updateStatistikPekerjaan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "UPDATE statistik_pekerjaan SET
            jenis='$jenis',
            pria='$pria',
            wanita='$wanita',
            jumlah='$jumlah'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Statistik pekerjaan
function deleteStatistikPekerjaan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM statistik_pekerjaan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Statistik umur
function createStatistikUmur($data){
    $koneksi = koneksiUas();

    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "INSERT INTO statistik_umur VALUES ('','$jenis','$pria','$wanita','$jumlah')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Statistik umur
function updateStatistikUmur($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "UPDATE statistik_umur SET
            jenis='$jenis',
            pria='$pria',
            wanita='$wanita',
            jumlah='$jumlah'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Statistik umur
function deleteStatistikUmur($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM statistik_umur WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Statistik perkawinan
function createStatistikPerkawinan($data){
    $koneksi = koneksiUas();

    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "INSERT INTO statistik_perkawinan VALUES ('','$jenis','$pria','$wanita','$jumlah')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Statistik perkawinan
function updateStatistikPerkawinan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $jenis = $data["jenis"];
    $pria = $data["pria"];
    $wanita = $data["wanita"];
    $jumlah = $data["jumlah"];

    $sql = "UPDATE statistik_perkawinan SET
            jenis='$jenis',
            pria='$pria',
            wanita='$wanita',
            jumlah='$jumlah'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Statistik perkawinan
function deleteStatistikPerkawinan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM statistik_perkawinan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create identitas
function createIdentitas($data){
    $koneksi = koneksiUas();

    $judul = $data["judul"];
    $isi = $data["isi"];

    $sql = "INSERT INTO identitas VALUES ('','$judul','$isi')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update identitas
function updateIdentitas($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $judul = $data["judul"];
    $isi = $data["isi"];

    $sql = "UPDATE identitas SET
            judul='$judul',
            isi='$isi'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete identitas
function deleteIdentitas($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM identitas WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create wilayah administrasi
function createWilayahAdministrasi($data){
    $koneksi = koneksiUas();

    $kecamatan = $data["kecamatan"];
    $kelurahan = $data["kelurahan"];
    $desa = $data["desa"];
    $rw = $data["rw"];
    $rt= $data["rt"];
    $penduduk = $data["penduduk"];

    $sql = "INSERT INTO wilayah_administrasi VALUES ('','$kecamatan','$kelurahan','$desa','$rw','$rt','$penduduk')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update wilayah administrasi
function updateWilayahAdministrasi($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $kecamatan = $data["kecamatan"];
    $kelurahan = $data["kelurahan"];
    $desa = $data["desa"];
    $rw = $data["rw"];
    $rt = $data["rt"];
    $penduduk = $data["penduduk"];

    $sql = "UPDATE wilayah_administrasi SET
            kecamatan='$kecamatan',
            kelurahan='$kelurahan',
            desa='$desa',
            rw='$rw',
            rt='$rt',
            penduduk='$penduduk'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete wilayah administrasi
function deleteWilayahAdministrasi($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM wilayah_administrasi WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Pemerintahan
function createPemerintahan($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $ttl = $data["ttl"];
    $jabatan = $data["jabatan"];
    $pendidikan_terakhir = $data["pendidikan_terakhir"];
    $sk_pengangkatan = $data["sk_pengangkatan"];
    $periode_jabatan = $data["periode_jabatan"];

    $sql = "INSERT INTO pemerintahan VALUES ('','$gambar','$nama','$ttl','$jabatan','$pendidikan_terakhir','$sk_pengangkatan','$periode_jabatan')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Pemerintahan
function updatePemerintahan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $ttl = $data["ttl"];
    $jabatan = $data["jabatan"];
    $pendidikan_terakhir = $data["pendidikan_terakhir"];
    $sk_pengangkatan = $data["sk_pengangkatan"];
    $periode_jabatan = $data["periode_jabatan"];

    $sql = "UPDATE pemerintahan SET
            gambar='$gambar',
            nama='$nama',
            ttl='$ttl',
            jabatan='$jabatan',
            pendidikan_terakhir='$pendidikan_terakhir',
            sk_pengangkatan='$sk_pengangkatan',
            periode_jabatan='$periode_jabatan'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Pemerintahan
function deletePemerintahan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM pemerintahan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Bantuan (bantuan)
function createBantuan($data){
    $koneksi = koneksiUas();

    $program = $data["program"];
    $asal_dana = $data["asal_dana"];
    $peserta = $data["peserta"];
    $sasaran = $data["sasaran"];
    $status = $data["status"];

    $sql = "INSERT INTO bantuan VALUES ('','$program','$asal_dana','$peserta','$sasaran','$status')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Bantuan (bantuan)
function updateBantuan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $program = $data["program"];
    $asal_dana = $data["asal_dana"];
    $peserta = $data["peserta"];
    $sasaran = $data["sasaran"];
    $status = $data["status"];

    $sql = "UPDATE bantuan SET
            program='$program',
            asal_dana='$asal_dana',
            peserta='$peserta',
            sasaran='$sasaran',
            status='$status'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Bantuan (bantuan)
function deleteBantuan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM bantuan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Sejarah
function createSejarah($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $isi = $data["isi"];

    $sql = "INSERT INTO sejarah VALUES ('','$gambar','$isi')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Sejarah
function updateSejarah($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $isi = $data["isi"];

    $sql = "UPDATE sejarah SET
            gambar='$gambar',
            isi='$isi'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Sejarah
function deleteSejarah($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM sejarah WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Wisata
function createWisata($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "INSERT INTO wisata VALUES ('','$gambar','$nama','$lokasi','$rating')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Wisata
function updateWisata($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "UPDATE wisata SET
            gambar='$gambar',
            nama='$nama',
            lokasi='$lokasi',
            rating='$rating'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Wisata
function deleteWisata($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM wisata WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Kuliner
function createKuliner($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "INSERT INTO kuliner VALUES ('','$gambar','$nama','$lokasi','$rating')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Kuliner
function updateKuliner($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "UPDATE kuliner SET
            gambar='$gambar',
            nama='$nama',
            lokasi='$lokasi',
            rating='$rating'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Kuliner
function deleteKuliner($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM kuliner WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Penginapan
function createPenginapan($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "INSERT INTO penginapan VALUES ('','$gambar','$nama','$lokasi','$rating')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Penginapan
function updatePenginapan($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $nama = $data["nama"];
    $lokasi = $data["lokasi"];
    $rating = $data["rating"];

    $sql = "UPDATE penginapan SET
            gambar='$gambar',
            nama='$nama',
            lokasi='$lokasi',
            rating='$rating'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Penginapan
function deletePenginapan($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM penginapan WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create informasi
function createInformasi($data){
    $koneksi = koneksiUas();

    $judul = $data["judul"];
    $link = $data["link"];
    $target = $data["target"];

    $sql = "INSERT INTO informasi VALUES ('','$judul','$link','$target')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update informasi
function updateInformasi($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $judul = $data["judul"];
    $link = $data["link"];
    $target = $data["target"];

    $sql = "UPDATE informasi SET
            judul='$judul',
            link='$link',
            target='$target'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete informasi
function deleteInformasi($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM informasi WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create CCTV (cctv)
function createCctv($data){
    $koneksi = koneksiUas();

    $link = $data["link"];
    $deskripsi = $data["deskripsi"];

    $sql = "INSERT INTO cctv VALUES ('','$link','$deskripsi')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update CCTV (cctv)
function updateCctv($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $link = $data["link"];
    $deskripsi = $data["deskripsi"];

    $sql = "UPDATE cctv SET
            link='$link',
            deskripsi='$deskripsi'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete CCTV (cctv)
function deleteCctv($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM cctv WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Agenda (agenda)
function createAgenda($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];
    $tanggal = $data["tanggal"];

    $sql = "INSERT INTO agenda VALUES ('','$gambar','$judul','$tanggal')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Agenda (agenda)
function updateAgenda($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $judul = $data["judul"];
    $tanggal = $data["tanggal"];

    $sql = "UPDATE agenda SET
            judul='$judul',
            tanggal='$tanggal'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Agenda (agenda)
function deleteAgenda($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM agenda WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Kontak-Masuk
function createKontakMasuk($data){
    $koneksi = koneksiUas();

    $tipe = $data["tipe"];
    $nama_lengkap = $data["nama_lengkap"];
    $email = $data["email"];
    $pesan = $data["pesan"];

    $sql = "INSERT INTO kontak_masuk VALUES ('','$tipe','$nama_lengkap','$email','$pesan')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Kontak-Masuk
function updateKontakMasuk($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $tipe = $data["tipe"];
    $nama_lengkap = $data["nama_lengkap"];
    $email = $data["email"];
    $pesan = $data["pesan"];

    $sql = "UPDATE kontak_masuk SET
            tipe='$tipe',
            nama_lengkap='$nama_lengkap',
            email='$email',
            pesan='$pesan'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Kontak-Masuk
function deleteKontakMasuk($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM kontak_masuk WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Slider
function createSlider($data){
    $koneksi = koneksiUas();

    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $deskripsi = $data["deskripsi"];

    $sql = "INSERT INTO slider VALUES ('','$gambar','$deskripsi')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Slider
function updateSlider($data) {
    $koneksi = koneksiUas();

    $id = $data["id"];
    $gambar = upload();
    if(!$gambar){
        return false;
    }
    $deskripsi = $data["deskripsi"];

    $sql = "UPDATE slider SET
            gambar='$gambar',
            deskripsi='$deskripsi'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Slider
function deleteSlider($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM slider WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}

// create Pengguna
function createPengguna($data){
    $koneksi = koneksiUas();
    $nama_lengkap = $data["nama_lengkap"];
    $username = $data["username"];
    $password = $data["password"];
    $password_md5 = md5 ($password);

    $sql = "INSERT INTO pengguna VALUES ('','$nama_lengkap','$username','$password_md5')";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
// update Pengguna
function updatePengguna($data) {
    $koneksi = koneksiUas();
    $id = $data["id"];
    $nama_lengkap = $data["nama_lengkap"];
    $username = $data["username"];
    $password = $data["password"];
    $password_md5 = md5 ($password);

    $sql = "UPDATE pengguna SET
            nama_lengkap='$nama_lengkap',
            username='$username',
            password='$password_md5'
            WHERE id=$id
            ";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);

}
// delete Pengguna
function deletePengguna($email){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM pengguna WHERE email=$email";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}



?>