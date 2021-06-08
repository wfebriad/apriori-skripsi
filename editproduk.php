<?php 
include_once "database.php";
include_once "fungsi.php";
include_once "import/excel_reader2.php";

//object database class
$db_object = new database();

if (isset($_GET['updates'])) {

    $id_itemset = $_POST['id_itemset'];
    $nama_itemset = $_POST['nama_itemset'];
    //$stok = $_POST['stok'];
    $query = "UPDATE data_itemset SET nama_itemset='$nama_itemset' WHERE id_itemset='$id_itemset'";
    $input = $db_object->db_query($query); ?>
    <script> alert('Data transaksi berhasil diubah'); location.replace("?menu=data_itemset"); </script>
<?php }

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM data_itemset WHERE  id_itemset='$id'";
    $query = $db_object->db_query($query);
    $jumlah = $db_object->db_num_rows($query);
    while ($row = $db_object->db_fetch_array($query)) { ?>
        <form method="post" enctype="multipart/form-data" action="index.php?menu=editproduk&updates=yes">
            <div class="form-group">
                <div class="input-group">
                    <label>ID Itemset</label>
                    <input name="id_itemset" value="<?=$row['id_itemset']?>" readonly type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <label>Nama Itemset</label>
                    <input name="nama_itemset" value="<?=$row['nama_itemset']?>" type="text" class="form-control">
                </div>
            </div>
            
            <input type="submit" value="Simpan" class="btn btn-primary">
        </form>
       
   <?php }
}
 ?>