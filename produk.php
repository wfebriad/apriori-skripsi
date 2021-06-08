<?php
//session_start();
if (!isset($_SESSION['apriori_toko_id'])) {
    header("location:index.php?menu=forbidden");
}

include_once "database.php";
include_once "fungsi.php";
include_once "import/excel_reader2.php";
?>

<?php
//object database class
$db_object = new database();

$pesan_error = $pesan_success = "";
if (isset($_GET['pesan_error'])) {
    $pesan_error = $_GET['pesan_error'];
}
if (isset($_GET['pesan_success'])) {
    $pesan_success = $_GET['pesan_success'];
}
if (isset($_POST['submit'])) {
    // if(!$input_error){
    $data = new Spreadsheet_Excel_Reader($_FILES['file_data_itemset']['tmp_name']);

    $baris = $data->rowcount($sheet_index = 0);
    $column = $data->colcount($sheet_index = 0);
    //import data excel dari baris kedua, karena baris pertama adalah nama kolom
    // $temp_date = $temp_produk = "";
    for ($i = 2; $i <= $baris; $i++) {
        for ($c = 1; $c <= $column; $c++) {
            $value[$c] = $data->val($i, $c);
        }

        // if($i==2){
        //     $temp_produk .= $value[3];
        // }
        // else{
        //     if($temp_date == $value[1]){
        //         $temp_produk .= ",".$value[3];
        //     }
        //     else{
        $table = "produk";
        // $produkIn = get_produk_to_in($temp_produk);
        $id_itemset = $value[1];
        // echo $temp_date;die();
        $nama_itemset = $value[2];

        //mencegah ada jarak spasi
        $nama_itemset = str_replace(" ,", ",", $nama_itemset);
        $nama_itemset = str_replace("  ,", ",", $nama_itemset);
        $nama_itemset = str_replace("   ,", ",", $nama_itemset);
        $nama_itemset = str_replace("    ,", ",", $nama_itemset);
        $nama_itemset = str_replace(", ", ",", $nama_itemset);
        $nama_itemset = str_replace(",  ", ",", $nama_itemset);
        $nama_itemset = str_replace(",   ", ",", $nama_itemset);
        $nama_itemset = str_replace(",    ", ",", $nama_itemset);
        //$item1 = explode(",", $produkIn);


//                    $field_value = array("transaction_date"=>($temp_date),
//                        "produk"=>$produkIn);
//                    $query = $db_object->insert_record($table, $field_value);
//                    INSERT INTO transaksi (transaction_date, produk)
//                    VALUES
//                    ('2016-06-01', 'nipple pigeon L'),
//                    ('2016-06-01', 'nipple ninio'),
//                    ('2016-06-01', 'mamamia L36'),
//                    ('2016-06-01', 'sweety FP XL34')
        $sql = "INSERT INTO produk (id_produk, nama_produk) VALUES ";
        $value_in = array();
        //foreach ($item1 as $key => $isi) {
        //  $value_in[] = "('$temp_date' , '$isi' )";
        //}
        //$value_to_sql_in = implode(",", $value_in);
        //$sql .= $value_to_sql_in;
        $sql .= " ('$id_itemset', '$nama_itemset')";
        $db_object->db_query($sql);

        //         $temp_produk = $value[3];
        //     }
        // }

        // $temp_date = $value[1];
    }
    ?>
    <script> location.replace("?menu=produk&pesan_success=Data berhasil disimpan"); </script>
    <?php
}



if (isset($_GET['delete'])) {
    $id_produk = $_GET['delete'];
    $sql = "DELETE FROM produk WHERE id_produk='$id_produk'";
    $db_object->db_query($sql);
    ?>
    <script> alert('Data transaksi berhasil dihapus'); location.replace("?menu=produk"); </script>
    <?php
}


