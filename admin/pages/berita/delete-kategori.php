<?php
require '../../functions.php';
$koneksi = koneksiUas();

$id = $_GET["id"];

if (deleteKategori($id) > 0){
    echo "<script>
    alert('data berhasil di hapus!!!');
    window.location.href='kategori.php';
    </script>";
}

else{
    echo "<script>
    alert('data gagal di hapus!!!');
    window.location.href='kategori.php';
    </script>";
    echo mysqli_error($koneksi);
}

?>