<?php
require '../../functions.php';
$koneksi = koneksiUas();

$id = $_GET["id"];

if (deleteSejarah($id) > 0){
    echo "<script>
    alert('data berhasil di hapus!!!');
    window.location.href='sejarah.php';
    </script>";
}

else{
    echo "<script>
    alert('data gagal di hapus!!!');
    window.location.href='sejarah.php';
    </script>";
    echo mysqli_error($koneksi);
}

?>