if (isset($_GET['tambah_produk'])) {
    $id_produk = $_POST['id_produk'];
    //$kategori = $_POST['kategori'];
    $nama_produk = $_POST['nama_produk'];
    //$stok = $_POST['stok'];
    $query = "INSERT INTO produk (id_produk,nama_produk) VALUES ('$id_produk','$nama_produk')";
    $db_object->db_query($query);
    // echo $tanggal.'<br>'.$produk_isi;die();
    ?>
    <script> alert('Data berhasil disimpan'); location.replace("?menu=produk"); </script>
<?php } ?>
<!---->
<!--<div class="super_sub_content">-->
<!--    <div class="container">-->
        <div class="row">
            <!--UPLOAD EXCEL FORM-->
            <div class="col-md-8">
                <form method="post" enctype="multipart/form-data" action="">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <!--                                <label>Import data from excel</label>-->
                                <input name="file_data_itemset" type="file" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="from-grup"><input name="submit" type="submit" value="Upload Data" class="btn btn-success"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    Tambah Itemset
                </button>

            </div>
            <br>
            <!--            <div class="col-3"></div>-->
            <!--            <div class="col-3"></div>-->


            <!--            <br>-->


            <!-- modal input -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Tambah Itemset</h4>
                        </div>
                        <form method="post" enctype="multipart/form-data"
                              action="index.php?menu=produk&tambah_produk=yes">
                            <div class="modal-body">
                                <div class="form-group">
                                    <div class="input-group">
                                        <label>ID Itemset</label>
                                        <input name="id_produk" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <label>Nama Itemset</label>
                                        <input name="nama_produk" type="text" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" value="Simpan" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <?php
            if (!empty($pesan_error)) {
                display_error($pesan_error);
            }
            if (!empty($pesan_success)) {
                display_success($pesan_success);
            }

            $sql = "SELECT * FROM produk";
            $query = $db_object->db_query($sql);
            $jumlah = $db_object->db_num_rows($query);
            // echo "<BR><p>Jumlah data: " . $jumlah . "</p><br>";
            if ($jumlah == 0) {
                echo "Data kosong...";
            } else {
                ?>
<!--                <div class="table-responsive">-->
                    <table class='table table-bordered table-striped table-hover'>
                        <tr>
                            <th>No</th>
                            <th>ID Itemset</th>
                            <th>Nama Itemset</th>
                            <th colspan="2">Aksi</th>
                        </tr>
                        <?php

                        $no = 1;
                        while ($row = $db_object->db_fetch_array($query)) {
                            echo "<tr>";
                            echo "<td>" . $no . "</td>";
                            echo "<td>" . $row['id_produk'] . "</td>";
                            //echo "<td>" . $row['kategori'] . "</td>";
                            echo "<td>" . $row['nama_produk'] . "</td>";
                                    $nama_barang = $row['nama_produk'];
                                    $kuking = "SELECT max(confidence) AS konfiden, kombinasi1, kombinasi2 FROM `confidence` WHERE kombinasi2 LIKE '$nama_barang' OR kombinasi1 LIKE '$nama_barang'";
                                    $query_cuy = $db_object->db_query($kuking);
                                    // $kombo = $db_object->db_num_rows($query_cuy);
                                    while ($baris = $db_object->db_fetch_array($query_cuy)) { 
                                        if (!empty($baris['kombinasi1'])) {
                                            # code...
                                            echo $baris['kombinasi1'].'<br/>'.$baris['konfiden'].'%';
                                        }
                                    }
                            echo "</td>";
                            echo '<td><a class = "btn btn-danger btn-block" href="index.php?menu=produk&delete='.$row['id_produk'].'">Hapus</a></td>';
                            echo '<td><a class = "btn btn-warning btn-block" href="index.php?menu=editproduk&id='.$row['id_produk'].'">Edit</a></td>';
                            echo "</td>";
                            $no++;
                        }
                        ?>
                    </table>
<!--                </div>-->
                <?php
            }
            ?>
        </div>
<!--    </div>-->
<!--</div>-->


<?php
function get_produk_to_in($produk)
{
    $ex = explode(",", $produk);
    //$temp = "";
    for ($i = 0; $i < count($ex); $i++) {

        $jml_key = array_keys($ex, $ex[$i]);
        if (count($jml_key) > 1) {
            unset($ex[$i]);
        }

        //$temp = $ex[$i];
    }
    return implode(",", $ex);
}

?>

