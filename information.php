<!-- Information Widget -->
<div class="card my-4">
    <h5 class="card-header">INFORMASI</h5>
    <div class="card-body-information">
        <div class="row">
            <?php
            $i=0;
            $koneksi = koneksiUas();
            $data = mysqli_query($koneksi, "SELECT * FROM informasi ORDER BY id DESC");
            while ($row = mysqli_fetch_array($data)){
            ?>
            <div class="col-lg-4">
                <ul class="list-unstyled mb-0">
                    <li>
                        <a href="<?= $row['link'];?>" target="<?= $row['target'];?>"><?= $row['judul'];?></a>
                    </li>
                </ul>
            </div>
            <?php
            $i++;
            }
            ?>
        </div>
    </div>
</div>