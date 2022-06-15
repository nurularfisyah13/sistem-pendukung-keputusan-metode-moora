<?php include_once 'atribut/head.php'; ?>

<?php
$sql    = "SELECT MAX(id_siswa) AS maxid FROM data_siswa";
$carkod = mysqli_query($konek, $sql);
$datkod = mysqli_fetch_array($carkod, MYSQLI_ASSOC);
if ($datkod) {
  $nilkod  = $datkod['maxid'];
  $kode    = $nilkod + 1;
  $kodeoto = $kode;
} else {
  $kodeoto = "1";
}
?>

<!-- Page Wrapper -->
<div id="wrapper">
  <!-- begin:: siderbar -->
  <?php include_once 'atribut/sidebar.php'; ?>
  <!-- end:: siderbar -->

  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">

      <?php include_once 'atribut/navbar.php'; ?>

      <!-- Begin Page Content -->
      <div class="col">
        <div class="container">
          <!-- <div class="row"> -->
          <div class="col-xl-12  col-lg-8">
            <div class="card shadow mb-4">
              <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h5 class="m-0 font-weight-bold text-primary"> <b> Tambah Kue  </b></h5>
              </div>
              <div class="card-body">
                <form class="form" method="post">
                  <div class="form-group ">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Nomor</label>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <input class="form-control" type="text" name="id_siswa" value="<?= $kodeoto ?>" readonly="readonly">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Nama Kue</label>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <input class="form-control" id="txtCharacter" type="text" name="namasiswa"   required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Harga</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="penghasilan" required>
                      <option selected required> ---Pilih--- </option>
						          <option value="Sangat Murah">Sangat Murah (5)</option>
                        <option value="Murah">Murah (4)</option>
                        <option value="Cukup Murah">Cukup Murah (3)</option>
                        <option value="Mahal">Mahal (2)</option>
                        <option value="Sangat Mahal">Sangat Mahal (1)</option>
                        </select>
                    </div>
                  </div>
				  
                   <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Rasa</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="jarak" required>
                      <option selected> ---Pilih--- </option>
						<option value="Sangat Enak">Sangat Enak (5)</option>
                        <option value="Enak">Enak (4)</option>
                        <option value="Cukup Enak">Cukup Enak (3)</option>
                        <option value="Kurang Enak">Kurang Enak (2)</option>
                        <option value="Sangat kurang Enak">Sangat Kurang Enak (1)</option>                                                                
                      </select>
                    </div>
                  </div>
				  
				  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Penampilan</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="tanggungan" required>
                      <option selected> ---Pilih--- </option>
            <option value="Sangat Menarik">Sangat Menarik (5)</option>
                        <option value="Menarik">Menarik (4)</option>
                        <option value="Cukup Menarik">Cukup Menarik (3)</option>
                        <option value="Kurang Menarik">Kurang Menarik (2)</option>
                        <option value="Sangat Kurang Menarik">Sangat Kurang Menarik (1)</option>                                          </select>
                    </div>
                  </div>
				  
				  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Tekstur</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="pendidikan" required>
                      <option selected> ---Pilih--- </option>
						<option value="Lembut">Lembut (5)</option>
                        <option value="Gurih">Gurih (4)</option>
                        <option value="Renyah">Renyah (3)</option>
                        <option value="Lembek">Lembek (2)</option>
                        <option value="Lengket">Lengket (1)</option>                                                                    
                      </select>
                    </div>
                  </div>
				  
				  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Aroma</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="ratanilai" required>
                      <option selected> ---Pilih--- </option>
            <option value="Sangat Wangi">Sangat Wangi (5)</option>
                        <option value="Wangi">Wangi (4)</option>
                        <option value="Cukup Wangi">Cukup Wangi (3)</option>
                        <option value="Kurang Wangi">Kurang Wangi (2)</option>
                        <option value="Sangat Kurang Wangi">Sangat Kurang Wangi (1)</option>
                      </select>
                    </div>
                  </div>
                  <br>

                  <div class="col text-center mt-3 mb-3">
                    <input class="btn btn-primary" type="submit" name="simpan" value="Simpan">
                    <a href="data_kue.php" class="btn btn-danger">Batal</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End of Page Content -->

  <!-- end -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<?php include_once 'atribut/foot.php'; ?>


</body>

</html>

<?php
if (isset($_POST['simpan'])) {

  $id_siswa         = $_POST['id_siswa'];
  $namasiswa        = $_POST['namasiswa'];
  $penghasilan      = $_POST['penghasilan'];
  $jarak            = $_POST['jarak'];
  $tanggungan       = $_POST['tanggungan'];
  $ratanilai         = $_POST['ratanilai'];
  $pendidikan        = $_POST['pendidikan'];
  $nis              = $_POST['nis'];
  $nama_ayah           = $_POST['nama_ayah'];
  $nama_ibu          = $_POST['nama_ibu'];
  $pekerjaan_ayah       = $_POST['pekerjaan_ayah'];
  $pekerjaan_ibu     = $_POST['pekerjaan_ibu'];
  $alamat           = $_POST['alamat'];
  $kehadiran         = $_POST['kehadiran'];

  $sql_siswa   = "SELECT * FROM data_siswa WHERE namasiswa = '$namasiswa'";
  $query_siswa = $konek->query($sql_siswa);
  $cek_siswa   = $query_siswa->num_rows;

  if ($cek_siswa > 0) {
    echo "<script>alert('Data Sudah Ada!') </script>";
    echo "<script>window.location.href = \"data_alat_tambah.php\" </script>";
  } else {
    $query  = "INSERT INTO data_siswa (id_siswa, namasiswa, penghasilan, jarak, tanggungan, ratanilai, pendidikan, nis, nama_ayah, nama_ibu, pekerjaan_ayah, pekerjaan_ibu, alamat, kehadiran) 
    VALUES ('$id_siswa', '$namasiswa','$penghasilan','$jarak','$tanggungan','$ratanilai', '$pendidikan', '1', '$nama_ayah', '$nama_ibu', '$pekerjaan_ayah', '$pekerjaan_ibu', 'alamat', '$kehadiran')";
    $tambah = $konek->query($query);
    if ($tambah == true) {
      echo "<script>alert('Data Berhasil Di Tambah') </script>";
      echo "<script>window.location.href = \"data_kue.php\" </script>";
    } else {
      echo "<script>alert('Data Gagal Di Tambah') </script>";
      echo "<script>window.location.href = \"data_kue.php\" </script>";
    }
  }
}

?>

<script>
function isNumberKey(evt)
			{
				var charCode = (evt.which) ? evt.which : evt.keyCode;
				if (charCode != 46 && charCode > 31 
				&& (charCode < 48 || charCode > 57))
				return false;
				return true;
			}  
			
		
</script>