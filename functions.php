<?php
include 'koneksi.php';

// create Kontak-Masuk
function createLapor($data){
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
function updateLapor($data) {
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
function deleteLapor($id){
    $koneksi = koneksiUas();
    $sql = "DELETE FROM kontak_masuk WHERE id=$id";

    mysqli_query($koneksi,$sql);
    return mysqli_affected_rows($koneksi);
}
?>