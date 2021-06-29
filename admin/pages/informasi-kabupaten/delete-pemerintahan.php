<?php
require '../../functions.php';
$koneksi = koneksiUas();

$id = $_GET["id"];

if (deletePemerintahan($id) > 0){
    echo "<script>
    alert('data berhasil di hapus!!!');
    window.location.href='pemerintahan.php';
    </script>";
}

else{
    echo "<script>
    alert('data gagal di hapus!!!');
    window.location.href='pemerintahan.php';
    </script>";
    echo mysqli_error($koneksi);
}

?>