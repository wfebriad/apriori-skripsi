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
    $data = new Spreadsheet_Excel_Reader($_FILES['file_data_rekam_medis']['tmp_name']);

    $baris = $data->rowcount($sheet_index = 0);
    $column = $data->colcount($sheet_index = 0);
    //import data excel dari baris kedua, karena baris pertama adalah nama kolom
    // $temp_date = $temp_produk = "";
    for ($i = 2; $i <= $baris; $i++) {
        for ($c = 1; $c <= $column; $c++) {
            $value[$c] = $data->val($i, $c);
        }
        $table = "rekam_medis";
        // $rekam_medisIn = get_produk_to_in($temp_produk);
        $temp_date = format_date($value[1]);
        // echo $temp_date;die();
        $rekam_medisIn = $value[2];

        //mencegah ada jarak spasi
        $rekam_medisIn = str_replace(" ,", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace("  ,", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace("   ,", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace("    ,", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace(", ", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace(",  ", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace(",   ", ",", $rekam_medisIn);
        $rekam_medisIn = str_replace(",    ", ",", $rekam_medisIn);
        //$item1 = explode(",", $rekam_medisIn);

        $sql = "INSERT INTO rekam_medis (tanggal_rm, riwayat_rm) VALUES ";
        $value_in = array();
        $sql .= " ('$temp_date', '$rekam_medisIn')";
        $db_object->db_query($sql);
    }
?>
    <script>
        location.replace("?menu=data_rekam_medis&pesan_success=Data berhasil disimpan");
    </script>
<?php
}

if (isset($_POST['delete'])) {
    $sql = "TRUNCATE rekam_medis";
    $db_object->db_query($sql);
?>
    <script>
        location.replace("?menu=data_rekam_medis&pesan_success=Data transaksi berhasil dihapus");
    </script>
<?php
}
if (isset($_GET['delete'])) {

    $id = $_GET['delete'];
    $db_object->db_query("DELETE FROM rekam_medis WHERE id='$id'");
?>
    <script>
        location.replace("?menu=data_rekam_medis&pesan_success=Data berhasil disimpan");
    </script>
<?php }

if (isset($_GET['tambah_transaksi'])) {
    $tanggal = $_POST['tanggal'];
    $nama_itemset = $_POST['nama_itemset'];
    $rm_isi = null;
    foreach ($nama_itemset as $key => $value) {
        $rm_isi .= $value . ',';
    }
    $db_object->db_query("INSERT INTO rekam_medis SET tanggal_rm='$tanggal' , riwayat_rm='$rm_isi'");
    // echo $tanggal.'<br>'.$rm_isi;die();
?>
    <script>
        location.replace("?menu=data_rekam_medis&pesan_success=Data berhasil disimpan");
    </script>
<?php }
?>

<div class="row">
    <!--UPLOAD EXCEL FORM-->
    <div class="col-md-8">
        <form method="post" enctype="multipart/form-data" action="">
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <!--<label>Import data from excel</label>-->
                        <input name="file_data_rekam_medis" type="file" class="form-control">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="from-grup"><input name="submit" type="submit" value="Upload Data" class="btn btn-success"></div>

                </div>
                <div class="col-md-3">
                    <div class="from-group">
                        <button name="delete" type="submit" class="btn btn-danger">
                            <i class="fa fa-trash-o"></i> Hapus Semua Data Riwayat Rekam Medis Pasien
                        </button>
                    </div>

                </div>
            </div>

        </form>
    </div>
    <div class="col-md-3">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            Tambah Data Riwayat Rekam Medis Pasien
        </button>
    </div>

    <!-- modal input -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tambah Transaksi</h4>
                </div>
                <form method="post" enctype="multipart/form-data" action="index.php?menu=data_rekam_medis&tambah_transaksi=yes">
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="input-group">
                                <label>Tanggal</label>
                                <input name="tanggal" type="date" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group">
                                <label>Data Riwayat Rekam Medis Pasien (Harap Mengisi : Jenis Kelamin, Kategori Umur, Kelurahan, dan Kode ICD10)</label><br />
                                <?php
                                $itemset = "SELECT * FROM data_itemset";
                                $itemset_result = $db_object->db_query($itemset);
                                while ($baris = $db_object->db_fetch_array($itemset_result)) {
                                ?>

                                    <div class="col-md-4">
                                        <input name="nama_itemset[]" value="<?= $baris['nama_itemset'] ?>" type="checkbox"> <?= $baris['nama_itemset'] ?>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" value="add_transaksi" class="btn btn-primary">Save changes
                        </button>
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

    $sql = "SELECT * FROM rekam_medis ORDER BY tanggal_rm DESC";
    $query = $db_object->db_query($sql);
    $jumlah = $db_object->db_num_rows($query);
    // echo "<BR><p>Jumlah data: " . $jumlah . "</p><br>";
    if ($jumlah == 0) {
        echo "Data kosong...";
    } else {
    ?>
        <!--                <div class="table-responsive">-->
        <table class='table table-bordered table-striped  table-hover'>
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Riwayat Rekam Medis Pasien</th>
                <th></th>
            </tr>
            <?php

            $no = 1;
            $return = "return confirm(\"Anda yakin ?\")";
            while ($row = $db_object->db_fetch_array($query)) {
                echo "<tr>";
                echo "<td>" . $no . "</td>";
                echo "<td>" . $row['tanggal_rm'] . "</td>";
                echo "<td>" . $row['riwayat_rm'] . "</td>";
                echo "<td> <a onclick='return confirm(\"sure to delete !\");' class='btn btn-block btn-danger' href='index.php?menu=data_rekam_medis&delete=" . $row['id'] . "'>Hapus</a></td>";
                echo "</tr>";
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