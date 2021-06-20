<?php
//session_start();
if (!isset($_SESSION['apriori_skripsi_id'])) {
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
        $sql = "INSERT INTO data_itemset (id_itemset, nama_itemset) VALUES ";
        $value_in = array();
        $sql .= " ('$id_itemset', '$nama_itemset')";
        $db_object->db_query($sql);
    }
?>
    <script>
        location.replace("?menu=data_itemset&pesan_success=Data berhasil disimpan");
    </script>
<?php
}



if (isset($_GET['delete'])) {
    $id_itemset = $_GET['delete'];
    $sql = "DELETE FROM data_itemset WHERE id_itemset='$id_itemset'";
    $db_object->db_query($sql);
?>
    <script>
        alert('Data transaksi berhasil dihapus');
        location.replace("?menu=data_itemset");
    </script>
<?php
}


if (isset($_GET['tambah_produk'])) {
    $id_itemset = $_POST['id_itemset'];
    //$kategori = $_POST['kategori'];
    $nama_itemset = $_POST['nama_itemset'];
    //$stok = $_POST['stok'];
    $query = "INSERT INTO data_itemset (id_itemset,nama_itemset) VALUES ('$id_itemset','$nama_itemset')";
    $db_object->db_query($query);
    // echo $tanggal.'<br>'.$produk_isi;die();
?>
    <script>
        alert('Data berhasil disimpan');
        location.replace("?menu=data_itemset");
    </script>
<?php } ?>

<div class="row">
    <!--UPLOAD EXCEL FORM-->
    <div class="col-md-8">
        <form method="post" enctype="multipart/form-data" action="">
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <!--<label>Import data from excel</label>-->
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

    <!-- modal input -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tambah Itemset</h4>
                </div>
                <form method="post" enctype="multipart/form-data" action="index.php?menu=data_itemset&tambah_produk=yes">
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="input-group">
                                <label>ID Itemset</label>
                                <input name="id_itemset" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <label>Nama Itemset</label>
                                <input name="nama_itemset" type="text" class="form-control">
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

    $sql = "SELECT * FROM data_itemset";
    $query = $db_object->db_query($sql);
    $jumlah = $db_object->db_num_rows($query);
    // echo "<BR><p>Jumlah data: " . $jumlah . "</p><br>";
    if ($jumlah == 0) {
        echo "Data kosong...";
    } else {
    ?>
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
                echo "<td>" . $row['id_itemset'] . "</td>";
                //echo "<td>" . $row['kategori'] . "</td>";
                echo "<td>" . $row['nama_itemset'] . "</td>";
                $nama_barang = $row['nama_itemset'];
                $kuking = "SELECT max(confidence) AS konfiden, kombinasi1, kombinasi2 FROM `confidence` WHERE kombinasi2 LIKE '$nama_barang' OR kombinasi1 LIKE '$nama_barang'";
                $query_cuy = $db_object->db_query($kuking);
                // $kombo = $db_object->db_num_rows($query_cuy);
                while ($baris = $db_object->db_fetch_array($query_cuy)) {
                    if (!empty($baris['kombinasi1'])) {
                        # code...
                        echo $baris['kombinasi1'] . '<br/>' . $baris['konfiden'] . '%';
                    }
                }
                echo "</td>";
                echo '<td><a class = "btn btn-danger btn-block" href="index.php?menu=data_itemset&delete=' . $row['id_itemset'] . '">Hapus</a></td>';
                echo '<td><a class = "btn btn-warning btn-block" href="index.php?menu=editproduk&id=' . $row['id_itemset'] . '">Edit</a></td>';
                echo "</td>";
                $no++;
            }
            ?>
        </table>
    <?php
    }
    ?>
</div>

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