<?php include_once 'atribut/head.php'; ?>

<?php
$id_siswa    = $_GET['id_siswa'];
$sql        = "SELECT * FROM data_siswa WHERE id_siswa= '$id_siswa'";
$query      = mysqli_query($konek, $sql);
$row        = mysqli_fetch_array($query);
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
              <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between ">
                <h5 class="m-0 font-weight-bold text-primary"> <b> Ubah Alat </b></h5>
              </div>
              <div class="card-body">
                <form class="form" method="post">
                  <div class="form-group ">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Nomor</label>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <input class="form-control  " type="text" name="id_siswa" value="<?php echo $row['id_siswa']; ?>" readonly="readonly">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Nama Kue</label>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                      <input class="form-control" id="txtCharacter"  type="text" name="namasiswa" required value="<?php echo $row['namasiswa']; ?>">
                    </div>
                  </div>
                
                  <div class="form-group">
                    <label class="control-label col-md-12 col-sm-12 col-xs-12">Harga</label>
                    <div class="input-group-prepend col">
                      <select class="custom-select" type=text name="penghasilan" required value="<?php echo $row['penghasilan']; ?>">
                        <option selected><?php echo $row['penghasilan']; ?></option>
<option value="Sangat murah">Sangat Murah (5)</option>
                        <option value="Murah">Murah (4)</option>
                        <option value="Cukup murah">Cukup Murah (3)</option>
                        <option value="Mahal">Mahal (2)</option>
                        <option value="Sangat mahal">Sangat Mahal (1)</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    
                       <label class="control-label col-md-12 col-sm-12 col-xs-12">Rasa</label>
                        <div class="input-group-prepend col">
						<select class="custom-select" type=text name="jarak" required value="<?php echo $row['jarak']; ?>">
                        <option selected><?php echo $row['jarak']; ?></option>
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
                      <div class="col  input-group-append">
                        <select class="custom-select" type=text name="tanggungan" required value="<?php echo $row['tanggungan']; ?>">
                        <option selected><?php echo $row['tanggungan']; ?></option>
            <option value="Sangat Menarik">Sangat Menarik (5)</option>
                        <option value="Menarik">Menarik (4)</option>
                        <option value="Cukup Menarik">Cukup Menarik (3)</option>
                        <option value="Kurang Menarik">Kurang Menarik (2)</option>
                        <option value="Sangat Kurang Menarik">Sangat Kurang Menarik (1)</option>                        
                      </select>
                      </div>
                    </div>

                  <div class="form-group">
                    
                       <label class="control-label col-md-12 col-sm-12 col-xs-12">Tekstur</label>
                      <div class="col input-group-prepend">
                        <select class="custom-select" type=text name="pendidikan" required value="<?php echo $row['pendidikan']; ?>">
                        <option selected><?php echo $row['pendidikan']; ?></option>
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
                      <select class="custom-select" type=text name="ratanilai" required value="<?php echo $row['pendidikan']; ?>">
                      <option value="<?php echo $row['ratanilai']; ?>"><?php echo $row['ratanilai']; ?></option>
                        <option selected><?php echo $row['ratanilai']; ?></option>
            <option value="Sangat Wangi">Sangat Wangi (5)</option>
                        <option value="Wangi">Wangi (4)</option>
                        <option value="Cukup Wangi">Cukup Wangi (3)</option>
                        <option value="Kurang Wangi">Kurang Wangi (2)</option>
                        <option value="Sangat Kurang Wangi">Sangat Kurang Wangi (1)</option>
                      </select>
                    </div>
                  </div>



                  <br>

                  <!-- Button -->
                  <div class="container">
                    <div class="col text-center mt-3 mb-3">
                      <input class="btn btn-primary" type="submit" name="simpan" value="Simpan">
                      <a href="data_kue.php">
                        <button type="button" name="button" class="btn btn-danger">Batal</button>
                      </a>




                      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

                      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
                      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>




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


</body>

</html>

<?php
//proses Input
if (isset($_POST['simpan'])) {
  $id_siswa    = $_POST['id_siswa'];
  $namasiswa = $_POST['namasiswa'];
  $penghasilan      = $_POST['penghasilan'];
  $jarak  = $_POST['jarak'];
  $tanggungan    = $_POST['tanggungan'];
  $ratanilai = $_POST['ratanilai'];
  $pendidikan    = $_POST['pendidikan'];
  $nis              = $_POST['nis'];
  $nama_ayah           = $_POST['nama_ayah'];
  $nama_ibu          = $_POST['nama_ibu'];
  $pekerjaan_ayah       = $_POST['pekerjaan_ayah'];
  $pekerjaan_ibu     = $_POST['pekerjaan_ibu'];
  $alamat           = $_POST['alamat'];
  $kehadiran         = $_POST['kehadiran'];

  $query = "UPDATE data_siswa SET namasiswa = '$namasiswa', penghasilan = '$penghasilan', jarak = '$jarak', tanggungan = '$tanggungan', ratanilai = '$ratanilai', kehadiran = '$kehadiran', pendidikan = '$pendidikan', 
  nis = '1', nama_ayah = '$nama_ayah', nama_ibu = '$nama_ibu', pekerjaan_ayah = '$pekerjaan_ayah', pekerjaan_ibu = '$pekerjaan_ibu', alamat = 'alamat' WHERE id_siswa = '$id_siswa'";
  $simpan = $konek->query($query);
  if ($simpan === true) {
    echo "<script>alert('Data Berhasil Di Ubah') </script>";
    echo "<script>window.location.href = \"data_kue.php\" </script>";
  } else {
    echo "<script>alert('Data Gagal Di Ubah') </script>";
    echo "<script>window.location.href = \"data_kue.php\" </script>";
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
			
			
			function isNumericKey(evt)
			{
				var charCode = (evt.which) ? evt.which : evt.keyCode;
				if (charCode != 46 && charCode > 31 
				&& (charCode < 48 || charCode > 57))
				return true;
				return false;
			}
</script>