<?php
session_start();
//error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
    header('location:logout.php');
} else {
    if(isset($_POST['submit_prescription'])) {
        $vid = $_GET['viewid'];
        $medicines = $_POST['medicine'];
        $doses = $_POST['dose'];
        $timings = $_POST['timing'];
        $durations = $_POST['duration'];
        $instructions = $_POST['instructions'];
        $appo_id = $_POST['appo_id'];
        $unique_code = strtoupper(uniqid());

        // Insert prescription header
        $prescription_query = mysqli_query($con,
            "INSERT INTO tblprescriptions (patient_id, appoint_id, date, unique_code) 
     VALUES ('$vid', '$appo_id', NOW(), '$unique_code')"
        ) or die(mysqli_error($con));
        $prescription_id = $unique_code;

        if ($prescription_id) {
            // Insert each medicine
            for ($i = 0; $i < count($medicines); $i++) {
                if (!empty($medicines[$i])) {
                    $medicine = mysqli_real_escape_string($con, $medicines[$i]);
                    $dose = mysqli_real_escape_string($con, $doses[$i]);
                    $timing = mysqli_real_escape_string($con, $timings[$i]);
                    $duration = mysqli_real_escape_string($con, $durations[$i]);
                    $instruction = mysqli_real_escape_string($con, $instructions[$i]);

                    mysqli_query($con, "INSERT INTO tblprescription_medicines (prescription_id, medicine_name, dose, timing, duration, instructions) 
                              VALUES ('$prescription_id', '$medicine', '$dose', '$timing', '$duration', '$instruction')") or die(mysqli_error($con));
                }
            }

            echo '<script>alert("Prescription has been added.")</script>';
            echo "<script>window.history.back();</script>";
        } else {
            echo '<script>alert("Something Went Wrong. Please try again")</script>';
        }
    }
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Doctor | Generate Prescription</title>
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
        <style>
            .medicine-row {
                margin-bottom: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid #eee;
            }
            .add-medicine {
                margin-top: 10px;
            }
            .prescription-table {
                width: 100%;
                border-collapse: collapse;
            }
            .prescription-table th, .prescription-table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            .prescription-table th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
    <div id="app">
        <?php include('include/sidebar.php');?>
        <div class="app-content">
            <?php include('include/header.php');?>
            <div class="main-content">
                <div class="wrap-content container" id="container">
                    <section id="page-title">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1 class="mainTitle">Doctor | Generate Prescription</h1>
                            </div>
                            <ol class="breadcrumb">
                                <li>
                                    <span>Doctor</span>
                                </li>
                                <li class="active">
                                    <span>Generate Prescription</span>
                                </li>
                            </ol>
                        </div>
                    </section>
                    <div class="container-fluid container-fullw bg-white">
                        <div class="row">
                            <div class="col-md-12">
                                <h5 class="over-title margin-bottom-15">Generate <span class="text-bold">Prescription</span></h5>

                                <?php
                                $vid = $_GET['viewid'];
                                $ret = mysqli_query($con, "SELECT * FROM tblpatient WHERE ID='$vid'");
                                $cnt = 1;
                                while ($row = mysqli_fetch_array($ret)) {
                                    ?>
                                    <table border="1" class="table table-bordered">
                                        <tr align="center">
                                            <td colspan="4" style="font-size:20px;color:blue">Patient Details</td>
                                        </tr>
                                        <tr>
                                            <th scope>Patient Name</th>
                                            <td><?php echo $row['PatientName'];?></td>
                                            <th scope>Patient Email</th>
                                            <td><?php echo $row['PatientEmail'];?></td>
                                        </tr>
                                        <tr>
                                            <th scope>Patient Mobile Number</th>
                                            <td><?php echo $row['PatientContno'];?></td>
                                            <th>Patient Address</th>
                                            <td><?php echo $row['PatientAdd'];?></td>
                                        </tr>
                                        <tr>
                                            <th>Patient Gender</th>
                                            <td><?php echo $row['PatientGender'];?></td>
                                            <th>Patient Age</th>
                                            <td><?php echo $row['PatientAge'];?></td>
                                        </tr>
                                    </table>
                                <?php } ?>

<table border="1" class="table table-bordered">
    <tr>
        <th>CODE</th>
        <th>Date Time</th>
        <th>Action</th>
    </tr>
    <?php
    $sql = "SELECT * FROM tblprescriptions WHERE patient_id={$_GET['viewid']} ORDER BY id DESC";
    $res = mysqli_query($con, $sql) or die(mysqli_error($con));
    if(mysqli_num_rows($res) > 0){
        while($row = mysqli_fetch_assoc($res)){

    ?>
    <tr>
        <td><?php echo $row['unique_code']; ?></td>
        <td><?php echo $row['date']; ?></td>
        <td>
            <a href="pres_page.php?code=<?php echo $row['unique_code']; ?>&pat_id=<?php echo $row['patient_id']; ?>" class="btn btn-sm btn-primary">VIEW</a>
        </td>

    </tr>
<?php
        }
    }
?>
</table>


                                <!-- Add New Prescription Form -->
                                <div class="d-flex justify-content-center" style="margin: 20px 0;" align="center">
                                    <button class="btn btn-success waves-effect waves-light w-lg" data-toggle="modal" data-target="#prescriptionModal">Add New Prescription</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Prescription Modal -->
        <div class="modal fade" id="prescriptionModal" tabindex="-1" role="dialog" aria-labelledby="prescriptionModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="prescriptionModalLabel">Add New Prescription</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <?php
                        $pid = $_GET['viewid'];
                        $patient_data = mysqli_query($con, "SELECT * FROM tblpatient WHERE ID='$pid'");
                        $row_data = mysqli_fetch_array($patient_data);
                        ?>

                        <form action="#" method="post" name="submit_prescription" id="prescriptionForm">
                            <input type="hidden" name="appo_id" value="<?php echo $row_data['appoint_id']; ?>">

                            <div id="medicine-container">
                                <div class="medicine-row">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Medicine Name</label>
                                                <input type="text" name="medicine[]" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Dose</label>
                                                <input type="text" name="dose[]" class="form-control" placeholder="e.g., 500mg" required>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Timing</label>
                                                <select name="timing[]" class="form-control" required>
                                                    <option value="">Select</option>
                                                    <option value="1+1+1">1+1+1</option>
                                                    <option value="1+1+0">1+1+0</option>
                                                    <option value="1+0+1">1+0+1</option>
                                                    <option value="1+0+0">1+0+0</option>
                                                    <option value="0+0+1">0+0+1</option>
                                                    <option value="0+1+0">0+1+0</option>
                                                    <option value="0+1+1">0+1+1</option>
                                                    <option value="As Needed">As Needed</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Duration</label>
                                                <input type="text" name="duration[]" class="form-control" placeholder="e.g., 7 days" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Instructions</label>
                                                <input type="text" name="instructions[]" class="form-control" placeholder="Special instructions">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button type="button" class="btn btn-secondary add-medicine" id="add-medicine">
                                <i class="fa fa-plus"></i> Add Another Medicine
                            </button>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" name="submit_prescription" class="btn btn-primary">Save Prescription</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <?php include('include/footer.php');?>
        <?php include('include/setting.php');?>
    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/modernizr/modernizr.js"></script>
    <script src="vendor/jquery-cookie/jquery.cookie.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="vendor/switchery/switchery.min.js"></script>
    <script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
    <script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="vendor/autosize/autosize.min.js"></script>
    <script src="vendor/selectFx/classie.js"></script>
    <script src="vendor/selectFx/selectFx.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/form-elements.js"></script>

    <script>
        jQuery(document).ready(function() {
            Main.init();
            FormElements.init();

            // Add medicine row
            $('#add-medicine').click(function() {
                var newRow = `
                <div class="medicine-row">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" name="medicine[]" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" name="dose[]" class="form-control" placeholder="e.g., 500mg" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <select name="timing[]" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="1+1+1">1+1+1</option>
                                                    <option value="1+1+0">1+1+0</option>
                                                    <option value="1+0+1">1+0+1</option>
                                                    <option value="1+0+0">1+0+0</option>
                                                    <option value="0+0+1">0+0+1</option>
                                                    <option value="0+1+0">0+1+0</option>
                                                    <option value="0+1+1">0+1+1</option>
                                    <option value="As Needed">As Needed</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" name="duration[]" class="form-control" placeholder="e.g., 7 days" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" name="instructions[]" class="form-control" placeholder="Special instructions">
                            </div>
                        </div>
                        <div class="col-md-1">
                            <button type="button" class="btn btn-danger remove-medicine"><i class="fa fa-times"></i></button>
                        </div>
                    </div>
                </div>`;

                $('#medicine-container').append(newRow);
            });

            // Remove medicine row
            $(document).on('click', '.remove-medicine', function() {
                $(this).closest('.medicine-row').remove();
            });
        });

        function printPrescription(prescriptionId) {
            var printContent = document.querySelector('.prescription-container[data-id="' + prescriptionId + '"]');
            if (!printContent) {
                // If data-id attribute is not set, try to find by content
                var containers = document.querySelectorAll('.prescription-container');
                for (var i = 0; i < containers.length; i++) {
                    if (containers[i].innerText.includes('Prescription Date')) {
                        printContent = containers[i];
                        break;
                    }
                }
            }

            if (printContent) {
                var originalContents = document.body.innerHTML;
                document.body.innerHTML = printContent.innerHTML;
                window.print();
                document.body.innerHTML = originalContents;
                location.reload();
            }
        }
    </script>
    </body>
    </html>
<?php } ?>