<?php
session_start();
include('functions.php');

$username = $_POST['username'];
$password = $_POST['password'];

if (otentik($username, $password)) {
    // Set variabel sesi
    $_SESSION['username'] = $username;
    // deklarasi var array
    $dataUser = array();
    // mencari user (nama)
    $dataUser = cariUserDariUserName($username);
    $_SESSION['namauser'] = $dataUser['nama'];
    header("Location: index.php");
} else {
    header("Location: login.php?error");
}
?>