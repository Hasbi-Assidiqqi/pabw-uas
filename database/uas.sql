-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2021 pada 14.27
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `gambar`, `judul`, `tanggal`) VALUES
(5, '60db10a738260.jpeg', 'Kunjungan Pj Bupati Bengkalis ke Pengadilan Negeri Bengkalis', '2020-09-29'),
(6, '60db110895d27.jpg', 'Kunjungan Bupati Bengkalis ke STAIN Bengkalis', '2021-06-29'),
(7, '60db113713ca7.jpg', 'Meningkatkan Sinergi dan Silaturahmi, Bupati Bengkalis melakukan Kunjungan Kerja ke Polbeng', '2021-03-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bantuan`
--

CREATE TABLE `bantuan` (
  `id` int(11) NOT NULL,
  `program` varchar(225) NOT NULL,
  `asal_dana` varchar(255) NOT NULL,
  `peserta` int(11) NOT NULL,
  `sasaran` varchar(225) NOT NULL,
  `status` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bantuan`
--

INSERT INTO `bantuan` (`id`, `program`, `asal_dana`, `peserta`, `sasaran`, `status`) VALUES
(7, 'Bedah Rumah', 'MNC Tv', 1, 'Penduduk Miskin', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `kategori` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `gambar`, `judul`, `kategori`, `tanggal`, `deskripsi`) VALUES
(28, '60da749fd10dd.jpg', 'Sebanyak 113 Peserta Ikuti Seleksi Calon Pendamping Koperasi UKM', 1, '2021-06-28', '<p><strong>BENGKALIS</strong>&nbsp;&mdash; Sebanyak 113 peserta mengikuti ujian seleksi calon pendamping koperasi dan usaha kecil menengah (UKM) yang diselenggarakan Dinas Koperasi UKM Bengkalis, Senin 28 Juni 2021.&nbsp;&nbsp;</p>\r\n\r\n<p>Pelaksanaan kegiatan dilangsungkan di auula pertemuan Dinas Koperasi UKM Kabupaten Bengkalis, Jalan Pertanian, Bengkalis, yang dibagi dalam dua sesi. Yakni Sesi pertama dimulai pukul 08.00 sampai 10.00 WIB, kemudian sesi kedua pada pukul 10.00 sampai selesai.</p>\r\n\r\n<p>Sebagaimana rilis yang disampaikan ke redaksi web diskominfotik, Kepala Seksi Pelayanan Koperasi Dinas Koperasi UKM Kabupaten Bengkalis, Susi Nelda, mengatakan bahwa pelaksanaan seleksi dilakukan secara transparan tanpa ada unsur kolusi dan nepotisme.</p>\r\n\r\n<p>&quot;Kami jamin pelaksanaan ini bebas dari kolusi dan nepotisme. Hasilnya dapat dilihat besok,&quot; ungkap Susi Nelda saat membuka acara.</p>\r\n\r\n<p>Selanjutnya Susi Nelda menjelaskan, selama kegiatan berlangsung, para peserta tidak dibenarkan membawa telepon genggam (HP).</p>\r\n\r\n<p>&quot;Tujuannya, untuk menjaga kualitas seleksi. Sehingga peserta yang lulus seleksi benar-benar sesuai kemampuan dan kriteria yang ditetapkan dan diharapkan,&quot; ungkapnya.</p>\r\n\r\n<p>Susi Nelda menegaskan agar semua peserta mematuhi peraturan yang telah ditetapkan panitia demi kelancaran jalannya seleksi.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(29, '60da76406828c.jpg', 'Bupati Kasmarni Siap Dukung dan Sinergi Dengan BSI Bengkalis', 1, '2021-06-28', '<p><strong>BENGKALIS &ndash;</strong>&nbsp;Bupati Bengkalis Kasmarni menyampaikan siap mendukung program-program Bank Syariah Indonesia (BSI) Bengkalis yang sifatnya bersinirgi dengan pembangunan Pemerintah Kabupaten Bengkalis.</p>\r\n\r\n<p>Hal itu disampaikan saat menerima kunjungan dari Bank Syariah Indonesia (BSI) Bengkalis, Senin 28 Juni 2021 di Wisma Srimahkota Bengkalis.</p>\r\n\r\n<p>Orang nomor satu Bengkalis mengatakan, Pemerintah Kabupaten Bengkalis siap mendukung penuh program-program BSI ini, dengan harapan kedepannya saling berkomunikasi ke masing-masing PD terkait program-program apa saja yang harus disinergikan, sehingga nantinya sinergi antara Pemerintah dan BSI dapat menguatkan pembangunan di Kabupaten Bengkalis.</p>\r\n\r\n<p>Pada kesempatan itu, Branch Manager (Kepala Cabang) BSI Bengkalis Ifan Prima Iskandar menyampaikan bahwa selain bersilaturahmi kedatangan rombongannya tersebut, membahas terkait pendirian Bank Syariah Indonesia pada 1 Februari 2021 lalu.</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/DSC_1955.jpg\" /></strong></p>\r\n\r\n<p>Lebih lanjut dikatakan Ifan, program pada Tahun 2020 lalu, BSI telah memberikan bantuan CSR lebih kurang 20 item CSR untuk penduduk Kabupaten Bengkalis berupa bantuan rumah ibadah dan anak kurang mampu khusus yang ada di Pulau Bengkalis. Dan insya Allah tahun ini juga akan menyalurkan CSR itu kembali.&nbsp;</p>\r\n\r\n<p>&quot;BSI ini sendiri sistemnya lebih menganut kepada bagi hasil untuk nasabahnya dan BSI sebagai perbankan yang saling menguntungkan kedua belah pihak, aspek diferensiasi dengan keunggulan kompetitif dengan produk dan skema yang beragam, transparans, kompeten dalam keuangan dan beretika, teknologi informasi yang selalu up-date dan user friendly, serta adanya ahli investasi keuangan syariah yang memadai.&nbsp;</p>\r\n\r\n<p>Hadir Asisten Bidang Perekonomian dan Pembangunan Bengkalis Heri Indra Putra, Kepala BPKAD Kabupaten Bengkalis Aulia, Kepala Diskominfotik? Kabupaten Bengkalis Johansyah Syafri, Kabag Prokopim Setda Bengkalis Muhammad Fadhli, Micro Relationship Manager Team Leader BSI Bengkalis Ronaldi Kurniawan, Consumer Banking Staf BSI Bengkalis Zuber Ependi dan Micro Staf BSI Bengkalis Muhammad Ammar.<strong><em>#DISKOMINFOTIK</em></strong></p>\r\n'),
(30, '60da75455a155.jpg', 'Terima Kunjungan PT. PLN Bengkalis, Kasmarni Minta Tingkatkan Pelayanan Listrik Lebih Baik', 1, '2021-06-28', '<p><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/DSC_1866.jpg\" /></strong></p>\r\n\r\n<p><strong>BENGKALIS</strong>&nbsp;&ndash; Bupati Bengkalis Kasmarni meminta kepada pihak PT. PLN Rayon Bengkalis agar senantiasa meningkatkan pelayanan lebih baik kepada masyarakat, dan ia juga berharap jangan sampai warganya masih belum terjangkau jaringan listrik.</p>\r\n\r\n<p>Demikian hal itu disampaikannya saat menerima kunjungan rombongan PT. PLN (Persero) Rayon Bengkalis, Senin 28 Juni 2021, di Wisma Srimahkota Bengkalis.</p>\r\n\r\n<p>Kasmarni mengatakan, untuk mewujudkan Kabupaten Bengkalis yang bermarwah, maju dan sejahtera perlu dukungan, kerjasama serta kolaborasi dari semua pihak, begitu juga kepada pihak PLN Bengkalis, agar terus berkolaborasi dengan Pemkab Bengkalis dalam upaya memberikan pelayanan terbaik kepada seluruh masyarakat Kabupaten Bengkalis.</p>\r\n\r\n<p>&ldquo;Kami mendapat laporan bahwa ada beberapa dusun yang belum terjangkau listrik di Kabupaten Bengkalis, serta ada juga laporan langsung dari masyarakat, bahwa ada ketidakstabilan aliran listrik ke rumah warga alias kurang daya, jadi kami sering menerima laporan seperti itu pak, kami mohon kepada pihak PT. PLN Rayon Bengkalis melalui kerjasama ini agar segera mengatasi permasalahan tersebut, pinta Bupati.</p>\r\n\r\n<p>Disamping itu juga, mantan Camat Pinggir itu menyampaikan ucapan terima kasih kepada pihak PT. PLN Royan Bengkalis atas pemberian penghargaan tentang kelancaran pembayaran tagihan listrik Pemkab Bengkalis.</p>\r\n\r\n<p>&ldquo;Pada kesempatan ini juga kami ingin sampaikan, bahwa Pemkab Bengkalis terus berupaya untuk tepat waktu pembayaran tagihan listrik, namun terkadang ada beberapa kendala yang kami harap bapak bisa memaklumi, intinya kami tetap bayar pak, ucap orang nomor satu Bengkalis.</p>\r\n\r\n<p>Terkait dengan pengembangan usaha PLN, Pemkab Bengkalis siap mendukung, dan jika ada investasi yang ditawarkan pihak PLN terhadap perluasan ekonomi diterima saja, namun harus mengacu kepada peraruturan yang ada, misalnya pengembangan usaha tambak udang harus mengantongi surat izin.</p>\r\n\r\n<p>Sementara itu Manajer PT. PLN Rayon Bengkalis Andiko Bestari mengucapkan terima kasih kepada Bupati Bengkalis Kasmarni dan jajarannya sudah memberi waktu &nbsp;berdiskusi tentang peningkatan pelayanan PLN di wiliayah Kabupaten Bengkalis.</p>\r\n\r\n<p>&ldquo;Kami siap tingkatkan kerjasama serta kolaborasi seperti yang ibuk inginkan, dan kami juga siap membantu serta akan segera mengatasi permasalahan di lapangan sesuai dengan wewenang wilayah kerja kami, jika tidak berada pada wilayah kerja kami, pun juga kami siap bantu koordinasikan,&rdquo;ucapnya.</p>\r\n\r\n<p>Turut mendampingi Bupati Benkalis Asisten II Bengkalis, Staf Ahli Bupati Bengkalis serta sejumlah Kepala Perangkat Daerah di lingkungan Pemkab Bengkalis<strong><em>#DISKOMINFOTIK</em></strong></p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/DSC_1878.jpg\" /></em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>&nbsp;BERITA LAINNYA</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n'),
(31, '60da755c08e72.jpg', 'DPD-LM2R Bagikan Masker Kepada Masyarakat', 1, '2021-06-28', '<p><strong>BANTAN</strong>&nbsp;- Dewan Pimpinan Daerah Laskar Muda Melayu Riau (DPD-LM2R) Kabupaten Bengkalis dengan sejumlah anggota melaksanakan kegiatan pembagian masker gratis kepada masyarakat Kecamatan Bantan, Minggu 27 Juni 2021.</p>\r\n\r\n<p>Pembagian masker gratis tersebut dilaksanakan salah satu cara guna memutus mata rantai penyebaran Covid-19.</p>\r\n\r\n<p>Firdaus mengatakan kegiatan yang dilakukan ini sebagai salah satu cara untuk tetap mengkedepankan dan mematuhi imbauan Pemerintah dengan melaksanakan protokol kesehatan jika harus keluar rumah, diantaranya pengunaan masker serta menjaga jarak.</p>\r\n\r\n<p>&quot;Kita yakin dengan menggunakan masker dapat meminimalisir penyebaran Covid-19 dan semoga wabah ini cepat berlalu dan sehingga kita semua bisa melakukan aktivitas seperti sediakala,&quot; ujarnya.<em><strong>&nbsp;##DISKOMINFOTIK</strong></em></p>\r\n'),
(32, '60da7586bfaf3.jpg', 'Bupati Kasmarni Hadiri Wirid Pengajian Di Masjid Besar Arraudhah Desa Selatbaru, Bantan', 1, '2021-06-28', '<p>BANTAN - Bupati Bengkalis Kasmarni hadiri wirid pengajian yang dilaksanakan di Masjid Besar Arraudhah Desa Selatbaru, Kecamatan Bantan, Senin (28/06/21) dengan menghadirkan penceramah Almukarrom Ustad Syamsir Khan.</p>\r\n\r\n<p>Acara diawali dengan penyerahan bantuan dari Basnaz Kabupaten Bengkalis yaitu usaha harian, usaha madu tawon, usaha kue (roti kukus), alat mesin jahit listrik dan kursi roda yang langsung diserahkan Bupati Kasmarni didampingi Sekretaris Daerah H. Bustami, HY, Camat Bantan Sufandi dan Ketua Basnaz Bengkalis H. Ali Ambar.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2021/Juni/IMG-20210628-WA0064.jpg\" /></p>\r\n\r\n<p>Dalam sambutannya, Bupati Kasmarni pengajian rutin dan majlis ta&rsquo;lim seperti ini sengaja dilakukan tidak hanya terpusat di ibu kota Kabupaten semata, namun kedepan secara bergiliran akan dilakukan di seluruh kecamatan dalam wilayah Kabupaten Bengkalis. &ldquo;Mengingat masyarakat kita yang mayoritas tinggal di pedesaan, juga masih sangat membutuhkan kehadiran para ustadz, kyai, syeikh, habib dan para da&rsquo;i guna menimba ilmu serta menerima pesan-pesan keagamaan sebagai kebutuhan rohani yang senantiasa harus terus ditingkatkan,&rdquo; kata Bupati Kasmarni.</p>\r\n\r\n<p>Selanjutnya Kasmarni juga menyampaikan ucapan terima kasih serta apresiasi yang tinggi kepada Baznas Kabupaten Bengkalis yang telah menunjukkan eksistensi dengan serta pendayagunaan serta mendistribusikan zakatnya sebesar 100 juta Rupiah kepada 32 orang mustahik bidang ekonomi baik kelompok nelayan, UKM maupun ternak dan individu serta bantuan dua unit kursi roda bidang kesehatan bagi masyarakat Kecamatan Bantan.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2021/Juni/IMG-20210628-WA0063.jpg\" /></p>\r\n\r\n<p>&ldquo;Tentunya kegiatan seperti ini perlu kita dukung dan apresiasi bersama. Untuk itu mari bayarkan atau salurkan zakat, infaq dan sedekah kita ke Baznas sebagai lembaga resmi dan diakui pemerintah,&rdquo; ajak Bupati Kasmarni.</p>\r\n\r\n<p>Tampak hadir, Dandim 0303/ Bengkalis diwakili Babinsa Selat Baru Serda Armansyah, Kasat Binmas Polres Bengkalis AKP Ismanto Wibowo, Kepala Kejaksaan Bengkalis diwakili Kasubsi Triono, Sekretaris Daerah Bengkalis H. Bustami, HY, Pejabat Pimpinan Tinggi Pratama, Administrator dan Pengawas di lingkungan Pemkab Bengkalis, Camat Bantan Sufandi serta para undangan.&nbsp;<strong><em>#PROKOPIM</em></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2021/Juni/IMG-20210628-WA0062.jpg\" /></p>\r\n'),
(33, '60da75a1b5417.jpg', 'Jika Membandel Buang Sampah Sembarangan, Dikenai Sanksi Denda', 1, '2021-06-28', '<p><strong>MANDAU</strong>&nbsp;&ndash; Bupati Bengkalis Kasmarni memperingatkan warga tidak membuang sampah semberangan. Jika tetap warga membandel, bisa dikenai denda sebagaimana Peraturan Bupati Nomor 2 Tahun 2015 tentang Pengelolaan Sampah.</p>\r\n\r\n<p>Peringatan itu disampaikan Bupati Bengkalis saat ikut bergotong royong bersama masyarakat di Jalan Rangau Km 3, Kelurahan Babussalam, Kecamatan Mandau, Ahad 27 Juni 2021.&nbsp; &nbsp;</p>\r\n\r\n<p>Saat itu, Kasmarni mengintruksikan kepada lurah se-Kecamatan Mandau yang hadir pada acara gotong royong, agar menangkap setiap orang yang membuang sampah sembarang.&nbsp;</p>\r\n\r\n<p>Untuk tahap awal bagi yang tertangkap membuang sampah sembarangan, diberi pembinaan berupa teguran. Namun jika tetap juga membandel, ketahuan membuang sampah sembarangan langsung diberikan sanksi berupa denda sebagaimana Perda Nomor 2 Tahun 2015 Tentang Pengelolaan Sampah.&nbsp;</p>\r\n\r\n<p>Adapun sanksi pada Perda Nomor 2 Tahun 2015, berupa sanksi denda sebesar Rp2.500.00,- atau kurangan paling lama 3 bulan. Penerapan sanksi tersebut, kata Kasmarni merupakan usaha terakhir, setelah dilakukan teguran secara lisan maupun tulisan.</p>\r\n\r\n<p>Dikatakan Kasmarni, menjaga lingkungan yang bersih dan nyaman merupakan tanggunjgawab bersama yang harus dilakukan secara berkelanjutan oleh masyarakat. Apalagi, kota Duri merupakan kawasan perlintasan jalur Sumatera, sehingga harus dijaga kebersihan.</p>\r\n\r\n<p>Usai mengikuti gotong royong di Jalan Rangau Km 3, Bupat Kasmarni bersama rombongan langsung meninjau gorong-gorong di jembatan di sekitar Hotel Grand Zuri, Duri. Di tempat itu sejumlah petugas tengah membersihkan material yang menyumbat gorong-gorong.&nbsp;</p>\r\n\r\n<p>Saat itu masyarakat melaporkan kepada Bupati Kasmarni, saat awal dibersihkan berbagai sampah menyumbat gorong-gorong, seperti spring bad, kursi sopa dan sampah bekas-bekas botol dan plastik.&nbsp;</p>\r\n\r\n<p>Tak hanya, sampah lumpur yang menumpak sehingga menyumbat arus air. Akibat penumpukan sampah di gorong-gorong itu, ketika musim hujan mengakibatnya sejumlah titik di kawasan Kelurahan Babubassalam tergenang banjir. Untuk membersihkan sampah yang menumpuk di gorong-gorong tersebut, satu unit alat berat terus bekerja untuk.&nbsp;</p>\r\n\r\n<p>Pada kesempatan itu, Kasmarni, mengimbau kepada masyarakat untuk bergandeng tangan menjaga lingkungan agar tetap bersih dan asri. Intinya jangan membuang sampah sembarangan.</p>\r\n\r\n<p>Turut hadir dalam acara gotong royong, Asisten II Setda Bengkalis Heri Indra Putra, Kepala Dinas Perizinan Terpadu dan Satu Pintu Basuki, Kepala Dinas Tenaga Kerja dan Transmigrasi Kholijah, Plt Kepala Dinas Perkim Supardi, Kepala Dinas Plt Kepala Dinas Pekerjaan Umum Penataruangan Andriansyah, Camat Mandau Riki Rihardi, Direktur Perumda Tirta Terubuk Juprizal, Sekretaris Dinas Kominfotik Bengkalis Adi Sutrisno.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(34, '60da7b8a1d62e.jpg', 'Pj. Bupati Tinjau Rumah Adat Anjungan Riau', 2, '2020-11-19', '<p><strong>BENGKALIS</strong>&nbsp;- Pemerintah Kabupaten Bengkalis siap dan komitmen untuk memperbaiki rumah Adat Limas di Anjungan Riau TMII. Hal ini diungkapkan Pj Bupati Bengkalis Syahrial Abdi kala meninjau Anjungan Riau di Taman Mini Indonesia Indah Jakarta, Rabu, 18 November 2020.</p>\r\n\r\n<p>&quot;Kunjungan dilakukan sebagai upaya respon surat Badan Penghubung yang pernah dikirim ke Pemkab Bengkalis. Kami memgucapkan terimakasih sudah di ingatkan,&quot; kata Pj Bupati Bengkalis.</p>\r\n\r\n<p>Hadir mendampingi Pj Bengkalis pada kunjungan tersebut Kadis Pariwisata, Kadis PU Bengkalis serta Kabag dan Kepala Badan Penghubung Provinsi Riau Erisman Yahya didampingi Kasubbid Humpro Richa Rizky Irawan dan Kasubbid Hal Decy.</p>\r\n\r\n<p>Kunjungan tersebut adalah bentuk komitmen Pemkab Bengkalis untuk memperbaiki Rumah Adat sebagai pusat promosi di Ibukota Jakarta.</p>\r\n\r\n<p>&quot;Saya bawa Kadis PU, Kadis Pariwisata, Kabag Umum dan tim. Nanti Kadis kami akan koordinasi dengan Badan Penghubung aturannya bagaimana dan seperti apa,&quot; jelasnya.</p>\r\n\r\n<p>Syahrial Abdi juga mendukung langkah Badan Penghubung mengajak Kabupaten Kota bersinergi untuk membangun dan promosi di Anjungan Riau. &quot;Mari bersama bangun sinergi karena sendiri tidak akan hebat,&quot; ungkapnya.</p>\r\n\r\n<p>Sementara itu Kepala Badan Penghubung Provinsi Riau Erisman Yahya mengucapkan terimakasih atas respon dan komitmen Pemkab Bengkalis untuk bersinergi memperbaiki Rumah Adat Bengkalis di Anjungan Riau TMII.</p>\r\n\r\n<p>&quot;Terimakasih kepada bapak Pj Bupati Bengkalis sudah merespon dengan baik permohonan kami,&quot; ucap Erisman.</p>\r\n\r\n<p>Saat ini, kata Kaban Erisman Badan Penghubung mengajak Kabupaten Kota berkolaborasi dan komitmen untuk memajukan Provinsi Riau.&nbsp;</p>\r\n\r\n<p>&quot;Kami mengajak semua pihak yg mempunyai komitmen bersama memajukan provinsi Riau khususnya Kabupaten kota yg memiliki rumah adat di Anjungan dan kebetulan ada dua d sini ada Bengkalis dan Kampar. Alhamdulillah pemkab Kampar sudah sudah berkunjung ke sini dan merespon dengan baik serta komitmen untuk memperbaiki rumah adat Kampar,&quot; terang Erisman</p>\r\n\r\n<p>Rumah Adat di Anjungan Riau TMII tidak dimiliki semua Kabupaten Kota d Provinsi Riau. Bengkalis merupakan salah satu Kabupaten yang ada rumah adatnya dan bisa dijadikan sebagai Icon dan pusat promosi di Jakarta.</p>\r\n\r\n<p>&quot;Kami mencoba membuat spot untuk selfie misalnya jalur sedang diperbaiki kita bikin taman jalur dan bisa d jadikan tempat selfie sebagai Icon Kuansing di Jakarta. Ada juga pompa angguk yg merupakan Riau salah satu penghasil minyak terbesar d Indonesia dan kami juga sudah berkoordinasi dengan perusahaan terkait dan respon baik. Sekarang rumah adat Bengkalis bisa kita perbaiki dan bisa dijadikan sebagai icon dan tempat promosi di Ibu kota Jakarta,&quot; ungkap Erisman.&nbsp;<em><strong>##DISKOMINFOTIK</strong></em></p>\r\n'),
(35, '60da7ba8517dd.jpg', 'Pj. Bupati Syahrial Silaturahmi Bersama LAMR Kecamatan Mandau', 2, '2020-11-18', '<p>MANDAU, PROKOPIM - Usai melaksanakan Rapat Koordinasi persiapan Pilkada dan rapat evaluasi Covid-19 serta rencana pelaksanaan PSBM, Penjabat (Pj) Bupati Bengkalis H Syahrial Abdi langsung melaksanakan silaturahmi bersama Ketua dan jajaran pengurus Lembaga Adat Melayu Riau (LAMR) Kecamatan Mandau, Selasa (17/11/2020), di Dapur Melayu LAMR Kecamatan Mandau.&nbsp;</p>\r\n\r\n<p>Kehadiran Pj. Bupati disambut langsung oleh Ketua DPH LAMR Kecamatan Mandau Datuk Revolaysa, dan Datuk Rona Aidin serta Pengurus Rumpun Melayu Kecamatan Mandau Safarudin Sap.&nbsp;</p>\r\n\r\n<p>Sebagai payung adat, Syahrial Abdi sangat khawatir maraknya pembuangan limbah pabrik, baik limbah padat maupun limbah cair di Kecamatan Mandau..&nbsp;</p>\r\n\r\n<p>Terkait limbah pabrik sambung Abdi, tadi malam (16/11/2020) kami Pemerintah Kabupaten Bengkalis telah menerima kunjungan PT. Nasional Hijau Lestari (NHL), Perusahaan yang dibentuk dari Kementerian Lingkungan Hidup, BUMN dan Migas dan tupoksinya adalah pengoperasian limbah pabrik satu-satunya yang ada di Provinsi Riau dan ditempatkan di Kota Duri.&nbsp;</p>\r\n\r\n<p>&quot;80% perusahaan tersebut akan mengambil tenaga kerja dari anak tempatan, tentu ini akan memberikan lapangan pekerjaan yang besar bagi anak-anak kita nantinya&quot;, ucap Abdi seraya mengatakan terkait pengoperasian limbah ilegal dari PT Chevron nanti akan ada keputusan dari Kapolres Bengkalis.&nbsp;</p>\r\n\r\n<p>Kemudian Ketua MKA LAMR Kecamatan Mandau Datuk Revolaysa mengatakan kami sudah tiga kali melaksanakan perundingan terkait ada PT yang ilegal mengambil limbah pabrik, namun hasilnya tidak dibagikan kepada masyarakat Kecamatan Mandau.&nbsp;</p>\r\n\r\n<p>&quot;Kami menginginkan keputusan dari bapak Pj Bupati Bengkalis, untuk memberikan solusi dan saran apa yang akan kami lakukan kedepannya, sehingga limbah padat tersebut tidak diambil lagi dari PT Ilegal&quot;, ucap Datuk Revol.</p>\r\n'),
(36, '60da7bcf294f7.jpg', 'Sebagai Tanda Penghormatan, LAMR Bengkalis Gelar Tepuk Tepung Tawar Pj Bupati Bengkalis', 2, '2020-10-02', '<p><strong>BENGKALIS &ndash;</strong>&nbsp;Sebagai bentuk penghormatan, penyambutan, doa dan ucapan selamat, Lembaga Adat Melayu Riau (LAMR) Kabupaten Bengkalis, menggelar Tepuk Tepung Tawar kepada Penjabat (Pj) Bupati Bengkalis, H. Syahrial Abdi dan Hj. Herawati, Kamis, 1 Oktober 2020.</p>\r\n\r\n<p>Kegiatan adat untuk Pj Bupati Bengkalis dan istri yang baru dilantik pada 27 September 2020 ini, disambut dengan arakan kompang, silat persembahan yang diiringi gendang nafiri yang dilangsungkan di Gedung LAMR Bengkalis, Jalan Pramuka, Desa Air Putih, Kecamatan Bengkalis.</p>\r\n\r\n<p>Sebelum tepuk tepung tawar, Pj Bupati Bengkalis dipasangkan tanjak oleh Ketua Majelis Kerapatan Adat (MKA) LAMR Bengkalis, H. Zainuddin Yusuf dan selempang oleh Ketua Harian LAMR Bengkalis, H. Sofyan Said.</p>\r\n\r\n<p>&ldquo;Tepuk tepung tawar merupakan bagian dari adat Melayu dalam memberikan penghormatan. Alhamdulillah hari ini kita langsungkan tepuk tepung tawar untuk Pj Bupati dan istri, semoga dapat menjalankan tugas memimpin Negeri Junjungan ini dengan baik,&rdquo; ujar Ketua MKA LAMR Bengkalis, H. Zainuddin Yusuf, ketika memberikan sambutan.</p>\r\n\r\n<p>Sementara itu, Pj Bupati Bengkalis dalam sambutannya mengungkapan terima kasih kepada pemangku adat di Kabupaten Bengkalis atas tunjuk ajar serta dukungan yang diberikan kepadanya dalam menjalankan amanat negara menjadi Penjabat Bupati Bengkalis.</p>\r\n\r\n<p>&ldquo;Dukungan dari tokoh-tokoh LAMR Bengkalis sangat kami perlukan dalam mengemban tugas ini. Tentu dalam kami bertugas menjalankan roda pemerintahan Kabupaten Bengkalis, tentu perlu dukungan dari semua pihak. Baik itu menjaga netralitas ASN maupun menjadi Ketua Satgas Pencegahan Covid Kabupaten Bengkalis,&rdquo; kata Pj Bupati Bengkalis.</p>\r\n\r\n<p>Syahrial Abdi juga mengaku akan terus membangun komunikasi dan silaturahmi kepada semua pihak guna melanjutkan visi dan misi Kabupaten Bengkalis sambil menunggu pelantikan Bupati dan Wakil Bupati difinitif yang pemilihannya baru akan berlangsung Desember mendatang.</p>\r\n\r\n<p>Usai tepuk tepung tawar oleh sejumlah tokoh LAMR yang diantaranya Ketua MKA dan Ketua Harian LAMR Bengkalis, juga turut dilakukan doa bersama yang dipandu Ketua MUI Kabupaten Bengkalis, H. Amrizal dan kemudian dilanjutkan dengan makan adat bersama.</p>\r\n\r\n<p>Turut hadir Sekretaris Daerah, H. Bustami HY, yang juga Ketua Umum LAMR Bengkalis, Kapolres Bengkalis, AKBP Hendra Gunawan, Dandim 0303/Bengkalis, Letkol Inf Lizardo Gumay, Asisten I Bidang Pemerintahan dan Kesejahteraan Rakyat Hj. Umi Kalsum, Asisten II Bidang Perekonomian dan Pembangunan H. Heri Indra Putra, Asisten III Bidang Administrasi Umum H. T. Zainuddin dan sejumlah Kepala Perangkat Daerah dan tamu undangan lainnya.<strong><em>#DISKOMINFOTIK</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(37, '60da7bf3ba52b.jpg', 'LAMR Bengkalis Tepung Tawari Syahrial Abdi Beserta Istri', 2, '2020-10-01', '<p>BENGKALIS, PROKOPIM - H. Syahrial Abdi beserta istri, Hj. Herawati Syahrial mengikuti acara tepuk tepung tawar dalam rangka do&#39;a selamat sebagai Pj. Bupati dan Pj. Ketua TP-PKK Kabupaten Bengkalis, Kamis (1/09/2020) siang, di Gedung LAMR Bengkalis.</p>\r\n\r\n<p>Dalam sambutannya, Syahrial Abdi mengatakan selaku Pj. Bupati Bengkalis beserta istri Hj. Herawati selaku Pj. Ketua Tim Penggerak PKK Kabupaten Bengkalis, kami menyampaikan ucapan terima kasih yang setinggi-tingginya kepada keluarga besar Lembaga Adat Melayu Riau Kabupaten Bengkalis yang telah sudi menyambut kehadiran dan silaturrahmi kami siang ini dengan melaksanakan acara adat tepuk tepung-tawar.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20201001-WA0059.jpg\" /></p>\r\n\r\n<p>&quot;Sebagai Pj. Bupati Bengkalis, yang telah diamanahkan oleh Menteri Dalam Negeri melalui Gubernur Riau kepada kami diantaranya menjalankan roda pemerintahan dengan tugas, wewenang dan kewajiban sama dengan Bupati definitif selaku Kepala Daerah,&quot; kata Syahrial Abdi.</p>\r\n\r\n<p>Selanjutnya, kata Syahrial abdi, dirinya juga ditugaskan memfasilitasi penyelenggaraan pemilihan Bupati dan Wakil Bupati Kabupaten Bengkalis serta menjaga netralitas ASN, Camat, Lurah dan Kepala Desa pada Pilkada serentak 2020 ini.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20201001-WA0061.jpg\" /></p>\r\n\r\n<p>Kami juga diberikan amanah untuk melaksanakan tugas selaku Ketua Satgas Penanganan Covid-19 di Kabupaten Bengkalis dengan memperhatikan surat edaran Mendagri No. 440/5184/SE, tentang pembentukan satgas penanganan Covid-19 di daerah, serta ikut memelihara ketentraman dan ketertiban masyarakat agar terwujudnya kondusifitas pada pelaksanaan pilkada serentak di Kabupaten Bengkalis.</p>\r\n\r\n<p>&quot;Mengingat begitu besarnya tugas yang kami emban saat ini, tentunya perlu dukungan dari semua stakeholder yang ada di Kabupaten Bengkalis, termasuk dukungan dari orangtua kami datuk dan datin keluarga besar LAMR Kabupaten Bengkalis. Harapan kami dalam silaturrahmi ini, selama kami melaksanakan tugas sebagai pemimpin negeri, mohon kami diberikan petuah, petunjuk, nasihat serta pengajaran agar kami dapat melaksanakan tugas guna kemajuan dan kesejahteraan masyarakat Kabupaten Bengkalis&quot;, harap Syahrial.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20201001-WA0055.jpg\" /></p>\r\n\r\n<p>Tampak Hadir Sekda Kabupaten Bengkalis H. Bustami HY, Kapolres Bengkalis AKBP Hendra Gunawan, Kodim 0303/Bengkalis Letkol Inf. Lizardo Gumay, Asisten I Bidang Pemerintahan dan Kesejahteraan Rakyat Hj. Umi Kalsum, Asisten II Bidang Perekonomian dan Pembangunan H. Heri Indra Putra, Asisten III Bidang Administrasi Umum H. T. Zainuddin dan Pejabat di Lingkup Pemerintah Kabupaten Bengkalis.</p>\r\n'),
(38, '60da7c281c941.jpg', 'Kamis 1 Oktober 2020, Pj Bupati Beserta Istri Ditepuk Tepung Tawari LAMR', 2, '2020-10-01', '<p>BENGKALIS, PROKOPIM - Dalam rangka melanjutkan jalannya roda pemerintahan, Penjabat (Pj) Bupati Bengkalis Syahrial Abdi dan Istri Herawati Syahrial pada hari Kamis (1/10/2020) akan digelar doa selamat dan tepuk tepung tawar oleh Lembaga Adat Melayu Riau (LAMR) Kabupaten Bengkalis.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200929-WA0040.jpg\" /></p>\r\n\r\n<p>Hal tersebut diungkapkan H Sofyan Said selaku Ketua DPH LAMR Bengkalis saat bersilaturahmi dengan Pj Bupati Bengkalis di Wisma Daerah Sri Mahkota Bengkalis, Selasa (29/9/2020) sore. Silaturahmi tersebut diterima langsung oleh Pj Bupati H Syahrial Abdi didampingi Kepala Bagian Protokol dan Komunikasi Pimpinan Muhammad Fadhli dan Kepala Bagian Kesejahteraan Rakyat H Hambali.&nbsp;</p>\r\n\r\n<p>&quot;Pemimpin itu didahulukan selangkah ditinggikan seranting. Artinya selaku menjadi payung hukum di Negeri Junjungan dan sesuai adat LAMR maka setiap pejabat/petinggi di daerah akan dilaksanakan adat seperti itu&quot;, ujar Sofyan Said.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200929-WA0039.jpg\" /></p>\r\n\r\n<p>Pelaksanaan doa selamat dan tepuk tepung tawar tersebut sesuai dengan undangan LAMR Kabupaten Bengkalis Nomor: 74/LAMR/BKS/IX/2020 dan silaturahmi oleh Ketua MKA LAMR Datuk Seri Zainudin Yusuf, Ketua DPH LAMR Datuk Seri Sofyan Said, H Nur Nawawi, H Bahrum dan Aziyar Asroi yang diawali dengan mencicipi sirih yang dibawa oleh Ketua MKA LAMR.&nbsp;</p>\r\n\r\n<p>H Syahrial Abdi mengucapkan terimakasih dan apresiasi kepada LAMR Kabupaten Bengkalis yang telah mengagendakan kegiatan tersebut.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200929-WA0041.jpg\" /></p>\r\n\r\n<p>&quot;Kami berharap di setiap elemen baik masyarakat, swasta apalagi LAMR di Kabupaten Bengkalis untuk bekerja sama membangun Kabupaten Bengkalis&quot;, ucapnya.</p>\r\n'),
(39, '60da7c4f14084.jpg', 'Situs Sejarah Makam Datuk Gigi Putih', 2, '2020-07-09', '<p>TEMIANG, PROKOPIM - Pelaksana Harian (Plh) Bupati Bengkalis H Bustami HY didampingi Asisten Perekonomian dan Pembangunan H Heri Indra Putra mengunjungi situs sejarah religi Makam Datuk Gigi Putih Desa Temiang, Minggu (6/9/2020).&nbsp;</p>\r\n\r\n<p>Kedatangan Plh Bupati disambut langsung Camat Bandar Laksamana Acil Esyo, Kepala Desa Temiang Masdar, Kepala Desa Sepahat M Azlan, Kepala Desa Api-api Edi Ferizal, Kepala Desa Parit 1 Api-Api suratman, Inisiator Sejarah (Masyarakat raja laut tim sejarah dumai) Freddy Hasiholan Sidauruk/Beta.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200906-WA0013.jpg\" /></p>\r\n\r\n<p>H Bustami HY dikesempatan itu mengucapkan terimakasih dan apresiasi kepada Camat Bandar Laksamana dan Kepala Desa Temiang yang telah menggali lagi potensi sejarah Datuk Gigi Putih ini. Sejarah-sejarah yang ada di Kabupaten Bengkalis harus kita kembangkan lagi.&nbsp;</p>\r\n\r\n<p>&quot;Dari tahun 1200, di Kecamatan Bandar Laksamana sudah banyak peninggalan-peninggalan orang terdahulu, kemungkinan di Kecamatan Bandar Laksamana ini dahulu sudah ada kerajaan, contohnya makam ini&quot;, Kata Bustami.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200906-WA0010.jpg\" /></p>\r\n\r\n<p>Lebih lanjut Bustami berharap kepada Camat dan Kepala Desa Temiang untuk saat ini situs sejarah makam Datuk Gigi Putih sementara waktu jangan dibuka dulu, nanti kita akan menurunkan tim arkeologi untuk meneliti, nanti dari hasil penelitian tersebut akan diberikan jawaban yang saat ini menjadi misteri.&nbsp;</p>\r\n\r\n<p>&quot;Kepada pihak terkait yang tergabung menggali potensi sejarah makam Datuk Gigi Putih ini untuk bersama-sama dukung penemuan bersejarah makam ini menjadi situs sejarah religi di Kabupaten Bengkalis&quot;, harap Bustami.</p>\r\n\r\n<p>Camat Bandar Laksmana Acil Esyno mengucapkan terimakasih kepada Plh Bupati Bengkalis yang sudah mengapresiasi dan mendukung pengembangan objek wisata religi di Kecamatan Bandar Laksamana&quot;, kata Camat Acil Esyno.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://prokopim.bengkaliskab.go.id/gambarbengkalis/source/2020/September/IMG-20200906-WA0011.jpg\" /></p>\r\n\r\n<p>&quot;Semoga melalui makam Datuk Gigi Putih ini nantinya akan banyak sejarah lainnya yang akan kita jumpai di Kecamatan Bandar Laksamana ini&quot;, ucap Acil.</p>\r\n\r\n<p>Hadir juga di kesempatan itu Kepala Bidang Kebudayaan Disparbudpora Kabupaten Bengkalis Khairani, Komunitas Tematu Besantan dan masyarakat sekitar.</p>\r\n'),
(40, '60da7d5933257.jpg', 'Pimpin Rapat Evaluasi, Bupati Kasmarni Minta Seluruh PD Percepat Serapan Anggaran', 3, '2021-06-22', '<p><strong>BENGKALIS</strong>&nbsp;- Bupati Kasmarni meminta seluruh Perangkat Daerah (PD) agar mempercepat penyerapan anggaran dan pelaksanaan fisik. Terlebih, PD yang mengelola Dana Alokasi Khusus (DAK).</p>\r\n\r\n<p>Permintaan tersebut disampaikan Bupati Kasmarni, saat memimpin rapat evaluasi realisasi fisik dan keuangan yang bersumber dari Anggaran Pendapatan Belanja Daerah (APBD) Kabupaten Bengkalis Tahun 2021.</p>\r\n\r\n<p>Kegiatan yang dihadiri seluruh Kepala PD itu dilaksanakan di Ruang Rapat Hang Tuah, Kantor Bupati Bengkalis, Senin 21 Juni 2021.</p>\r\n\r\n<p>&quot;Harus menjadi perhatian bagi PD yang mengelola DAK, sebab kegiatan ini masuk dalam monitoring sistem perbendaharaan dan anggaran negara, yang merupakan syarat penyaluran DAK,&quot; pesan Kasmarni.</p>\r\n\r\n<p>Selain mendorong mempercepat serapan anggaran dan pekerjaan fisik, bupati perempuan pertama di Riau itu juga intruksikan agar PD memperhatikan pembangunan berskala prioritas.</p>\r\n\r\n<p>&quot;Kami juga berharap kegiatan yang akan dilaksanakan selain berskala prioritas juga harus mengacu dengan visi misi dan delapan program unggulan,&quot; pesannya lagi.</p>\r\n\r\n<p>Selain itu, Bupati Kasmarni juga berpesan agar Kepala PD selalu berkoordinasi dengan pimpinan dalam melaksanakan tugas-tugas yang diemban.</p>\r\n\r\n<p>Sebelumnya, Sekretaris Daerah H Bustami HY mengatakan salah satu kendala dalam optimalisasi serapan anggaran adalah pandemi Covid-19, yang mengakibatkan adanya kebijakan pemerintah untuk melakukan&nbsp;<em>refocusing</em>&nbsp;anggaran.</p>\r\n\r\n<p>Terkait serapan anggaran, dilaporkan Kepala Bagian Administrasi Pembangunan Sekretariat Daerah, Asnurial untuk Sub Kegiatan Gaji dan Tunjangan per 31 Mei 2021, fisik mencapai 39.55 persen sedangkan keuangan 28.27 persen.</p>\r\n\r\n<p>Sedangkan Sub Kegiatan Non Gaji dan Tunjangan per 31 Mei 2021, laporan fisik mencapai 23.27 persen sedangkan keuangan 16.98 persen.</p>\r\n\r\n<p>Lalu, Sub Kegiatan Gabungan per 31 Mei 2021, fisik 24.51 persen sedangkan keuangan mencapai 20.79 persen. #<strong>DISKOMINFOTIK</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/babam/WhatsApp%20Image%202021-06-21%20at%20lap%20fisik.jpg\" width=\"100%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/babam/WhatsApp%20Image%202021-06-21%20at%20lapfisik2.jpg\" width=\"100%\" /></p>\r\n'),
(41, '60da7d8309855.jpg', 'Garap Potensi Desa, Wabup Bagus Santoso Ajak Kerjasama Perusahaan', 3, '2021-06-14', '<p><strong>PEKANBARU -</strong>&nbsp;Usai dibuka secara resmi oleh Bupati Bengkalis Kasmarni, kegiatan pelatihan kewirausahaan dan manajemen koperasi di hotel Fave Pekanbaru Sabtu, 12 Juni 2021 Wakil Bupati (Wabup) melanjutkan dengan paparan potensi desa di Negeri Junjungan yang bisa digarap oleh masyarakat dan pelaku usaha.&nbsp;</p>\r\n\r\n<p>Tak tanggung-tanggung Wabup Bagus Santoso menggandeng tiga narasumber dari perusahaan PT. Sinar Samudra Agro Teknologi (SSAT) Juwita tawarkan budidaya talas, Agus Triawan Pengusaha lokal tanaman pangan dan buah PT. Multi Unggul Lestari serta Santoso kelompok Madu Family.&nbsp;</p>\r\n\r\n<p>Kepemimpinan pasangan Kasmarni-Bagus Santoso (KBS) terus berikhtiar dengan sungguh sungguh untuk menggapai tujuan menjadikan Kabupaten Bengkalis yang bermarwah, maju dan sejahtera, pasangan yang terbukti sukses dan kompak dalam masa 100 hari ini mengajak masyarakat mampu menggarap dan mengungkit potensi desa yang ada dengan mulai aksi menggarap komoditi lokal unggulan dipadukan dengan pengembangan wisata.&nbsp;</p>\r\n\r\n<p>Disampaikan Wabup Bagus Santoso, menggarap potensi desa di kategorikan menjadi dua yaitu potensi tidur dan potensi ditidurkan. lahan pekarangan yang terbiarkan adalah contoh lahan tidur, sementara potensi tambak udang, mangrove&nbsp; masuk ditidurkan. Kenapa karena potensi ini diolah tapi tak dikawal pelayanan atau perizinan.&nbsp;</p>\r\n\r\n<p>Potensi lainnya migas, industri, laut, wisata, koperasi, Bumdes, dan BUMD, dan penyertaan modal dengan PT Siak Bumi Pusak juga belum maksimal.&nbsp;</p>\r\n\r\n<p>Bagus Santoso menyebut untuk membangun kemitraan antara pemerintahan dan perusahaan guna memberikan laluan bagi masyarakat tempatan terutama bagi yang warga sekitar&nbsp; operasional perusahaan merupakan kewajiban semua pihak terutama pihak perusahaan.</p>\r\n\r\n<p>&quot;Ada 211 perusahaan yang beroperasional&nbsp; ambil keuntungan di wilayah kita, jika perusahaan tersebut peduli dijamin masyarakat sejahtera, maka kita akan ingatkan mereka yang cuai dan tak mau bermitra dengan warga&quot; tegas Wabup.&nbsp;</p>\r\n\r\n<p>Pada kesempatan tersebut mantan Wakil Ketua DPRD Bengkalis ini mendedahkan sejumlah potensi desa yang didukung Pemerintah Kabupaten (Pemkab) Bengkalis dengan ikut andil bersama pelaku usaha serta memberikan masukan serta solusi.&nbsp;</p>\r\n\r\n<p>Direktur PT. Sekato Pratama Makmur (SPM) Joko Irwan Dono menyebut kegiatan yang berlangsung selama 3 hari tersebut merupakan program kemitraan PT. SPM dan Koperasi Tani Hutan Tuah Sekato (KTH-TS).&nbsp;</p>\r\n\r\n<p>&quot;Ini merupakan awal langkah kita dengan koperasi untuk mensejahterakan masyarakat, saya yakin kedepan beberapa arahan dari Pemerintah Kabupaten Bengkalis bisa kita jalankan asalkan syaratnya kita secara bersama-sama,&quot; ujar Joko.&nbsp;</p>\r\n\r\n<p>Dikatakan Joko ketika PT SPM memiliki semangat untuk bisa mewujudkan keinginan Pemkab serta masyarakat, KTH-TS pun demikian.&nbsp;</p>\r\n\r\n<p>Bagus Santoso menambahkan Pemerintah&nbsp; akan menyambut dengan rasa bahagia dengan niat baik yang telah dan akan dilakukan ini. Mudah-mudahan akan diikuti oleh perusahaan-perusahaan lainnya.&nbsp;</p>\r\n\r\n<p>&quot;Insya allah dengan kolaborasi kerjasama membangun kemitraan yang baik untuk mengelola, baik&nbsp; perusahaan dengan koperasi, dengan warga dan pemerintah akan menumbuh kembangkan motivasi untuk bekerja dan usaha saling mengali potensi, &quot; harap Wabup.&nbsp;</p>\r\n\r\n<p>Kerjasama yang perlu dilakukan saat ini lanjut Bagus Santoso bagaimana kerjasama yang ada di jnternal perusahaan yang telah dilakukan, kemudian di eksternalnya bagaimana memanfaatkan potensi di desa-desa.&nbsp;</p>\r\n\r\n<p>&quot;Seperti yang sudah di bahas adanya mutualisme antara usaha masyarakat dan perusahaan. Perusahaan mendapatkan keuntungan kemudian masyarakat juga mendapatkan manfaat,&quot; pungkasnya.&nbsp;</p>\r\n\r\n<p>Dari hasil paparan Bagus Santoso bersama sejumlah perwakilan perusahaan, kepada masyarakat yang bakal menggali potensi desa akan berikan pendampingan dari pembibitan sampai produksi&nbsp; dan marketing penjualan.&nbsp;</p>\r\n\r\n<p>Turut hadir dalam pembukaan pelatihan tersebut Direktur PT Sekato Pratama Makmur, Joko Irwan Dono, Kadis Dagprin Indra Gunawan, Kepala Bapenda Supardi, Plt. Kepala Dinas Koperasi Nurminsyah, Camat Bukit Batu Taufik Hidayat, Camat Bandar Laksmana Acil Esyno Ketua Koperasi Tani Hutan Tuah Sekato Sarwani dan peserta Pelatihan Kewirausahaan dan Manajemen Koperasi dan undangan lainnya.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n'),
(42, '60da7d9e38ea3.jpg', 'Bupati Kasmarni Ajak Perusahaan Bangun Kemitraan dengan Inisiatif Sosial dan Lingkungan', 3, '2021-06-14', '<p><strong>PEKANBARU</strong>&nbsp;- Bupati Bengkalis Kasmarni didampingi Wakil Bupati (Wabup) Bagus Santoso membuka pelatihan kewirausahaan dan manajemen koperasi yang merupakan program kemitraan PT. Sekato Pratama Makmur (SPM) dan Koperasi Tani Hutan Tuah Sekato (KTH-TS) di hotel Fave Pekanbaru Sabtu, 12 Juni 2021.&nbsp;</p>\r\n\r\n<p>Bupati perempuan pertama di Riau ini mengajak perusahaan membangun kemitraan dengan inisiatif sosial dan lingkungan.&nbsp;</p>\r\n\r\n<p>&quot;Pihak swasta khususnya perusahaan yang berada dalam wilayah Kabupaten Bengkalis harus turut serta membangun kemitraan yang inklusif dan selaras dengan prinsip-prinsip sustainable development goal&rsquo;s (SDG&rsquo;S) dengan menghadirkan berbagai inisiatif sosial dan lingkungan, salah satunya melalui pelatihan peningkatan kewirausahaan dan manajemen koperasi ini,&quot; pungkasnya.&nbsp;</p>\r\n\r\n<p>Artinya lanjut Kasmarni, perusahaan harus memiliki komitmen dan harus terus berupaya menghadirkan dampak posisitif keberadaannya bagi masyarakat dan lingkungan baik disekitar wilayah operasional maupun didaerah lainnya.&nbsp;</p>\r\n\r\n<p>Guna mendukung cita-cita Indonesia menjadi negara maju pada tahun 2045 yang sejalan pula dengan Visi Pemerintah Kabupaten Bengkalis yakni mewujudkan Kabupaten Bengkalis bermarwah, maju dan sejahtera tahun 2021-2026, tentu tidak hanya bisa dilakukan oleh pemerintah semata, namun sangat dibutuhkan peran pihak swasta.&nbsp;</p>\r\n\r\n<p>&quot;Salah satunya melalui pembangunan kemitraan dengan melakukan transisi kearah bisnis yang berkelanjutan,&quot; ujar Kasmarni.&nbsp;</p>\r\n\r\n<p>Maka dari itu, pemerintah daerah sangat mengapresiasi atas terbangunnya hubungn kemitraan yang baik antara PT. Sekato Pratama dengan Koperasi Tani Hutan Tuah Sekato.&nbsp;</p>\r\n\r\n<p>Namun purlu diingat kata Kasmarni, bahwa esensi kemitraan usaha dalam ekonomi itu sebenarnya terletak pada kontribusi dan manfaat bersama, baik tenaga kerja maupun benda yang keduanya semata-mata guna mencapai tujuan ekonomi.</p>\r\n\r\n<p>Dalam kesempatan tersebut, Mantan Camat Pinggir ini berpesan kepada Koperasi Tani Hutan Tuah Sekato selaku mitra perusahaan, agar dapat memberikan dukungan kepada perusahaan begitu juga sebaliknya.&nbsp;</p>\r\n\r\n<p>&quot;Tetap menjalankan prinsip-prinsip kemitraan yang saling membutuhkan, saling memperkuat dan saling menguntungkan,&quot; sambungnya.&nbsp;</p>\r\n\r\n<p>Dalam menghadapi persaingan usaha yang semakin ketat dan kompetitif, pengembangan sumber daya manusia masyarakat koperasi menjadi salah satu prioritas yang secara konsisten terus dilakukan oleh pemerintah. karena sektor ini dapat memberikan kontribusi yang signifikan bagi pertumbuhan ekonomi nasional dan daerah.</p>\r\n\r\n<p>&quot;Kami pemerintah Kabupaten Bengkalis sangat fokus dan konsisten serta akan terus melakukan upaya menumbuh kembangkan koperasi dengan tujuan meningkatkan kualitas sumber daya manusia masyarakat koperasi sehingga memiliki dedikasi, kompeten, disiplin, ulet, cerdas dan handal serta siap kerja dalam mengelola serta mengembangkan koperasi,&quot; tegas Kasmarni.&nbsp;</p>\r\n\r\n<p>Oleh karena itu melalui pelatihan kewirausahaan dan manajemen koperasi dalam program kemitraan PT. Sekato Pratama Makmur dan Moperasi Tani Hutan Tuah Sekato ini, Kasmarni mengajak untuk dijadikan sebagai wahana bagi masyarakat koperasi dan pelaku usaha untuk mengembangkan kualitas sumber daya manusia yang diharapkan dapat mentransfer pengetahuan, ketrampilan dan etos kerja produktif serta dapat menumbuhkan jiwa wirausaha yang merupakan modal dasar dalam menjalankan dan pengembangan usaha.&nbsp;</p>\r\n\r\n<p>&quot;Kami berharap pelatihan ini dapat dimanfaatkan oleh masyarakat koperasi, sehingga masyarakat koperasi di Kabupaten Bengkalis khususnya koperasi tani hutan tuah sekato bisa menjadi lebih handal dan berkompeten guna membangun perekonomian menuju kehidupan masyarakat yang makin sejahtera dan berdikari melalui keberadaan koperasi yang sehat, tangguh dan mandiri,&quot; harap Kasmarni.&nbsp;</p>\r\n\r\n<p>Turut hadir dalam pembukaan pelatihan tersebut Direktur PT Sekato Pratama Makmur Joko Irwan Dono, Ketua Koperasi Tani Hutan Tuah Sekato Sarwani, Kadis Dagprin Indra Gunawan, Kepala Bapenda Supardi, Plt. Kepala Dinas Koperasi Nurminsyah, Camat Bukit Batu Taufik Hidayat, Camat Bandar Laksmana Acil Esyno dan peserta Pelatihan Kewirausahaan dan Manajemen Koperasi dan undangan lainnya.&nbsp;<em><strong>#DISKOMINFOTIK<img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/JUNI/IMG-20210612-WA0080.jpg\" /></strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/JUNI/IMG-20210612-WA0082.jpg\" /></strong></em></p>\r\n'),
(43, '60da7de0c408f.jpg', 'Didukung Pemkab Bengkalis, Pertamina Sosialisasi Peluang Usaha Pertashop Kepada Bumdes', 3, '2021-06-08', '<p><strong>BENGKALIS</strong>&nbsp;- Didukung Pemerintah Kabupaten (Pemkab) Bengkalis Pertamina mensosialisasikan peluang usaha Pertamina Shop (Pertashop) bagi Badan Usaha Milik Desa (Bumdes) di Negeri Junjungan Senin, 7 Juni 2021 digelar di Ruang Rapat Hang Tuah Lantai II Kantor Bupati Bengkalis.</p>\r\n\r\n<p>Sales Branch Manager (BSM) Pertamina Pekanbaru Muhajir menjelaskan Pertashop adalah lembaga penyalur Pertamina skala kecil yang disiapkan untuk melayani kebutuhan konsumen BBM non subsidi, LPG non subsidi, dan produk pertamina ritel lainnya yang tidak atau belum terlayani oleh lembaga penyalur Pertamina lain.</p>\r\n\r\n<p>Dalam paparannya Mujahir mengungkapkan bagaimana keuntungan jika Pertashop dibangun di Kabupaten Bengkalis.</p>\r\n\r\n<p>&ldquo;Keuntungan menjadi mitra Pertashop ini banyak yaitu penawaran kemitraan mudah, transparan dan menguntungkan. Takaran dan kualitas produk standar pertamina sertaharga jual sama dengan SPBU Pertamina,&rdquo; ungkap Muhajir.</p>\r\n\r\n<p>Menurutnya sebaran SPBU yang di Kabupaten Bengkalis dapat menggambarkan peluang untuk pendirian Pertashop.&nbsp;</p>\r\n\r\n<p>Dalam kesempatan itu, BSM Pertamina Pekanbaru yang baru menjabat selama satu bulan ini juga mengapresiasi Pemerintah Kabupaten (Pemkab) Bengkalis yang memiliki perhatian tinggi akan pemenuhan kebutuhan BBM bagi masyarakat.</p>\r\n\r\n<p>&ldquo;Dukungan Pemkab terhadap BBM luar biasa karena kami ketahui bahwa di Bengkalis dikasi waktu penyebrangan khusus bagi mobil-mobil pengangkut BBM. Tidak semua daerah menerapkan hal ini. Luar biasa, terima kasih atas dukungannya Pemkab Bengkalis, semoga bisa lebih baik lagi kerjasama kita,&rdquo; puji Mujahir.</p>\r\n\r\n<p>Apa yang dilakukan Pertamina dikatakan Mujahir sejalan dengan program Kementerian Dalam Negeri (Kemendagri) sejak 2020 yakni mengintruksikan percepatan program Pertashop terutama desa-desa yang memiliki potensi penyaluran BBM khususnya LPJ.</p>\r\n\r\n<p>&ldquo;Maka dari itu Bumdes di Bengkalis bisa sejalan mengambil langkah ini dan dijembatani oleh Pemkab. Apabila ada Bumdes yang berminat, maka akan kita utamakan,&rdquo; kata Mujahir.</p>\r\n\r\n<p>Bupati Bengkalis Kasmarni diwakili Wabup Bagus Santoso dalam sambutannya menyampaikan dukungannya terhadap kehadiran Pertashop di kabupaten berjuluk Negeri Junjungan ini.</p>\r\n\r\n<p>Menurutnya Pertashop sejalan dengan tujuan pemerintah dalam memeratakan energi dengan harga yang sama hingga ke pelosok pedesaan terutama di pulau-pulau seperti di Rupat dan Bengkalis.</p>\r\n\r\n<p>&ldquo;Kami mempunyai komitmen pasangan Kasmarni Bagus Santoso (KBS) 2021-2026 ini adalah memberdayakan potensi lokal dan mengangkat derajat dan ekonomi maysarakat tempatan. Alhamdulillah dibawah PMD Budes sudah luar biasa,&rdquo; ujar Wabup</p>\r\n\r\n<p>Wabup menyebut Pemkab Bengkalis akan menyambut baik seluruh pelaku usaha yang ingin menggali potensi Kabupaten Bengkalis untuk kemakmuran masyarakat Bengkalis.</p>\r\n\r\n<p>&ldquo;Kami menyambut baik Pertashop di Kebupaten Bengkalis, bahkan kami berharap Bumdes di daerah ini bisa membuka Pertashop,&rdquo; ungkap Wabup.</p>\r\n\r\n<p>Diutarakan Wabup harapan besar sinergitas pertamina dengan Bengkalis bisa berjalan dengan baik. Terutama terhdap pasukan BBM dan gas bisa didapatkan dengan mudah.</p>\r\n\r\n<p>&ldquo;Adanya Pertashop akan menjadi hal yang sangat menarik bagi masyarakat Bengkalis sekaligus berharap kepada Pertamina memberikan jalan kemudahan dalam mendirikan usaha Pertashop,&rdquo; lanjutnya.</p>\r\n\r\n<p>Wujud kepedulian Pemkab Bengkalis ditunjukkan dengan bagaimana badan usaha berkembang dengan baik di dorong Pemkab, terlebih ketika telah adanya peningkatan Bumdes menghasilkan pendampatan 1,8 milyar dari 136 Bumdes yang ada.</p>\r\n\r\n<p>&ldquo;Bumdes sekarang kita dorong untuk tidak fokus pada sektor simpan pinjamnya saja, namun juga unit produksi serta serta penjualan,&rdquo; ujar orang nomor dua di Negeri Junjungan ini.</p>\r\n\r\n<p>Dalam kesempatan tersebut hadir sejumlah tamu dari Jakarta Direktur Utama PT Trihasco Utama I Wayan Suardana, Direktur PT Trihasco Utama Heru Winanto, Direktur PT Solda Sofyan Lubis yang juga memberikan pandangan dan masukkan tehadap Kabupaten Bengkalis terkait bakal didirikannya Pertashop.</p>\r\n\r\n<p>Lalu turut ikut dalam sosialisasi tersebut Kadis Pemberdayaan Masyarakat dan Desa Yuhelmi, Kadis Perindag Indra Gunawan, Kadis PMPTSP Basuki Rakhmad, Kepala Bagian Ekonomi Aulia Army Effendy, Kasubbag Pemerintahan dan Pemberdayaan Masyarakat Bappeda Emilda dan Kabag Dokumentasi Prokopim Yeni Mayasari.</p>\r\n\r\n<p>Usai melakukan sosialisasi, orang nomor dua di Negeri Junjungan ini bersama rombongan langsung menuju Desa Jangkang untuk melihat langsung salah satu desa terbaik dalam pengelolaan Bumdesnya.</p>\r\n\r\n<p>Kehadiran Wabup bersama rombongan langsung disambut Camat Bantan Sufandi, Kepala Desa Jangkang Edi Sutrisno, Kepala Desa Deluk Azman serta Kepala Bumdes Jangkang Irzan.</p>\r\n\r\n<p>Rencananya Desa Jangkang bakal menjadi salah satu pendiri Pertashop di Kabupaten Bengkalis. Oleh karena itu Wabup mengunjungi langsung kantor desa dan kator Bumdes di desa tersebut.</p>\r\n\r\n<p>Dalam kesempatan itu Kades Jangkang dan Deluk menyampaikan keluhan dan saran terhadap Pertamina akan kesulitan masyarakat terutama para nelayan dalam mendapatan BBM.</p>\r\n\r\n<p>&ldquo;Kami intinya meminta Pertashop ini segera direalisasikan guna memenuhi keinginan masyarakat, juga kemudahan perizinan sehingga memangkas&nbsp;<em>cost</em>,&rdquo; ucap Camat Bantan Sufandi.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210607_203521_785.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210607_203536_987.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210607_203625_356.jpg\" /></strong></em></p>\r\n');
INSERT INTO `berita` (`id`, `gambar`, `judul`, `kategori`, `tanggal`, `deskripsi`) VALUES
(44, '60da7e1f6fb66.jpg', 'Musrenbang 2020, Pemkab Bengkalis Gelontorkan Rp297 Miliar Untuk Mandau', 3, '2020-02-17', '<p><strong>DURI</strong>&nbsp;- Pemerintah Kabupaten (Pemkab) Bengkalis melalui Anggaran Pendapatan Belanja Daerah (APBD) Tahun Anggaran 2020 menggelontorkan anggaran pembangunan Rp297 miliar untuk Kecamatan Mandau.</p>\r\n\r\n<p>Informasi tersebut terungkap saat Musyawarah Perencanaan Pembangunan (Musrenbang) Kecamatan Mandau yang berlangsung di Gedung Bathin Betuah, Kantor Camat Mandau, Senin 17 Februari 2020.</p>\r\n\r\n<p>Mewakili Pelaksana Tugas Bupati Bengkalis H Muhammad, Asisten Pemerintahan Umum dan Kesejahteraan Rakyat, Hj Umi Kalsum menjelaskan, anggaran itu masih diprioritaskan untuk bidang infrastruktur, seperti jalan, perumahan dan pemukiman.</p>\r\n\r\n<p>&quot;Tahun ini juga telah dianggarkan Rp27 miliar untuk sistem penyediaan air minum Dumai, Rohil, Bengkalis (Durolis) serta Rp15 miliar untuk peningkatan sarana air bersih&quot;, ungkapnya.</p>\r\n\r\n<p>Selain itu, sambungnya, tahun ini juga untuk masyarakat Mandau, Pemkab Bengkalis mengalokasikan Rp10,2 miliar untuk pembangunan rumah layak huni.</p>\r\n\r\n<p>&quot;Ini adalah bentuk perhatian Pemkab Bengkalis dalam mewujudkan pemerataan pembangunan di seluruh kecamatan&quot;, ujar Asisten I.</p>\r\n\r\n<p>Oleh karena itu, mengingat pentingnya acara musrenbang, Umi Kalsum berharap kegiatan ini jangan dipersepsikan sebagai acara seremonial belaka, tapi sebagai kegiatan penting dan strategis.</p>\r\n\r\n<p>Karena melalui forum musrenbang, seluruh pemangku kepentingan akan membahas dan menyepakati kembali program kegiatan yang berasal dari desa dan kelurahan.</p>\r\n\r\n<p>&quot;Kami yakin dan percaya, melalui forum ini akan menghasilkan sebuah keputusan yang berorientasi pada kepentingan masyarakat bukan kepentingan pribadi atau sekelompok orang saja,&quot; harapnya.</p>\r\n\r\n<p>Umi juga berharap perumusan dan penetapan program prioritas kecamatan harus benar-benar mampu menjawab permasalahan serta mendorong pertumbuhan ekonomi masyarakat, khususnya di kecamatan Mandau.</p>\r\n\r\n<p>Selain Umi Kalsum, kegiatan ini juga dihadiri pimpinan dan sejumlah anggota DPRD Kabupaten Bengkalis. Seperti Ketua Khairul Umum, Wakil Ketua Syaiful Ardi dan Kaderismanto.</p>\r\n\r\n<p>Sedangkan anggota DPRD yang ikut menghadiri adalah Kaderismanto, Indrawansyah, Septian Nugraha, Rosmawati Sinambela, Syafroni Untung, Abi Bahrun, Hendri, Giyatno dan Nanang Haryanto. #<strong>DISKOMINFOTIK</strong></p>\r\n'),
(45, '60da7e38e2a97.jpg', 'Dari TTG di Bengkulu, Karya Romadhoni Diborong Bupati Aceh Barat', 3, '2020-09-23', '<p><strong>BENGKALIS</strong>&nbsp;&ndash; Memasuki hari kedua ajang Teknologi tepat Guna (TTG) ke-21 tingkat nasional di Bengkulu, hasil karya anak negeri Kabupaten Bengkalis ternyata diminati dari pihak luar.</p>\r\n\r\n<p>Salah satunya, mesin pemotong rumput hasil modifikasi hasil karya Romadhoni dosen Politeknik Negeri Bengkalis. Tak tanggung-tanggung, Bupati Aceh Barat memborong dua unit mesin pemotong rumput yang dipajang di stand pameran TTG tingkat nasional di Bengkulu.</p>\r\n\r\n<p>Satu unit mesin rumput modifikasi tersebut sebesar Rp2,8 juta per unit atau totalnya Rp5,6 juta untuk dua unitnya.</p>\r\n\r\n<p>&ldquo;Alhamdulillah hasil karya inovasi dari Kabupaten Bengkalis ternyata menjadi perhatian. Buktinya mesin rumput hasil modifikasi Romadhoni diboyong Bupati Aceh Barat Ramli untuk dibawa ke kampong halamannya,&rdquo; ungkap Kepala Bidang Pembangunan dan Pemberdayaan Masyarakat, Erdila Fitriyadi dari Bengkulu, melalui layanan WhatsApp, Senin 23 September 2019.</p>\r\n\r\n<p><img alt=\"Mesin pemotong rumput hasil modifikasi Romadhoni\" src=\"https://diskominfotik.bengkaliskab.go.id/gambardiskominfotik/source/2019/SEPTEMBER/tt%20(1).jpg\" /></p>\r\n\r\n<p>Menurut Erdila, saat itu Bupati Aceh Barat berkunjung ke stand tim TTG Kabupaten Bengkalis. Seperti lazimnya, saat itu sang bupati melihat hasil karya anak negeri, yakni mesim pemotong rumput karya modifikasi Romahdoni.</p>\r\n\r\n<p>Kemudian, mesin pengolah lempuk temuan Akmal Ketua Posyantek Kecamatan Bengkalis dan mesin pengupas kelapa hasil karya Ngadikun warga Kecamatan Siak Kecil.</p>\r\n\r\n<p>Mengamati karya TTG Bengkalis yang dipajang, sambil mendengarkan pemaparan dari pramu stand, ternyata Bupati Aceh Barat Ramli &ldquo;jatuh hati&rdquo; pada mesin pemotong rumput.</p>\r\n\r\n<p>Menurut Bupati Aceh Barat, mesin pemotong rumput hasil karya anak negeri Bengkalis ini sangat menarik dan mudah mengoperasikan, makanya beliau tertarik untuk membelinya. Rencananya, pemotong rumput buat budak Bengkalis ini akan diserahkan kepada Dinas Lingkungan Hidup Kabupaten Aceh Barat.</p>\r\n\r\n<p>&ldquo;Pada saat awal beliau mencoba dua unit saja. Namun jika nanti sangat efektif, Bupati Aceh Barat akan membeli dalam skala besar,&rdquo; terang putra Desa Muntai Kecamatan Bantan ini.&nbsp;<strong>#DISKOMINFOTIK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(46, '60daab61ae2da.jpg', 'Meski Libur, Tim Molduk Bengkalis Jebol Master Warga Desa di Pulau Rupat', 4, '2021-06-14', '<p><strong>BENGKALIS</strong>&nbsp;&ndash; Tak kenal kata hari libur, Sabtu dan Ahad. Tim Mobile Kependudukan (Molduk) Kabupaten Bengkalis melaksanakan Jemput Bola Massif dan Terintegrasi (Jebol Master) di sejumlah desa di Pulau Rupat .&nbsp;</p>\r\n\r\n<p>&ldquo;Sejak Jumat kemarin. Bahkan hari libur Sabtu dan Ahad ini, Tim Molduk melayani warga yang ingin mendapatkan Kartu Tanda Penduduk (KTP) di Kecamatan Rupat,&rdquo; ungkap Kepala Dinas Kependudukan dan Catatan Sipil (Dukcapil) Bengkalis Ismail, Ahad 13 Juni 2021.</p>\r\n\r\n<p>Selama dua hari (Jumat dan Sabtu) sebanyak 254 warga telah melakukan perekaman KTP elektronik. Warga yang dilayani Tim Molduk Kabupaten Bengkalis berasal dari Desa Pangkal Pinang, Pangkalan Nyirih, Pancur Jaya, Hutan Panjang, Sungai Cingam dan Makeruh.</p>\r\n\r\n<p>&ldquo;Untuk hari ini (Ahad), Tim Molduk masih melayani perekaman warga dari Desa Teluk Lecah, Parit Kebumen dan Desa Dungun Baru. Jadi datanya belum bisa kita ketahui,&rdquo; ujar mantan Kepala Dinas Pengendalian Pendudukan dan Keluarga Berencana ini.</p>\r\n\r\n<p>Lebih lanjut Ismail menegaskan, palayanan Tim Molduk yang melakukan perekamanan keliling (reling) ke desa-desa mendapat sambutan antusias warga. Karena melalui program unggulan Bupati Bengkalis ini, masyarakat sangat terbantu.</p>\r\n\r\n<p>&ldquo;Masyarakat sangat senang dengan program unggulan Bupati Bengkalis ini. Karena ketika perekaman, tidak harus datang ke UPT di kecamatan. Tapi kita langsung datang mendatangi warga di kampung-kampung yang dipusatkan di satu lokasi,&rdquo; terangnya.&nbsp;</p>\r\n\r\n<p>Jebol Master ini merupakan salah satu program unggulan Bupati Bengkalis, rencananya akan terus berlanjut di Pulau Rupat, tepatnya di Kecamatan Rupat Utara, hingga hari Sabtu mendatang 19 Juni 2021.</p>\r\n\r\n<p>Layanan yang diberikan dilakukan secara massif dan terintegrasi meliputi perekaman dan penerbitan KTP-el, pembuatan akta kelahiran, proses pembuatan KIA, dan layanan lainnya yang diperlukan masyarakat. KTP-el langsung dicetak dilokasi kegiatan.&nbsp;</p>\r\n\r\n<p>Mengingat masih masa pendemi Covid-19, pelaksanaan Layanan Jebol Master di desa-desa di Kecamatan Rupat, tetap mengedepan protokol kesehatan pencegahan Covid-19. Seperti warga yang ingin direkam, harus menggenakan masker dan menjaga jarak.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/IMG-20210613-WA0006.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/IMG-20210613-WA0004.jpg\" /></strong></em></p>\r\n'),
(47, '60daab41877d1.jpg', 'PMD Bengkalis Sosialisasikan Perbup Nomor 24 Tahun 2021', 4, '2021-06-09', '<p><strong>BENGKALIS</strong>&nbsp;&ndash; Pemerintahan Masyarakat Desa (PMD) telah mensosialisasikan Peraturan Bupati (Perbup) Nomor 24 Tahun 2021 tentang peran pemerintah desa dalam pencegahan dan penanganan stunting terintegrasi.</p>\r\n\r\n<p>&ldquo;Selaku tim stunting, kami punya tanggungjawab untuk menyampaikan tentang Perbup Nomor 24 Tahun 2021 kepada 155 desa dan kelurahan,&rdquo; ungkap Kepala Dinas PMD, Yuhelmi, Rabu 9 Juni 2021.</p>\r\n\r\n<p>Selaku kabupaten lokus stunting 2021, Kabupaten Bengkalis punya kewajiban untuk melaksanakan delapan delapan aksi konvergensi stunting tahun 2021 dan 2022. Diantaranya yang harus dilakukan, sosialisasi keberadaan Perbup tentang peran pemerintah desa dalam pencegahan dan penanganan stunting terintegrasi.&nbsp;</p>\r\n\r\n<p>Dijelaskan Yuhelmi, kegiatan sosialisasi tersebut, diikuti kepala desa dan Tim Penggerak PKK desa dan kecamatan, petugas pendamping desa serta unsur terkait lainnya. Kemudian, turut diikuti Kepala Puskesmas, Pustu serta Poskesdes serta petugas gizi yang ada di kecamatan.&nbsp;&nbsp;</p>\r\n\r\n<p>&ldquo;Kita harapkan melalui sosialisasi Perbub ini, seluruh elemen di desa berperan aktif dalam upaya pencegahan di Kabupaten Bengkalis,&rdquo; ujarnya.</p>\r\n\r\n<p>Dikatakan Yuhelmi peran pemerintah desa sebagai wakil pemerintah di desa sangat penting dalam menanggulangi stunting di wilayahnya. Desa diharapkan dapat membuat program-program yang inovatif dalam mengatasi stunting di wilayahnya sesuai dengan kemampuan sumber daya dan keuangan yang ada di desa.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/IMG-20210609-WA0008.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/2021/6%20JUNI/IMG-20210609-WA0013.jpg\" /></strong></em></p>\r\n'),
(48, '60daab81984c0.jpg', 'Bupati Kasmarni Sampaikan Jawaban Pandangan Umum Fraksi DPRD Terkait Ranperda Pertanggungjawaban APBD 2020', 4, '2021-06-08', '<p><strong>BENGKALIS</strong>&nbsp;- Bupati Kasmarni menyampaikan jawaban dan penjelasan atas pandangan umum fraksi DPRD terhadap Rancangan Peraturan Daerah (Ranperda) Kabupaten Bengkalis tentang pertanggungjawaban pelaksanaan APBD tahun 2020, Senin, 7 Juni 2021 malam.</p>\r\n\r\n<p>Bupati mengawali penyampaian jawaban dari segi realisasi PAD yang masih belum maksimal. hal itu akan mejadi perhatian serius bagi Kasmarni.</p>\r\n\r\n<p>&quot;Kedepan kami akan berupaya untuk melakukan terobosan-terobosan dan lebih mengintensifkan sumber-sumber pendapatan yang ada,&quot; jelas Kasmarni di hadapan 28 anggota dewan dalam rapat paripurna yang dipimpin Wakil Ketua II Sofyan.</p>\r\n\r\n<p>Soal masih belum maksimalnya capaian realisasi pendapatan daerah. Salah satu penyebabnya karena adanya pandemi covid 19 yang berdampak pada perekonomian masyarakat secara luas, sehingga sektor usaha menjadi lesu dan pada akhirnya mempengaruhi penerimaan dari berbagai jenis pajak dan retribusi daerah.&nbsp;</p>\r\n\r\n<p>Kemudian, sambungnya, masih kurangnya kesadaran dan kepedulian wajib pajak dalam memenuhi kewajiban perpajakannya dan masih adanya tarif pajak yang tidak sesuai dengan kondisi saat ini.</p>\r\n\r\n<p>Selaras dengan harapan fraksi, Bupati Kasmarni juga berharap agar proses penyusunan APBD-P 2020 terkait dengan penggunaan SILPA tahun 2020 dapat segera dilakukan agar Ranperda pertanggungjawaban pelaksanaan APBD tahun 2020 ditetapkan menjadi Perda sehingga angka SILPA tersebut dapat dicantumkan di anggaran perubahan tahun 2020 ini.&nbsp;</p>\r\n\r\n<p>Berkenaan dengan saran agar Pemkab Bengkalis berupaya untuk mendapatkan alokasi anggaran dari pemerintah pusat, Kasmarni menjelaskan pihaknya sudah membentuk tim untuk melakukan kordinasi untuk mendapatkan alokasi anggaran baik dari pemerintah pusat melalui kementerian terkait maupun pemerintah propinsi.&nbsp;&nbsp;</p>\r\n\r\n<p>&quot;Melalui Tim tersebut, kami akan berusaha untuk lebih optimal dalam mempersiapkan dokumen-dokumen yang diperlukan bagi pengusulan anggaran dimaksud,&quot; ucap Kasmarni</p>\r\n\r\n<p>Selanjutnya Kasmarni menyambut baik ajakan anggota dewan untuk lebih mengedepankan prinsip efisiensi, akuntabilitas dan transparansi dalam pelaksanaan pengelolaan keuangan dan agar lebih memikirkan langkah-langkah inovatif bagi upaya peningkatan pendapatan daerah.</p>\r\n\r\n<p>Diakhir penyampaian jawabannya, Kasmarni mengungkapkan terima kasih dan meyakini seluruh masukan, saran dan pandangan maupun kritik yang disampaikan oleh seluruh fraksi DPRD didasari dengan niat baik untuk meningkatkan kinerja pemerintah dan memaksimalkan penyelenggaraan pembangunan daerah, serta memberikan manfaat sebesar-besarnya bagi masyarakat Kabupaten Bengkalis.</p>\r\n\r\n<p>Selain Sekda H Bustami HY, Ikut mendampingi Bupati Kasmarni dalam rapat paripurna ini, Asisten Setda dan Sejumlah Kepala Perangkat Daerah.#<em><strong>DISKOMINFOTIK</strong></em></p>\r\n'),
(49, '60daab9f5567e.jpg', 'Kasus Baru Covid-19 di Bengkalis Menurun, Pasien Meninggal Bertambah 3 Orang', 4, '2021-06-04', '<p><strong>BENGKALIS</strong>&nbsp;&ndash; Perkembangan penambahan kasus baru terkonfirmasi Covid-19 di Kabupaten Bengkalis kembali memperlihatkan grafik menurun.</p>\r\n\r\n<p>Jika kemarin 12 orang, hari ini, Kamis, 3 Juni 2021, sesuai data yang dirilis Dinas Kesehatan hingga pukul 18.00 WIB, penambahan kasus baru hanya 11 orang.</p>\r\n\r\n<p>Kepala Dinas Kesehatan Ersan Saputra Th menjelaskan, 11 kasus baru tersebut berasal dari Kecamatan Bengkalis dan Bukit Batu masing-masing 3 orang.</p>\r\n\r\n<p>&ldquo;Kemudian, Mandau 2 orang, serta Bandar Laksamana, Siak Kecil dan Pinggir masing-masing 1 orang&rdquo;, jelasnya.</p>\r\n\r\n<p>Kata Ersan lagi, 3 kasus dari Kecamatan Bengkalis berasal dari Rimba Sekampung, Ketam Putih dan Damon. Sementara di Bukit Batu dari Sungai Selari 2 orang dan Sungai Pakning 1 orang.</p>\r\n\r\n<p>&ldquo;Adapun di Mandau dari Gajah Sakti dan Duri Timur. Sedangkan di Bandar Laksamana dari Tenggayun, Siak Kecil dari Muara Dua, dan untuk Pinggir dari Balai Raja&rdquo;, tambah Ersan.</p>\r\n\r\n<p>Mantan Direktur RSUD Mandau ini juga menjelaskan, hari ini tercatat 3 pasien Covid-19 yang meninggal dunia. Sementara pasien yang sembuh sebanyak 9 orang.</p>\r\n\r\n<p>Ketiga pasien yang meninggal itu, imbuhnya, adalah MN (82, perempuan) dari Titian Antui, Pinggir. MN yang merupakan pasien ke-3.299 ini meninggal di rumah sakit Permata Hati Duri.</p>\r\n\r\n<p>Lalu, AB (76, perempuan) dari Pematang Pudu, Mandau. AB yang merupakan pasien ke-3.603, berpulang di rumah sakit Awal Bross Pekanbaru.</p>\r\n\r\n<p>Terakhir, AP (44, laki-laki). Warga Gajah Sakti yang tercatat sebagai pasien ke-3.670 ini wafat di rumah sakit Permata Hati Duri.</p>\r\n\r\n<p>&ldquo;Dengan adanya penambahan 11 kasus baru hari ini, maka total kasus terkonfirmasi positif Covid-19 di Kabupaten Bengkalis menjadi 3.973 orang&rdquo;, papar Ersan.</p>\r\n\r\n<p>Rinciannya, 3.260 orang sembuh (82,05 persen), 155 orang meninggal dunia (3,90 persen), 76 orang dirawat di rumah sakit (1,91 persen) dan 482 orang menjalani isolasi mandiri (12,13 persen).</p>\r\n\r\n<p>Di bagian lain dan untuk memutus mata rantai penyebarannya, Ersan kembali mengimbau seluruh lapisan masyarakat di daerah ini agar senantiasa mematuhi protokol kesehatan penanganan Covid-19, kapan dan dimana pun berada.&nbsp;</p>\r\n\r\n<p>Kemudian, kepada mereka yang terkonfirmasi positif Covid-19 dan menjalani isolasi mandiri, dia berharap supaya senantiasa berada di kediaman masing-masing.&nbsp;</p>\r\n\r\n<p>&ldquo;Agar tidak menulari orang lain, bagi yang menjalankan isolasi mandiri, tidak boleh bepergian kemana pun. Jangan melakukan kontak erat dengan siapapun&rdquo;, harap Ersan, mengingatkan.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n'),
(50, '60daabb7cc877.jpg', 'Dinas Ketahanan Pangan Percepat Penyaluran DAK NF di Kecamatan Pinggir', 4, '2021-06-04', '<p><strong>BENGKALIS -</strong>&nbsp;Dinas Ketahanan Pangan (DKP) Bengkalis percepat penyaluran Dana Alokasi Khusus Non Fisik (DAK NF). Pada tahap I penyaluran untuk Kelompok Wanita Tani (KWT) Mahkkota Dewa, Desa Buluh Apo Kecamatan Pinggir, Kamis 3 Juni 2021.</p>\r\n\r\n<p>Penyaluran DAK NF tahap pertama ini digelar di aula kantor Unit Pelaksana Teknis (UPT) Balai Penyuluhan Pertanian (BPP) Kecamatan Pinggir, yang dihadiri Kepala Dinas DKP Bengkalis H. Imam Hakim, Kabid Konsumsi dan Keamanan Pangan Susy Hartati, juga Kepala Seksi Konsumsi dan Penganekaragaman Erbun Yani.</p>\r\n\r\n<p>Turut hadir pada pertemuan tersebut&nbsp; Camat Pinggir Azwar, Kepala UPT BPP dan PPL serta Sekdes Buluh Apo beserta Kelompok Wanita Tani Mahkota Dewa sebagai Kelompok penerima manfaat kegiatan Pekarangan Pangan Lestari (P2L).</p>\r\n\r\n<p>Diungkapkan Imam Hakim, percepatan penyaluran DAK NF ini agar masyarakat, khususnya KWT untuk dapat memanfaatkan program pemerintah dalam upaya memperkuat ketahanan pangan.</p>\r\n\r\n<p>&ldquo;Pada kondisi pandemic Covid-19 saat ini, kita sebagai insan pertanian tidak mesti meratapi adanya wabah ini, namun kita mesti menyikapi dan semakin kreatif untuk memulihkan kondisi perekonomian kita dengan cara mengolah lahan-lahan yang belum dimanfaatkan secara optimal sebagai sumber pendapatan keluarga,&rdquo; ujar Imam Hakim kala memberikan sambutan.</p>\r\n\r\n<p>Lanjut Imam Hakim, masyarakat tidak boleh memandang sepele terhadap upaya pertanian keluarga sekala kecil ini, karena jika masing-masing rumah tangga sudah mengolah dan menanami lahan sekurang-kurangnya di lahan pekarangan yang ukurannya sekitar 250 m2 per rumah tangga, maka jika 1 KWT anggotanya 30 orang akan diperoleh pertanaman seluas 7500 m2.</p>\r\n\r\n<p>&ldquo;Ini adalah sekala kecil yang mungkin merangsang untuk dikembangkan pada skala komersial dan menjadi penopang kebutuhan pangan rumah tangga bahkan akan menjadi sumber pendapatan tiap rumah tangga dan masyarakat dalam satu Desa/Kelurahan,&rdquo; pungkasnya.</p>\r\n\r\n<p>Kemudian Imam Hakim juga mengharapkan dan menegaskan kepada KWT yang menerima Dana Alokasi Khusus ini untuk benar-benar mensyukuri atas kepercayaan yang diberikan pemerintah dengan menggunakan dana yang diserahkan secara utuh dengan sistem ditransfer ke rekening kelompok tersebut sesuai juknis dan juklah yang digariskan.</p>\r\n\r\n<p>&ldquo;Kami berharap supaya kelompok pelaksana ini juga menularkan kepada kelompok-kelompok sekitarnya baik terkait ilmu teknis budidaya maupun mendistribusi bibit yang dihasilkan sehingga semua rumah tangga akan mengolah lahan sekitar rumah menjadi sumber pangan sekaligus sumber pendapatan keluarga,&rdquo; harapnya. #DISKOMINFOTIK.NFOTIK.&nbsp;<strong><em>#DISKOMINFOTIK</em></strong></p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/a7%20(37).jpg\" /></em></strong></p>\r\n'),
(51, '60daabd78af8c.jpg', 'Pemkab Apresiasi IPMPL Pelopori Wisata Baru Bengkalis “Pantai Raja Kecik”', 4, '2021-06-02', '<p><strong>BENGKALIS</strong>&nbsp;&ndash; Pemerintah Kabupaten (Pemkab) Bengkalis mengapresiasi LSM Ikatan Pemuda Melayu Peduli Lingkungan (IPMPL) yang telah memplopori wisata baru di Negeri Junjungan bernama &ldquo;Pantai Raja Kecik&rdquo;.</p>\r\n\r\n<p>Hal itu sebagaimana disampaikan Wakil Bupati Bengkalis Bagus Santoso kala mengunjungi tempat wisata baru terletak di Desa Muntai Barat Selasa, 1 Juni 2021.</p>\r\n\r\n<p>&ldquo;Terhadap Ikatan Pemuda Melayu peduli lingkungan ini salah satu andil yang luar biasa untuk memotivasi anak-anak muda lainnya yang ada di pesisir Pulau membangun tempat wisata yang bagus ini,&rdquo; ujar Bagus Santoso kagum.</p>\r\n\r\n<p>IPMPL selain menggali potensi daerah dan upaya membuka jalan untuk memajukan perekonomian masyarakat juga membantu pemerintah menghadapi bencana abrasi dengan turut menanam mangrove.</p>\r\n\r\n<p>Dikatakan Wabup Bagus Santoso untuk menghadapi abrasi ini memang membutuhkan banyak peran dan tangan untuk menghentikannya.</p>\r\n\r\n<p>&ldquo;Ini akan habis akan anjlok ke laut kalau kita tidak ada menanganinya dalam kerjasama dan sinergisitas dari masyarakat, Pemerintah Kabupaten Bengkalis Pemerintah Provinsi Riau kemudian juga Kementerian terutama Lingkungan Hidup,&rdquo; ujarnya.</p>\r\n\r\n<p>Rencananya Badan Restorasi Gambut dan Mangrove (BRGM) bakal memberikan bantuan baik itu pendampingan juga secara fisik di Desa Muntai Barat.</p>\r\n\r\n<p>&ldquo;Ini kewenangan Pemerintah Pusat dan di provinsi kita akan terus bersinergi berkoordinasi sehingga Pulau Bengkalis ini bisa teratasi abrasinya semoga harapan kita bersama terutama masyarakat yang ada di Pulau Bengkalis, abrasi kita hentikan dengan diberikan bantuan pemecah gelombang,&rdquo; ujarnya.</p>\r\n\r\n<p>Di Negeri Junjungan lanjut Bagus Santoso ada dua yang menjadi persoalan pertama abrasi perlu mangrove dan juga pemecah gelombang sementara di daratannya kultur tanah yang mudah terbakar dilawan dengan salah satu tanaman yang tahan api yakni pohon geronggang.</p>\r\n\r\n<p>&ldquo;Dari turun-temurun dan ini sudah teruji pohon geronggang ketika kebakar dia akan hidup kembali ini kita sudah sampaikan BRGM supaya mendapatkan bantuan alokasi anggaran sehingga yang di daratan ditanam geronggang kemudian juga final sedangkan di pesisir Pulau ini adalah mudah-mudahan abrasi yang melanda Pulau akan teratasi berkat sinergitas kerjasama yang baik antara kabupaten, provinsi dan Pemerintah Pusat,&rdquo; harap Wabup.</p>\r\n\r\n<p>Sementara itu Ketua LSM Ikatan Pemuda Melayu Peduli Lingkungan (IPMPL) Solihin berharap realisasi program BRGM di Wisata Pantai Raja Kecik segera terwujud.</p>\r\n\r\n<p>&ldquo;Untuk persoalan pemecah gelombang berkaitan Pulau terdepan terluar wilayah kedaulatan Indonesia itu karena sudah dihitung dari zona ekonomi eksklusif diukur dari garis pantai ke arah Tengah Apabila terjadi pergeseran arah Pantai pakai terjadinya pergeseran bila Indonesia menjadi harapan kedepan menjadi bagian dari prioritas,&rdquo; lanjut Solihin.</p>\r\n\r\n<p>Dengan keindahan didukung keindahan alam, wisata Pantai Raja Kecik di Desa Muntai juga terdapat jembatan untuk memancing sepanjang 440 meter.</p>\r\n\r\n<p>Terlihat dihari libur masyarakat Kabupaten Bengkalis berduyun mengunjungi pantai yang juga dikelilingi mangrove.</p>\r\n\r\n<p>Disela-sela meninjau lokasi pantai, Wabup Bagus Santoso turut menyerukan ajakan mematuhi Protokol Kesehatan (Prokes) dengan menggunakan masker, jaga jarak dan cuci tangan.</p>\r\n\r\n<p>Manjumpai sejumlah masyarkat tidak mengenakan masker, Wabup yang juga Ketua Tim Penegakan Disiplin Covid-19 Kabupaten Bengkalis ini memberikan masker gratis kepada pengunjung pantai.&nbsp;<em><strong>#DISKOMINFOTIK</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210602_080000_666.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210602_080019_051.jpg\" /><img alt=\"\" src=\"https://diskominfotik.bengkaliskab.go.id/gambarbengkalis/source/ayu/APRIL/IMG_20210602_075311_342.jpg\" /></strong></em></p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv`
--

CREATE TABLE `cctv` (
  `id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cctv`
--

INSERT INTO `cctv` (`id`, `link`, `deskripsi`) VALUES
(2, 'https://www.youtube.com/embed/DgSUZR56uBI', '<p>Sei Selari - Air Putih 01</p>\r\n'),
(3, 'https://www.youtube.com/embed/QI-d_qP-qpM\" title=\"YouTube video player', '<p>Sei Selari - Air Putih 02</p>\r\n'),
(4, 'https://www.youtube.com/embed/0rkic5mNMDU', '<p>Sei Selari - Air Putih 03</p>\r\n'),
(5, 'https://www.youtube.com/embed/ul0DsWry0DU', '<p>Air Putih- Sei Selari 01</p>\r\n'),
(6, 'https://www.youtube.com/embed/DdCm5GGG52s', '<p>Air Putih- Sei Selari 02</p>\r\n'),
(7, 'https://www.youtube.com/embed/cykZhSuWDsE', '<p>Air Putih- Sei Selari 03</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `judul` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri_foto`
--

INSERT INTO `galeri_foto` (`id`, `gambar`, `judul`) VALUES
(11, '60daaf5ed049b.jpg', 'Pertama di Riau, Bupati Bengkalis Resmikan Poliklinik Tumbuh Kembang Anak'),
(12, '60daaf7307d5a.jpg', 'Bupati Bengkalis Resmikan Mushalla Al-Ikhlas Kemenag'),
(13, '60daaf7f817b6.jpg', 'Pemkab Bengkalis Dukung Pencanangan Zona Integritas Menuju WBK dan WBBM Kejaksaan'),
(14, '60daaf89eaa1d.jpg', 'Bupati Kasmarni Isi Talksow The Power of Women'),
(15, '60daaf93d3dd2.jpg', 'Audiensi dan Temu Ramah, Kedepan Bagus Harapkan 1 Desa 1 Penyuluh Lapangan'),
(16, '60daaf9e6d8c5.jpg', 'Pemkab Bengkalis Apresiasi Masyarakat Pambang Baru'),
(17, '60dab259d7db2.jpg', 'Sidang Paripurna Penyampaian LKPJ Akhir tahun anggaran 2020, oleh Bupati Bengkalis,'),
(18, '60dab2642588c.jpg', 'Bupati Bengkalis Buka Rakor Penanggulangan Bencana Alam'),
(19, '60dab27454a5c.jpg', 'Bupati Bengkalis Kasmarni mengukuhkan Pengurus PAUD Holistik Integratif Kabupaten Bengkalis'),
(20, '60dab27fd55cf.jpg', 'Bupati Kasmarni Ambil Sumpah Janji Anggota BPD'),
(21, '60dab28960ba9.jpg', 'Bupati Kasmarni Buka Turnamen Futsal Forwari CUP II'),
(22, '60dab2922b032.jpg', 'Ketua TP PKK dan DWP Bengkalis Terima Vaksinasi Covid-19'),
(23, '60dab29f50f83.jpg', 'DPRD Gelar Rapat Paripurna Penyampaian Pidato Bupati Bengkalis'),
(24, '60dab2a7a4b88.jpg', 'Bupati Kasmarni Pimpin Deklarasi Komitmen Bengkalis Tangani Stunting'),
(25, '60dab2b0d721c.jpg', 'Bupati Kasmarni Terima Kunjungan KP2KP Cabang Duri, Senin 8 Maret 2021'),
(26, '60dab2b8e8c84.jpg', 'Semangati Petugas, Kapolda Riau Ikut Langsung Padamkan Api'),
(27, '60dab2c12cffe.jpg', 'Perdana, Bupati Bengkalis Panen Padi di Penangkaran Siak Kecil'),
(28, '60dab2c908ac1.jpg', 'Pemkab Bengkalis Dukung Ujicoba Batu Pemecah Gelombang di Desa Muntai Barat'),
(29, '60dab2d4740c0.jpg', 'Musrenbang Pinggir, Kasmarni Minta Perangkat Daerah Sinergikan Usulan Hingga Desa'),
(30, '60dab2e1174af.jpg', 'Wakil bupati Bagus Santoso Ikut Padamkan Karhutla');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id` int(11) NOT NULL,
  `video` varchar(225) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri_video`
--

INSERT INTO `galeri_video` (`id`, `video`, `judul`) VALUES
(9, '60dab4583dada.mp4', 'Ucapan Bupati Bengkalis Hari Ulang Tahun Ke-74 RI'),
(10, '60dab466b980a.mp4', 'Ucapan Hari Jadi Ke-508 Bengkalis || Ketua DPRD Bengkalis'),
(11, '60dab48443055.mp4', 'Ucapan Idul Adha Bupati Bengkalis 1440 H 2019 M'),
(12, '60dab495a8648.mp4', 'Pj. Bupati Bengkalis H. Syahrial Abdi “SELAMAT HARI JADI KE-30 RIAU POS'),
(13, '60dab4a289ecf.mp4', 'Keseruan Yel-yel Paskibraka Kabupaten Bengkalis 2019'),
(14, '60dab4b236e63.mp4', 'Indahnya Roro Bengkalis Dilihat dari Atas Menggunakan Drone');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `judul`, `isi`) VALUES
(3, 'Nama Kabupaten', '<p>Bengkalis</p>\r\n'),
(4, 'Luas Wilayah', '<p>6.973,00&nbsp;km&sup2;</p>\r\n'),
(5, 'Jumlah Penduduk', '<p>593.397 jiwa</p>\r\n'),
(6, 'Bupati', '<p>Kasmarni</p>\r\n'),
(7, 'Wakil Bupati', '<p>H Bagus Santoso</p>\r\n'),
(8, 'Alamat Kantor Bupati', '<p>Jalan A. Yani, Bengkalis, Bengkalis Kota, Kec. Bengkalis, Kabupaten Bengkalis, Riau</p>\r\n'),
(9, 'Nama Provinsi', '<p>Riau</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL,
  `target` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `link`, `target`) VALUES
(12, 'Kabupaten Bengkalis', 'https://bengkaliskab.go.id/view/opd/kabupaten-bengkalis', '_blank'),
(13, 'Sekretariat Daerah', 'https://bengkaliskab.go.id/view/opd/sekretariat-daerah', '_blank'),
(14, 'Sekretariat DPRD', 'https://bengkaliskab.go.id/view/opd/sekretariat-dprd', '_blank'),
(15, 'Inspektorat', 'https://bengkaliskab.go.id/view/opd/inspektorat', '_blank'),
(16, 'Pejaba Pimpinan Tinggi Pratama', 'https://bengkaliskab.go.id/view/opd/pejabat-pimpinan-tinggi-pratama', '_blank'),
(17, 'Anggota Dewan', 'https://bengkaliskab.go.id/view/opd', '_blank'),
(18, 'Badan Perencanaan Pembangunan Daerah', 'https://bengkaliskab.go.id/view/opd/badan-perencanaan-pembangunan-daerah', '_blank'),
(19, 'Badan Kepegawaian Pendidikan Dan Pelatihan', 'https://bengkaliskab.go.id/view/opd/badan-kepegawaian-pendidikan-dan-pelatihan', '_blank'),
(20, 'Badan Penanggulangan Bencana Daerah', 'https://bengkaliskab.go.id/view/opd/badan-penanggulangan-bencana-daerah', '_blank'),
(21, 'Badan Penelitian Dan Pengembangan', 'https://bengkaliskab.go.id/view/opd/badan-penelitian-dan-pengembangan', '_blank'),
(22, 'Badan Kesatuan Bangsa Dan Politik', 'https://bengkaliskab.go.id/view/opd/badan-kesatuan-bangsa-dan-politik', '_blank'),
(23, 'Badan Pendapatan Daerah', 'https://bengkaliskab.go.id/view/opd/badan-pendapatan-daerah', '_blank'),
(24, 'Badan Pengelolaan Keuangan Dan Aset Daerah', 'https://bengkaliskab.go.id/view/opd/badan-pengelolaan-keuangan-dan-aset-daerah', '_blank'),
(25, 'Dinas Ketahanan Pangan', 'https://bengkaliskab.go.id/view/opd/dinas-kependudukan-dan-ketahanan-pangan', '_blank'),
(26, 'Dinas Pendidikan', 'https://bengkaliskab.go.id/view/opd/dinas-pendidikan', '_blank'),
(27, 'Dinas Kesehatan', 'https://bengkaliskab.go.id/view/opd/dinas-kesehatan', '_blank'),
(28, 'Dinas Komunikasi Informatika Dan Statistik', 'https://bengkaliskab.go.id/view/opd/dinas-komunikasi-informatika-dan-statistik', '_blank'),
(29, 'Dinas Pemberdayaan Masyarakat Dan Desa', 'https://bengkaliskab.go.id/view/opd/dinas-pemberdayaan-masyarakat-dan-desa', '_blank'),
(30, 'Dinas Pemberdayaan Perempuan Dan Perlindungan Anak', 'https://bengkaliskab.go.id/view/opd/dinas-pemberdayaan-perempuan-dan-perlindungan-anak', '_blank'),
(31, 'Dinas Lingkungan Hidup', 'https://bengkaliskab.go.id/view/opd/dinas-lingkungan-hidup', '_blank'),
(32, 'Dinas Perpustakaan Dan Kearsipan', 'https://bengkaliskab.go.id/view/opd/dinas-perpustakaan-dan-kearsipan', '_blank'),
(33, 'Dinas Penanaman Modal Dan Pelayanan Terpadu Satu Pintu', 'https://bengkaliskab.go.id/view/opd/dinas-penanaman-modal-dan-pelayanan-satu-pintu', '_blank'),
(34, 'Dinas Kependudukan Dan Pencatatan Sipil', 'https://bengkaliskab.go.id/view/opd/dinas-kependudukan-dan-pencatatan-sipil', '_blank'),
(35, 'Dinas Pengendalian Penduduk Dan Keluarga Berencana', 'https://bengkaliskab.go.id/view/opd/dinas-pengendalian-penduduk-dan-keluarga-berencana', '_blank'),
(36, 'Dinas Perhubungan', 'https://bengkaliskab.go.id/view/opd/dinas-perhubungan', '_blank'),
(37, 'Dinas Sosial', 'https://bengkaliskab.go.id/view/opd/dinas-sosial', '_blank'),
(38, 'Dinas Koperasi, Usaha Kecil Dan Menengah ', 'https://bengkaliskab.go.id/view/opd/dinas-koperasi-usaha-mikro-kecil-dan-menengah', '_blank'),
(39, 'Dinas Pekerjaan Umum Dan Penataan Ruang', 'https://bengkaliskab.go.id/view/opd/dinas-pekerjaan-umum-dan-penataan-ruang', '_blank'),
(40, 'Dinas Perumahan Pemukiman Dan Pertanahan', 'https://bengkaliskab.go.id/view/opd/dinas-perumahan-pemukiman-dan-pertanahan', '_blank'),
(41, 'Dinas Pariwisata, Kebudayaan, Kepemudaan Dan Olahraga', 'https://bengkaliskab.go.id/view/opd/dinas-pariwisata-kebudayaan-kepemudaan-dan-olahraga', '_blank'),
(42, 'Perdagangan Dan Perindustrian', 'https://bengkaliskab.go.id/view/opd/dinas-perdagangan-dan-perindustrian', '_blank'),
(43, 'Dinas Perikanan', 'https://bengkaliskab.go.id/view/opd/dinas-kelautan-dan-perikanan', '_blank'),
(44, 'Dinas Pertanian', 'https://bengkaliskab.go.id/view/opd/dinas-pertanian', '_blank'),
(45, 'Dinas Pemadam Kebakaran', 'https://bengkaliskab.go.id/view/opd/dinas-pemadam-kebakaran', '_blank'),
(46, 'Dinas Tenaga Kerja Dan Transmigrasi', 'https://bengkaliskab.go.id/view/opd/dinas-tenaga-kerja-dan-transmigrasi', '_blank'),
(47, 'Satuan Polisi Pamong Praja', 'https://bengkaliskab.go.id/view/opd/kantor-satuan-polisi-pamong-praja', '_blank'),
(48, 'RSUD Bengkalis', 'https://bengkaliskab.go.id/view/opd/rsud-bengkalis', '_blank'),
(49, 'RSUD Mandau', 'https://bengkaliskab.go.id/view/opd/rsud-mandau', '_blank'),
(50, 'Kecamatan Bengkalis', 'https://bengkaliskab.go.id/view/opd/kecamatan-bengkalis', '_blank'),
(51, 'Kecamatan Bantan', 'https://bengkaliskab.go.id/view/opd/kecamatan-bantan', '_blank'),
(52, 'Kecamatan Bukit Batu', 'https://bengkaliskab.go.id/view/opd/kecamatan-bukit-batu', '_blank'),
(53, 'Kecamatan Siak Kecil', 'https://bengkaliskab.go.id/view/opd/kecamatan-siak-kecil', '_blank'),
(54, 'Kecamatan Rupat', 'https://bengkaliskab.go.id/view/opd/kecamatan-rupat', '_blank'),
(55, 'Kecamatan Rupat Utara', 'https://bengkaliskab.go.id/view/opd/kecamatan-rupat-utara', '_blank'),
(56, 'Kecamatan Mandau', 'https://bengkaliskab.go.id/view/opd/kecamatan-mandau', '_blank'),
(57, 'Kecamatan Pinggir', 'https://bengkaliskab.go.id/view/opd/kecamatan-pinggir', '_blank'),
(58, 'Kecamatan Bandar Laksamana', 'https://bengkaliskab.go.id/view/opd/kecamatan-bandar-laksamana', '_blank'),
(59, 'Kecamatan Talang Muandau', 'https://bengkaliskab.go.id/view/opd/kecamatan-talang-muandau', '_blank'),
(60, 'Kecamatan Bathin Solapan', 'https://bengkaliskab.go.id/view/opd/kecamatan-bathin-solapan', '_blank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id`, `judul`) VALUES
(1, 'Daerah'),
(2, 'Budaya'),
(3, 'Ekonomi'),
(4, 'Pemerintahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_masuk`
--

CREATE TABLE `kontak_masuk` (
  `id` int(11) NOT NULL,
  `tipe` varchar(225) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner`
--

CREATE TABLE `kuliner` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `rating` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kuliner`
--

INSERT INTO `kuliner` (`id`, `gambar`, `nama`, `lokasi`, `rating`) VALUES
(1, '60d5f90c4ad45.jpg', 'Lempuk Durian Bengkalis', '', '50'),
(2, '60d5f9158a7d0.jpg', 'Ubi Sambal Teri', '', '50'),
(3, '60d5f921a1855.jpg', 'Mie Sagu', '', '50'),
(4, '60d5f93198670.jpg', 'Sempolet', '', '50'),
(5, '60d5f8feb308a.jpg', 'Bubur Lambuk Khas Bengkalis', '', '50'),
(6, '60d5f8f65e437.jpg', 'Gulai Ikan Patin', '', '50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemantauan`
--

CREATE TABLE `pemantauan` (
  `id` int(11) NOT NULL,
  `nik` char(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `usia` int(11) NOT NULL,
  `waktu_pantau` date NOT NULL,
  `suhu` varchar(11) NOT NULL,
  `batuk` enum('Ya','Tidak') NOT NULL,
  `flu` enum('Ya','Tidak') NOT NULL,
  `sesak` enum('Ya','Tidak') NOT NULL,
  `keluhan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemantauan`
--

INSERT INTO `pemantauan` (`id`, `nik`, `nama`, `usia`, `waktu_pantau`, `suhu`, `batuk`, `flu`, `sesak`, `keluhan`) VALUES
(0, '34232', 'NUR AZIAH, S.Pd', 15, '0000-00-00', '25', 'Ya', 'Ya', 'Ya', '<p>pusing</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintahan`
--

CREATE TABLE `pemerintahan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `ttl` varchar(225) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `pendidikan_terakhir` varchar(225) NOT NULL,
  `sk_pengangkatan` varchar(225) NOT NULL,
  `periode_jabatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemerintahan`
--

INSERT INTO `pemerintahan` (`id`, `gambar`, `nama`, `ttl`, `jabatan`, `pendidikan_terakhir`, `sk_pengangkatan`, `periode_jabatan`) VALUES
(4, '60d5ecba9301d.png', 'Kasmarni,S.Sos,MMP', 'Pekanbaru, 14 November 1974', 'Bupati', '', '', '2021-2024'),
(5, '60d5ecf1a2971.jpg', 'H Bagus Santoso', 'Boyolali, 12 Februari 1969', 'Wakil Bupati', '', '', '2021-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendataan`
--

CREATE TABLE `pendataan` (
  `id` int(11) NOT NULL,
  `nik` char(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `asal_pemudik` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `keluhan` varchar(225) NOT NULL,
  `wajib_pantau` enum('Ya','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendataan`
--

INSERT INTO `pendataan` (`id`, `nik`, `nama`, `usia`, `jenis_kelamin`, `alamat`, `asal_pemudik`, `status`, `keluhan`, `wajib_pantau`) VALUES
(3, '34232', 'NUR AZIAH, S.Pd', 15, 'Perempuan', 'BANTAN TENGAH', 'grege', 'Positif', 'rgerge', 'Ya'),
(4, '34232scwd', 'MUADIB,S.Pd', 15, 'Perempuan', 'BANTAN TENGAH', 'grege', 'Positif', 'rgerge', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `nama_lengkap`, `password`) VALUES
(2, 'admin', 'Muhammad Hasbi Assidiqqi', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Hasbi Assidiqqiscsc', 'scsc', '198cfac151d0dbbfefbb4d6c95bdd84d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penginapan`
--

CREATE TABLE `penginapan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penginapan`
--

INSERT INTO `penginapan` (`id`, `gambar`, `nama`, `lokasi`, `rating`) VALUES
(1, '60dac6446ef06.png', 'Hotel Berlian', '', 40),
(2, '60dac65401db3.png', 'Hotel Panorama Bengkalis', '', 40),
(3, '60dac660056a9.png', 'Hotel Surya Bengkalis', '', 40),
(4, '60dac66e2b480.png', 'Hotel Mahendra', '', 40),
(5, '60dac67841dfb.png', 'Twin Hotel Bengkalis', '', 40),
(6, '60dac6822ae8f.png', 'Pantai Marina Hotel', '', 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id`, `gambar`, `isi`) VALUES
(3, '60d5f628b5d5d.jpg', '<p>Berdasarkan Undang-Undang Nomor 12 Tahun 1956 (Lembaran Negara Nomor 25 Tahun 1956), Kabupaten Bengkalis dengan ibukotanya Bengkalis dipimpin oleh seorang Bupati Kepala Daerah Tingkat II. Kabupaten Bengkalis merupakan wilayah kabupaten yang terluas nomor satu di Provinsi Riau.</p>\r\n\r\n<p>Provinsi Riau itu sendiri termasuk salah satu provinsi paling kaya di Indonesia. Kekayaannya meliputi hasil pertambangan minyak bumi, batu bara, hutan, hasil-hasil perkebunan seperti kelapa sawit, karet, hasil-hasil laut serta sungai, dan sebagainya. Sedangkan sumbangan Propinsi Riau ke pusat setiap tahunnya hampir mencapai jumlah 59,6 triyun (Salamm, Alfitra, 2001;13).</p>\r\n\r\n<p>Provinsi Riau menjadi salah satu provinsi andalan untuk pemasukan kas negara. Salah satunya, untuk minyak saja Riau menyumbang sekitar 50% produksi nasional. Bahkan, Riau termasuk tiga propinsi terkaya di Indonesia dengan pendapatan 3,7 trilyun, di bawah Jawa Barat (5,2 trilyun), dan Jatim (4,3 trilyun) (Tempo, 9 April 2000).</p>\r\n\r\n<p>Bengkalis pada masa lalu memegang peranan penting dalam sejarah. Berdasarkan cerita rakyat yang ada, dimulai pada tahun 1645, Bengkalis hanya merupakan kampung nelayan. Berdasarkan sumber sejarah, pada tahun 1678, daerah ini menjadi tempat pertemuan pedagang-pedagang Melayu, Jawa, Arab yang membawa barang dagangannya bersama dengan pedagang-pedagang dari Palembang, Jambi, Indragiri, Aceh, Kedah, Perak, Kelong, Johor, Penang, Petani, Siam, Kamboja, Kocin, Cina dan orang-orang Minangkabau yang mendiami Sumatera dan datang ke sana untuk mengambil garam, beras, dan juga ikan (terubuk) yang banyak ditangkap oleh orang-orang Selat.</p>\r\n\r\n<p>Dalam perkembangannya, pada tahun 1717 Bengkalis dijadikan sebagai baris penyerangan terhadap Johor oleh Raja Kecil. Di Bengkalis inilah, Raja Kecil menyusun kekuatan angkatan perang. Selanjutnya, Raja Kecil mendirikan Kerajaan Buantan yang kemudian disebut Kerajaan Siak pada tahun 1723. Raja Kecil bergelar Sultan Abdul Jalil Rahmat Syah (1723-1748). Daerah kekuasaannya meliputi Perbatinan Gasib, Perbatinan Senapelan, Perbatinan Sejaleh, Perbatinan Perawang, Perbatinan Sakai, Perbatinan Petalang, Perbatinan Tebing Tinggi, Perbatinan Senggoro, Perbatinan Merbau, Perbatinan Rangsang, Kepenghuluan Siak Kecil, Kepenghuluan Siak Besar, Kepenghuluan Rempah dan Kepenghuluan Betung.</p>\r\n\r\n<p>Saat didirikannya Kerajaan Siak tersebut Bengkalis dan Bukit Batu dijadikan pos terdepan dalam rangka pertahanannya dengan pimpinan Datuk Laksamana Raja Di Laut. Datuk Laksamana Raja Dilaut membangun armada yang kuat serta membuat kapal-kapal perang yang dilengkapi dengan senjata yang didatangkan dari negara-negara Islam.</p>\r\n\r\n<p>Selanjutnya, saat Bengkalis berada pada kekuasaan Belanda, Bengkalis dijadikan ibukota Keresidenan Sumatera Timur. Namun demikian, Belanda kemudian memindahkan ibukota keresidenan dari Bengkalis ke Medan. Sesudah perpindahan tersebut Bengkalis dijadikan ibukota Afdeling Bengkalis sampai akhir kekuasaan Belanda di Indonesia. Sedangkan saat pendudukan Jepang, Bengkalis dijadikan ibukota Bengkalis Bun.</p>\r\n\r\n<p>Sementara itu, perjuangan masyarakat Bengkalis untuk mempertahankan kemerdekaan mencapai puncaknya ketika Belanda berhasil menduduki Bengkalis kembali pada tanggal 30 Desember 1948. Pada saat itu, Belanda mendapat perlawanan yang cukup sengit dari masyarakat Bengkalis.<br />\r\n<br />\r\n<strong>Gambaran Umum Kabupaten Bengkalis</strong></p>\r\n\r\n<p>Kabupaten Bengkalis meliputi bagian pesisir Timur Pulau Sumatera antara 2&deg;30! Lintang Utara (LU), -0&deg;17 Lintang Utara atau 100&deg;52 Bujur Timur (BT), -102&deg;52 Bujur Timur (BT), -102&deg; Bujur Timur. Luas wilayah Kabupaten Bengkalis adalah 30.646.83 km&sup2;, meliputi pulau-pulau (daratan) dan lautan. Kabupaten Bengkalis pusat pemerintahannya dan menjadi ibukotanya adalah Kota Bengkalis dan terletak di Pulau Bengkalis. Wilayah adminsitrasinya sebagian diantaranya meliputi wilayah di Pulau Sumatera seperti Duri, Dumai. Jarak antara Duri &ndash; Bengkalis 106 kilometer, Dumai- Bengkalis 78 kilometer, kedua wilayah tersebut berada di Pulau Sumatera yang dipisahkan oleh laut.</p>\r\n\r\n<p>Sarana transposrtasi dari Pulau Sumatera ke daerah ini dapat menggunakan kapal penumpang (ferry) yakni dari Dumai, Pakning, dan Pekanbaru. Selain itu masih terdapat kapal Roro yakni kapal yang dapat mengangkut barang dan kenderaan roda empat. Artinya, bahwa untuk menuju ke Bengkalis sebagai pusat pemerintahan Kabupaten Bengkalis tidak ada kesulitan, hanya saja jadwalnya masih terbatas karena kapal penumpang maupun barang hanya satu sampai dua kali saja sehari. Dengan demikian para penumpang menunggu kapal sesuai jadwal yang sudah ditentukan.</p>\r\n\r\n<p>Wilayah Kabupaten Bengkalis di sebelah Utara berbatasan dengan Selat Malaka, sebelah Selatan berbatasan dengan Kabupaten Kampar, sebelah Barat berbatasan dengan Propinsi Sumatera Utara, dan sebelah Timur berbatasan dengan Kabupaten Kepulauan Riau. Daerah Bengkalis ini beriklim tropis dengan jumlah curah hujan antara 773-1734 mm/tahun dengan temperatur udara berkisar antara 26&deg;-32&ordm;C. Musim kemarau di daerah ini pada umumnya terjadi pada bulan Pebruari sampai dengan Agustus, sedangkan musim penghujan pada bulan September sampai dengan Januari, dengan jumlah curah hujan tertinggi dalam tahun sekitar 1734 mm/tahun dan jumlah hujan terendah adalah 773 mm/tahun.</p>\r\n\r\n<p>Kabupaten Bengkalis, wilayah administrasinya sebagian besar berada di Pulau Sumatera, namun ibukotanya berada di Pulau Bengkalis. Sehubungan dengan itu, Kota Bengkalis senantiasa di kunjungi orang-orang dari Pulau Sumatera untuk urusan pemerintahan (surat-surat izin dan lain sebagainya). Kota Bengkalis sendiri terkenal dengan sebutan Kota Terubuk. Terubuk merupakan jenis ikan yang sangat terkenal terutama pada masa Datuk Laksamana, sedangkan pada saat ini semakin sulit ditemukan. Harganya yang mahal membuat para pemburu ikan berlomba-lomba mencarinya sehingga sangat mengancam perkembangan ikan ini.</p>\r\n\r\n<p>Jarak kota Bengkalis dengan ibukota Provinsi (Pekanbaru) sejauh 173 km. Untuk mencapai ibukota provinsi digunakan dua jalur transportasi yaitu laut dan darat, dengan jarak tempuh sekitar 4 jam perjalanan. Jalur laut ditempuh melalui Selat Bengkalis dan terus melalui Sungai Siak. Sedangkan jalus darat ditempuh melalui Selat Bengkalis menuju Dumai atau dapat juga melalui Buton atau Pakning dan dilanjutkan menggunakan transportasi darat ke Pekanbaru.</p>\r\n\r\n<p>Topografi wilayah ini cukup unik, yakni bagian tepi pantai pada umumnya lebih tinggi daripada bagian tengahnya. Tanah di pinggir pantai berupa tanah liat lumpur, sedangkan bagaian tengahnya cukup rendah yang terdiri dari rawa-rawa. Apabila musim hujan daerah Bengkalis tergenang air karena air mengalir ke bagian tengah. Pulau Bengkalis sering diibaratkan sebuah piring. Pada bagian sisinya lebih tinggi sedangkan bagian tengahnya lebih rendah (bentuk pulau Bengkalis cekung). Pada bagian tengah pulau ini dilapisi oleh gambut dengan kedalaman mencapai 2 meter. Selain itu juga terdapat hutan rawa yang luasnya semakin lama semakin berkurang.</p>\r\n\r\n<p><strong>Sosial Budaya</strong></p>\r\n\r\n<p>Kota Bengkalis sebagai ibukota Kabupaten Bengkalis merupakan daerah yang baru saja berkembang. Namun secara historis Bengkalis pernah memegang peranan penting dalam sejarah. Sehubungan dengan itu, di Kota Bengkalis ini banyak ditemukan bangunan-bangunan bersejarah dan rumah-rumah tua walaupun banyak diantaranya sudah punah maupun tidak utuh lagi. Dalam perkembangannya Kota Bengkalis dihuni oleh berbagai suku bangsa terutama Melayu, Cina, Jawa, Minang, dan Batak disamping suku bangsa lainnya yang merupakan penduduk minoritas.</p>\r\n\r\n<p>Masyarakat Melayu Bengkalis beragama Islam dan dalam kesehariannya identik dengan budaya Islam. Upacara-upacara tradisionalnya cenderung dengan tradisi Islam dan juga nilai-nilai kehidupan bernuansa Islami. Sehubungan dengan itu dalam falsafah Melayu disebutkan bahwa &rdquo;Melayu adalah Islam, apabila tidak Islam berarti tidak Melayu&rdquo;.<br />\r\n<br />\r\n<strong>Asal usul Bengkalis</strong></p>\r\n\r\n<p>Menurut Jasman K (tt) dari berbagai versi oral yang dikumpulkannya dan menurutnya dari sebuah buku Kisah Pelayaran Raja Kecil Ke Johor dan sebuah naskah yang berjudul &rdquo;Asal &ndash;muasal Nama Terubuk&rdquo; dan sebuah naskah Syair Ikan Terubuk huruf Jawi, maka dibuatnyalah sebuah kisah sejarah seperti berikut ini :</p>\r\n\r\n<p>Bengkalis bermula setelah pudarnya Kerajaan Gasib pada abad ke-17 atau sekitar 1625. Kerajaan Gasib ini terletak di hulu Sungai Gasib di sebelah Selatan Buatan. Muara Sungai Gasib menuju ke Sungai Jantan Siak. Sesudah keruntuhan Kerajaan Gasib, daerah ini seperti ditimpa bala bencana. Daerah ini tidak lagi punya pemimpin, dan berlakulah &rdquo;hukum rimba&rdquo;, siapa yang kuat maka dialah yang menjadi raja. Kekosongan pucuk kekuasaan kerajaan ini kemudian diisi oleh datuk-datuk yang menjadi tempat berpegang. Tersebutlah Datuk Bandar di Bengkalis dan Datuk Bandar di Sabak Aur. Para datuk ini diceritakan konon datang dari Johor (Elmustian, 2003: 36).</p>\r\n\r\n<p>Bengkalis ketika itu belumlah bernama Bengkalis, seperti halnya kejadian sebuah negeri Melayu dalam tradisi Melayu. Disebut orang Kuala Batanghari namanya. Di hulu Kuala Batanghari ini terdapat tanah busut di sebuah tasik kecil. Karena itu pulaulah orang di daerah ini mengenal tanah tumpukan ini dengan sebutan &rdquo;Pulau Sembilan&rdquo;. Menurut Jasman K (tt) seorang guru SR dan ditulisnya pada 27 September 1980 lagi &ndash; tanpa menyebutkan sumber &ndash; nama Kuala Batanghari dan Pulau Sembilan kemudian kelak berganti nama menjadi Bengkalis. Peristiwa pergantian nama ini bermula setelah menghilirnya perangkat Raja Kecil yang diiringi dengan empatpuluh orang awak lancang dan emp[at orang kepala suku, yaitu suku Limapuluh, suku Tanah Datar, suku Pesisir, dan ditambah satu suku lagi dari suku Limapuluh juga. Konon dalam Sejarah Melayu Raja Kecil memang dibesarkan di Ranah Minang.</p>\r\n\r\n<p>Perangkatan Raja Kecil menghiliri sungai Jantan yang kemudian nama sungai ini bernama Sungai Siak. Rombongan Raja Kecil ini singgah di Sabak Aur (Sungai Apit sekarang ini) kemudian singgah pula di Kuala Batanghari. Di Sabak Aur ini konon pernah terjadi perselisihan antara rombongan Raja Kecil dengan Datuk Bandar Sabak Aur. Perselisihan berawal dari Datuk Sabak Aur meminta cukai lalu lintas sungai kepada rombongan &ndash; yang tidak diketahuinya itu yang ternyata &ndash; Raja Kecil yang telah merapatkan lancangnya di jembatan di Sabak Aur.</p>\r\n\r\n<p>Raja Kecil mau tidak mau memotong puntel pundi-pundinya yang terbuat dari emas. Lalu puntel pundi-pundi itu diterima oleh pengawal Datuk Sabak Aur. Sambil menyerahkan puntel pundi-pundinya konon Raja Kecil berkata &ldquo;akan kucucup juga darahnya di kemudian hari nanti&rdquo;. Ternyata konon apa yang diucapkannya itu berlaku dan menurut Jasman K mempunyai kisah tersendiri. Kisah ini masih gelap untuk diteroka. Lancang pembawa perangkatan @rombongan Raja Kecil terus menghilir ke muara sungai. Awak lancang menyebut sejumlah nama hutan, nama tanjung, nama pulau, dan nama sungai-sungai yang dilalui. Tersebutlah Selat Pulau Padang. Selain itu, juga disebut Sungai Selari, Tanjung Ja, dan banyak lagi nama lain.</p>\r\n\r\n<p>Jasman K (tt) selanjutnya mengisahkan, menurut adat kebiasaan setempat, bahwa setiap orang yang datang ke suatu tempat baru yang dituju di wilayah ini harus tunduk pada adat tuan rumah. Peraturan adat itu antara lain belum boleh menyauk air sungai atau naik ke darat, sebelum terlebih dahulu mengadakan surah-bersurah dan memperoleh izin dari penguasa di tempat ini. Rupanya tanpa disangka adat masyarakat ini juga diberlakukan terhadap rombongan Raja Kecil ini, yaitu belum boleh menyauk air sungai apalagi naik ke darat, sebelum surah-bersurah dan keizinan dari tuan rumah. Ketibaan macang perangkatan Raja Kecil menjadikan pembicaraan orang ramai di Bandar Kuala Batanghari. Karena orang di dalam lancang itu berbahasa sekerat-kerat yang tak dapat dipahami oleh pengawal pantai. Apa yang didengar oleh pengawal pantai (bahasa orang di dalam lancang itu) dihafal baik-baik, supaya mudah menyampaikannya kepada Tuk Bandar.</p>\r\n\r\n<p>Setelah dapat disimak ucapan bahasa atau kata-kata orang yang di dalam lancang itu lalu disampaikan oleh pengawal kepada Datuk Bandar Jamal, orang yang memegang tampuk kekuasaan di Kuala Batanghari. Terjadilah surah-surahan antara Datuk Bandar Jamal dengan Raja Kecil dan orang-orang besar di dalam lancang. Raja Kecil memperkenalkan dirinya lalu menyebutkan namanya. Mendengar nama Raja Kecil itu tak syak lagi bagi Datuk Bandar Jamal, bahwa itulah keturunan Sultan Johor. Datuk Bandar pun mempersilahkan Raja Kecil dan orang-orang besar dalam lancang untuk sudi naik ke darat dan tinggal beberapa lamanya di Kuala Batanghari.</p>\r\n\r\n<p>Konon setelah beberapa lama lancang perangkatan Raja Kecil berada di Kuala Batanghari banyak sekali hal-hal yang timbul dan ditanyakan kepada Raja Kecil. Seperti ketika mandi di kuala sungai banyak ikan-ikan berebut makanan. Lalu ditanyakan nama ikan itu. Dijawab oleh Raja Kecil dengan singkat, bahwa ikan itu bernama ikan &rdquo;teru&rdquo; menangkapnya harus dengan tali &rdquo;pu&rdquo;, sisiknya tidak boleh dikikis. Jika ingin dikikis juga hendaklah jangan dipaksakan. Kemudian, ditanyakan lagi nama tanjung di seberang, di sebelah Barat Laut Kuala Batanghari. Dijawab oleh Raja, bahwa tanjung itu bernama Tanjung &rdquo;ja&rdquo;. Raja Kecil menyarankan, supaya tepat sebaiknya ditanyakan lagi kepada Bunda Dalam di Johor, orang yang dikenal pandai menafsirkan makna-makna yang tersirat.</p>\r\n\r\n<p>Kelak, setelah Raja Kecil menjadi Sultan Johor, maka semua yang tumbuh dan setiap peristiwa yang terjadi di sepanjang pelayaran yang pernah dialami di Kualabatanghari, ditanyakan kepada Bunda Dalam. Satu per satu dieja dan diartikan oleh Bunda Dalam, misalnya tentang &rdquo;ikan teru&rdquo; berarti &rdquo;ikan terubuk&rdquo;. Ikan terubuk asal-usul induknya dari ikan Bengkalis hidup di sungai, begitu juga bentuknya tidak besar. Konon hanya di daerah ini saja yang ada ikan ini di tempat lain (mungkin ada tapi) lain pula namanya. Menangkap ikan terubuk ini hendaklah dengan tali purun dan itulah disebut tali &rdquo;Pu&rdquo; (dan nama &rdquo;Pu&rdquo; juga nama pukat). Menangkap terubuk itu hendaklah dengan pukat yang menggunakan tali purun. Menurut kepercayaan masyarakat setempat, ikan tersebut tidak boleh diperdagangkan.</p>\r\n\r\n<p>Adapun nama kayu &rdquo;beng&rdquo; berasal dari nama kayu Bengkalis. Kayu itu konon cuma ada hidup di tempat itu. Batangnya hampir mirip dengan batang manggis, tetapi tidak berbuah. Dan begitu juga tentang nama Tanjung &rdquo;ja&rdquo; itu artinya Tanjung Jati letaknya di ujung pulau di sebelah matahari turun. Setelah mendapat arti makna dan tunjuk-ajar dari Bunda Dalam, lalu Sultan Johor yang ketika itu dipegang oleh Raja Kecil, mengirim utusan ke Kuala Batanghari menyampaikan kepada Datuk Bandar Jamal bahwa sejak perutusan itu sampai memberi khabar hendaklah berubah nama Kuala Batanghari menjadi Bengkalis, di dalam sungai itu ada hidup Ikan Bengkalis dan ditepi sungai itu ada juga hidup batang Bengkalis yang berasal dari sungai itu juga. Begitu juga nama pulau itu sekaligus diberi pula nama selatnya dengan sebutan yang sama yaitu Pulau Bengkalis dan Selat Bengkalis. Demikian penjelasan Djasman K, (tt).<br />\r\n<br />\r\n<strong>Bengkalis Mulai Disebut Dalam Sejarah</strong><br />\r\n<br />\r\nHanya beberapa tahun setelah tahun 1511, terbit sebuah buku tentang Melaka, yaitu The Suma Oriental. Penulisnya, Tome Pires, yang berbangsa Portugis, memberikan suatu gambaran yang jelas, khusus tentang masyarakat masyarakat Melaka dari tahun 1400 sehingga tahun 1515, walaupun tulisannya berorientasi dari sudut pandangannya. Kisah sejarah tersebut dibuat ketika beliau berada di kota kosmopolitan Melaka dari tahun 1512 hingga tahun 1515, yaitu tahun-tahun awal penaklukan dan pendudukan (bangsa Portugis Eropah yang pertama ini di Melaka). Mungkin disebabkan Tome Pires menyaksikan sendiri suasana pada periode awal zaman peralihan, yaitu dari pendudukan Melayu ke pendudukan Portugis, maka beliau bersikap condong ke arah Portugis, dengan mengedepankan nilai-nilai asli keportugisannya, dari segi etos, agama, kepercayaan dan pandangannya tentang dunia (Muhammad Yusoff Hashim, 1990: xxv).</p>\r\n\r\n<p>Sumber Cina pada abad ke-5 dan abad ke-6 Masehi (daripada Dinasti Sung dan Dinasti Liang) menyebutkan bahwa sebuah tempat yang bernama Kan-t&rsquo;o-li yang terletak di tenggara Sumatera (tempatnya dikatakan terdapat di sekitar Jambi, bermuarakan Sungai Batang Hari. Lihat N.J. Krom, Hindoe &ndash;Javvansche Geschiedenis, hlm. 112; G. Coedes, &ldquo;A Possible Intrepretation of the Inscription of Kedukan Bukit (Palembang)&rdquo;, dalam J. Bastin and R. Roolvink, (eds), Malayan and Indonesian Studies, Kuala Lumpur, 1964).</p>\r\n\r\n<p>Untuk keperluan jalur perdagangan di Selat Malaka serta kemunculan pola perdagangan yang baru ini, Kan-t&rsquo;o-li dipastikan berhasil untuk menguasai sebagian besar dari muara-muara sungai di sepanjang pantai timur Sumatera, hingga ke Pantai Timur dan Pantai Barat Semenanjung Tanah Melayu. Kan-t&rsquo;o-li merupakan sebuah pusat kekuasaan laut Melayu yang muncul secara langsung dari peluang sosioekonomi dan jalan perdagangan laut yang muncul ketika itu. Kelahiran Kan-t&rsquo;o-li menandakan wibawa politik dan keunggulan ekonomi Funan dan Langkasuka. Kan-t&rsquo;o-li menggantikan kedua kekuasaan ini. Kan-t&rsquo;o-lilah yang dianggap memberi jalan ke arah kemunculan Kerajaan Sriwijaya</p>\r\n\r\n<p>Sriwijaya kemudian menjadi sebuah empayar Melayu. Pada zaman puncak kekuasaannya pada abad ke-11, Sriwijaya disebut menguasai jalan perdgangan dan jalan laut yang cukup luas, yaitu dari kawasan Gerahi di timur Teluk Benggala hingga ke Selat Sunda di selatan, lalu menguasai seluruh geopolitik tradisional pantai timur Sumatera, seluruh Thai Selatan, Semenanjung Tanah Melayu dan barat laut Gugusan Kepulauan Melayu. Sriwijaya yang berpusat di Palembang, kemudian berpindah ke Jambi juga berhasil menundukkan kekuasaan setempat dan bandar-bandar pelabuhan yang lebih kecil. Proses dan pola politik serta penguasaan jalan perdagangan laut oleh Sriwijaya ini berlangsung hingga abad ke-13 (Muhammad Yusoff Hashim, 1990: 242).</p>\r\n\r\n<p>Kawasan-kawasan lain yang tidak menjadi daerah takluk (jajahan) di pantai barat dan timur Sumatera adakalanya mempunyai hubungan perdagangan dengan Melaka. Bahan-bahan eksport dari kawasan ini dihantar ke Melaka melalui pelabuhan yang menjadi daerah takluk (jajahan). Pedir contohnya, menghantar lada dan beras menerusi Pasai ke Melaka. Bengkalis membekalkan ikan kering dan ikan terubuk (Muhammad Yusoff Hashim, 1990: 245).</p>\r\n\r\n<p>Pada tahun 1678 digambarkan oleh Tuan Bort tempat tersebut sebagai berikut : Bengkalis, sebagaimana telah dihuraikan, termasuk dalam wilayah Kerajaan Johor, terletak di suatu pulau kira-kira satu mil dari pantai Sumatera, hanya merupakan perkampungan nelayan , dipimpin oleh seorang syahbandar yang mengurus semua kepentingan Johor.</p>\r\n\r\n<p>Meskipun hanya merupakan perkampungan nelayan, disana terdapat pelayaran yang ramai terdiri dari orang Melayu, Jawa dan Arab yang berkumpul untuk melakukan pembelian barang-barang dari Pantai Jawa, Palembang, Jambi, Indragiri, Aceh, Kedah, Perak, Kelang, Johor, Pahang, Patani, Siam, Kamboja, dan Kocin Cina. Bahkan, orang Minangkabau yang tinggal di Sumatera datang ke sana beramai-ramai membeli garam, beras dan juga ikan, yang banyak ditangkap pada musim-musim tertentu disana oleh orang-orang Selat, yang dengan anak istrinya tinggal di pulau-pulau dan mengembara kesana kemari-ikan tersebut mempunyai telur yang bersih, dikeringkan dan digarami serta sangat digemari oleh penduduk (Wan Ghalib, 2002: 64).<br />\r\n<br />\r\n<strong>Penutup</strong><br />\r\n<br />\r\nBengkalis merupakan daerah yang pernah memegang peranan penting dalam sejarah. Banyak terjadi berbagai peristiwa sejarah di sana. Bukti-bukti yang menunjukkan bahwa di Bengkalis banyak sekali terjadi peristiwa sejarah terlihat dari berbagai bangunan fisik yang ada, walaupun banyak yang sudah tidak utuh lagi. Dari peninggalan sejarah yang ada banyak nilai-nilai yang terkandung di dalamnya. Hal ini bisa kita peroleh setelah kita mengetahui bagaimana proses terjadinya peninggalan sejarah tersebut.<br />\r\n<br />\r\n<strong>Daftar Pustaka</strong></p>\r\n\r\n<p>Aswandi Syahri. Kota Kara Dan Situs-Situs Sejarah Bintan Lama. Dinas Pariwisata dan Kebudayaan Provinsi Kepulauan Riau.2007<br />\r\nElmustian Rahman, dkk. Syair Ikan Terubuk Tinjauan Teks, Peristiwa Kelisanan, Dan Struktur Upaya-Upaya Dialog Dengan Teks Simbolik-Romantik. Unri Press. Kerjasama Pemerintah Kabupaten Bengkalis Yayasan Peduli<br />\r\nNegeri.2003<br />\r\nHasan Junus. Sejarah Kabupaten Bengkalis Sebuah Tinjuauan Paling Dasar Serta Beberapa Makalah. Pemda Kabupaten Bengkalis.2002<br />\r\nIrza Arnyta Djafaar. Jejak Portugis Di Maluku Utara. Yogyakarta : Penerbit Ombak. Desember.2006<br />\r\nMuhammad Yusoff Hashim Ph.D. Kesultanan Melayu Melaka Kajian Beberapa Aspek Tentang Melaka Pada Abad ke-15 dan Abad ke-16 Dalam Sejarah Malaysia. Dewan Bahasa dan Pustaka. Kementerian Pendidikan Malaysia. Kuala Lumpur.1990<br />\r\nRekomendasi Ulang Tahun Bengkalis Negeri Junjungan Silaturahmi Sejarah dan Kebudayaan Melayu Serantau, Perlukah ? oleh Tenas Effendy<br />\r\nUmar Junus. Fiksyen dan Sejarah. Suatu Dialog. Dewan Bahasa dan Pustaka. Kementerian Pendidikan malaysia. Kuala lumpur. Malaysia. 1989.<br />\r\nWan Ghalib, dkk. Belanda Di Johor Dan Siak 1602-1865 Lukisan Sejarah(terjemahan) . Pemerintah Daerah Kabupaten Siak dan Yayasan<br />\r\nArkeologi Dan Sejarah &rdquo;Bina Pusaka&rdquo;. 2002</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `deskripsi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `gambar`, `deskripsi`) VALUES
(8, '60d715949abbb.png', '<p>Taman Laut Prapat Tunggal</p>\r\n'),
(10, '60d7156138914.png', '<p>Taman Pasir Bengkalis</p>\r\n'),
(11, '60da73438add0.png', '<p>Pelabuhan Bandar Laksmana penampakan dari atas</p>\r\n'),
(12, '60da735ce36cb.png', '<p>Masjid Agunf Istiqomah Bengkalis</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik_agama`
--

CREATE TABLE `statistik_agama` (
  `id` int(11) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `pria` int(11) NOT NULL,
  `wanita` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `statistik_agama`
--

INSERT INTO `statistik_agama` (`id`, `jenis`, `pria`, `wanita`, `jumlah`) VALUES
(2, 'Islam', 210412, 245055, 455467),
(3, 'Katholik', 2861, 3178, 6039),
(4, 'Kristen', 33276, 30580, 63856),
(5, 'Budha', 14108, 14188, 28296),
(6, 'Konghuchu', 64, 70, 134),
(7, 'Lainnya', 72, 111, 183);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik_pekerjaan`
--

CREATE TABLE `statistik_pekerjaan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `pria` int(11) NOT NULL,
  `wanita` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik_perkawinan`
--

CREATE TABLE `statistik_perkawinan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `pria` int(11) NOT NULL,
  `wanita` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `statistik_perkawinan`
--

INSERT INTO `statistik_perkawinan` (`id`, `jenis`, `pria`, `wanita`, `jumlah`) VALUES
(1, 'BELUM KAWIN', 27722, 32456, 60178),
(2, 'KAWIN', 16753, 17563, 34316),
(3, '	CERAI HIDUP', 6795, 3579, 10374),
(4, 'CERAI MATI', 2351, 3456, 5807);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik_umur`
--

CREATE TABLE `statistik_umur` (
  `id` int(11) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `pria` int(11) NOT NULL,
  `wanita` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `statistik_umur`
--

INSERT INTO `statistik_umur` (`id`, `jenis`, `pria`, `wanita`, `jumlah`) VALUES
(2, 'DI BAWAH 1 TAHUN', 0, 0, 0),
(3, '2	2 S/D 4 TAHUN', 0, 0, 0),
(4, '5 S/D 9 TAHUN', 72, 39, 111),
(5, '10 S/D 14 TAHUN', 2861, 2341, 5202),
(6, '15 S/D 19 TAHUN', 2772, 4362, 7134),
(7, '20 S/D 24 TAHUN', 2861, 2341, 5202),
(8, '25 S/D 29 TAHUN', 2772, 4362, 7134),
(9, '30 S/D 34 TAHUN', 2772, 2461, 5233),
(10, '	35 S/D 39 TAHUN', 5237, 2461, 7698),
(11, '40 S/D 44 TAHUN', 3541, 3769, 7310),
(12, '45 S/D 49 TAHUN', 6389, 3527, 9916),
(13, '50 S/D 54 TAHUN', 6378, 7568, 13946),
(14, '55 S/D 59 TAHUN', 8403, 9758, 18161),
(15, '60 S/D 64 TAHUN', 3261, 3421, 6682),
(16, '65 S/D 69 TAHUN', 1253, 2341, 3594),
(17, '70 S/D 74 TAHUN', 246, 241, 487),
(18, 'DI ATAS 75 TAHUN', 135, 120, 255);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilayah_administrasi`
--

CREATE TABLE `wilayah_administrasi` (
  `id` int(11) NOT NULL,
  `kecamatan` varchar(225) NOT NULL,
  `desa` int(11) NOT NULL,
  `kelurahan` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `rt` int(11) NOT NULL,
  `penduduk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wilayah_administrasi`
--

INSERT INTO `wilayah_administrasi` (`id`, `kecamatan`, `desa`, `kelurahan`, `rw`, `rt`, `penduduk`) VALUES
(2, 'Bengkalis', 28, 3, 46, 84, 19426),
(3, 'Bantan', 23, 1, 45, 73, 16436),
(4, 'Bukit Batu', 9, 1, 34, 56, 16544),
(5, 'Mandau', 9, 2, 0, 0, 0),
(6, 'Rupat', 12, 4, 0, 0, 0),
(7, 'Rupat Utara', 8, 0, 0, 0, 0),
(8, 'Siak Kecil', 17, 0, 0, 0, 0),
(9, 'pinggir', 8, 2, 0, 0, 0),
(10, 'Bandar Laksamana', 7, 0, 0, 0, 0),
(11, 'Talang Muandau', 9, 0, 0, 0, 0),
(12, 'Bathin Solapan', 13, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `rating` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id`, `gambar`, `nama`, `lokasi`, `rating`) VALUES
(1, '60d5f849decfb.jpg', 'Taman Laut Prapat Tunggal', '', '40'),
(2, '60d5f83f56928.jpg', 'Pantai Tenggayun Bengkalis', '', '40'),
(3, '60d5f856a61a3.jpg', 'Pantai Teluk Rhu', '', '40'),
(4, '60d5f82e0e728.jpg', 'Hutan Lindung Bukit Batu', '', '40'),
(5, '60d5f825354ef.jpg', 'Tasik Putri Pepuyu', '', '40'),
(6, '60d5f81275ece.jpg', 'Lapangan Pasir', '', '40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cctv`
--
ALTER TABLE `cctv`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemantauan`
--
ALTER TABLE `pemantauan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`nik`);

--
-- Indeks untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendataan`
--
ALTER TABLE `pendataan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`nik`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penginapan`
--
ALTER TABLE `penginapan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statistik_agama`
--
ALTER TABLE `statistik_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statistik_pekerjaan`
--
ALTER TABLE `statistik_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statistik_perkawinan`
--
ALTER TABLE `statistik_perkawinan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statistik_umur`
--
ALTER TABLE `statistik_umur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wilayah_administrasi`
--
ALTER TABLE `wilayah_administrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `cctv`
--
ALTER TABLE `cctv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pendataan`
--
ALTER TABLE `pendataan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penginapan`
--
ALTER TABLE `penginapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `statistik_agama`
--
ALTER TABLE `statistik_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `statistik_pekerjaan`
--
ALTER TABLE `statistik_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `statistik_perkawinan`
--
ALTER TABLE `statistik_perkawinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `statistik_umur`
--
ALTER TABLE `statistik_umur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `wilayah_administrasi`
--
ALTER TABLE `wilayah_administrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
