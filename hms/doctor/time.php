<?php
session_start();
//error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
    header('location:logout.php');
} else{

    if(isset($_POST['submit']))
    {
       $ftime = $_POST['ftime'];
       $ttime = $_POST['ttime'];
       $doc_id = $_SESSION['id'];

       $sql = "INSERT INTO tbltimes(doctor_id,t_from,t_to) VALUES('$doc_id','$ftime','$ttime')";
       $res = mysqli_query($con,$sql) or die(mysqli_error($con));
    }
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Doctor | Time</title>

        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
        <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
        <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
        <link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/plugins.css">
        <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

        <script>
            function userAvailability() {
                $("#loaderIcon").show();
                jQuery.ajax({
                    url: "check_availability.php",
                    data:'email='+$("#patemail").val(),
                    type: "POST",
                    success:function(data){
                        $("#user-availability-status1").html(data);
                        $("#loaderIcon").hide();
                    },
                    error:function (){}
                });
            }
        </script>
    </head>
    <body>
    <div id="app">
        <?php include('include/sidebar.php');?>
        <div class="app-content">
            <?php include('include/header.php');?>

            <div class="main-content" >
                <div class="wrap-content container" id="container">
                    <!-- start: PAGE TITLE -->
                    <section id="page-title">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1 class="mainTitle">Time | Add Time</h1>
                            </div>
                            <ol class="breadcrumb">
                                <li>
                                    <span>Time</span>
                                </li>
                                <li class="active">
                                    <span>Add Time</span>
                                </li>
                            </ol>
                        </div>
                    </section>
                    <div class="container-fluid container-fullw bg-white">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row margin-top-30">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="panel panel-white">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">Add Consultation Time</h5>
                                            </div>
                                            <div class="panel-body">
                                                <form role="form"  method="post" action="#">

                                                    <div class="form-group">
                                                        <label for="doctorname">
                                                            From
                                                        </label>
                                                        <input type="time" name="ftime" class="form-control"  placeholder="Enter Time" required="true">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="doctorname">
                                                            To
                                                        </label>
                                                        <input type="time" name="ttime" class="form-control"  placeholder="Enter Time" required="true">
                                                    </div>

                                                    <button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
                                                        Add
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>SL</th>
                                                <th>FROM</th>
                                                <th>TO</th>
                                                <th>ACTION</th>
                                            </tr>
                                            <?php
                                            $sql = "SELECT * FROM tbltimes WHERE doctor_id={$_SESSION['id']} ORDER BY id DESC";
                                            $res = mysqli_query($con,$sql) or die();
                                            $count =1;
                                            while($row = mysqli_fetch_assoc($res)){


                                            ?>
                                            <tr>
                                                <td><?php echo $count; ?></td>
                                                <td><?php echo $row['t_from']; ?></td>
                                                <td><?php echo $row['t_to']; ?></td>
                                                <td>
                                                    <a href="time-del.php?id=<?php echo $row['id'] ;?>" role="button" class="btn btn-sm btn-danger">Trash</a>
                                                </td>
                                            </tr>
                                            <?php $count++; } ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12">
                                <div class="panel panel-white">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- start: FOOTER -->
    <?php include('include/footer.php');?>
    <!-- end: FOOTER -->

    <!-- start: SETTINGS -->
    <?php include('include/setting.php');?>

    <!-- end: SETTINGS -->
    </div>
    <!-- start: MAIN JAVASCRIPTS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/modernizr/modernizr.js"></script>
    <script src="vendor/jquery-cookie/jquery.cookie.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="vendor/switchery/switchery.min.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
    <script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="vendor/autosize/autosize.min.js"></script>
    <script src="vendor/selectFx/classie.js"></script>
    <script src="vendor/selectFx/selectFx.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <!-- start: CLIP-TWO JAVASCRIPTS -->
    <script src="assets/js/main.js"></script>
    <!-- start: JavaScript Event Handlers for this page -->
    <script src="assets/js/form-elements.js"></script>
    <script>
        jQuery(document).ready(function() {
            Main.init();
            FormElements.init();
        });
    </script>
    <!-- end: JavaScript Event Handlers for this page -->
    <!-- end: CLIP-TWO JAVASCRIPTS -->
    </body>
    </html>
<?php } ?>
