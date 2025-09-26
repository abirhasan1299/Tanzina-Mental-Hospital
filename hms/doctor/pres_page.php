<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
    header('location:logout.php');
} else {
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Doctor | View Prescription</title>
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
            .prescription-container {
                background: white;
                border: 2px solid #1fb5ad;
                border-radius: 10px;
                padding: 30px;
                margin: 20px 0;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
                position: relative;
            }
            .prescription-header {
                border-bottom: 3px double #1fb5ad;
                padding-bottom: 20px;
                margin-bottom: 30px;
                text-align: center;
            }
            .hospital-info {
                text-align: center;
                margin-bottom: 30px;
            }
            .hospital-name {
                font-size: 28px;
                font-weight: bold;
                color: #1fb5ad;
                margin-bottom: 5px;
            }
            .hospital-address {
                font-size: 14px;
                color: #666;
            }
            .patient-info {
                margin-bottom: 30px;
            }
            .info-table {
                width: 100%;
                border-collapse: collapse;
            }
            .info-table td {
                padding: 8px 15px;
                border: 1px solid #ddd;
            }
            .info-table tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            .medicine-table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            .medicine-table th {
                background: #1fb5ad;
                color: white;
                padding: 12px 15px;
                text-align: left;
            }
            .medicine-table td {
                padding: 10px 15px;
                border: 1px solid #ddd;
            }
            .medicine-table tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            .doctor-signature {
                margin-top: 50px;
                text-align: right;
            }
            .signature-line {
                border-top: 1px solid #333;
                width: 200px;
                display: inline-block;
                margin-top: 60px;
            }
            .prescription-footer {
                margin-top: 30px;
                padding-top: 20px;
                border-top: 1px solid #ddd;
                font-size: 12px;
                color: #666;
                text-align: center;
            }
            .rx-symbol {
                font-size: 40px;
                color: #1fb5ad;
                position: absolute;
                top: 20px;
                right: 30px;
                transform: rotate(-10deg);
            }
            .print-btn {
                margin-bottom: 20px;
            }
            .watermark {
                position: absolute;
                opacity: 0.1;
                font-size: 120px;
                color: #1fb5ad;
                transform: rotate(-45deg);
                top: 40%;
                left: 20%;
                z-index: -1;
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
                                <h1 class="mainTitle">Doctor | View Prescription</h1>
                            </div>
                            <ol class="breadcrumb">
                                <li>
                                    <span>Doctor</span>
                                </li>
                                <li class="active">
                                    <span>View Prescription</span>
                                </li>
                            </ol>
                        </div>
                    </section>

                    <div class="container-fluid container-fullw bg-white">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="text-right print-btn">
                                    <button class="btn btn-primary" onclick="printPrescription()">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                </div>

                                <?php
                                $prescription_id = $_GET['code'];
                                $vid = $_GET['patient_id'];

                                // Get prescription details
                                $prescription_query = mysqli_query($con, "SELECT * FROM tblpatient WHERE id={$_GET['pat_id']}");
                                $prescription = mysqli_fetch_array($prescription_query);

                                // Get medicines for this prescription
                                $medicines_query = mysqli_query($con, "SELECT * FROM tblprescription_medicines 
                                                                      WHERE prescription_id = '$prescription_id' ");
                                ?>

                                <div class="prescription-container" id="prescriptionPrint">
                                    <div class="watermark">PRESCRIPTION</div>
                                    <div class="rx-symbol">℞</div>

                                    <div class="hospital-info">
                                        <div class="hospital-name">SIGMA HEALTHCARE</div>
                                        <div class="hospital-address">
                                            123 Health Street, Medical City, MC 12345 | Phone: (555) 123-4567 | www.medicalhospital.com
                                        </div>
                                    </div>

                                    <div class="prescription-header">
                                        <h2 style="color: #1fb5ad; margin: 0;">SIGMA  PRESCRIPTION</h2>
                                        <p style="margin: 5px 0; color: #666;">Prescription ID: RX#<?php echo str_pad($prescription_id, 6, '0', STR_PAD_LEFT); ?></p>
                                        <p style="margin: 0; color: #666;">Date: <?php echo date('F j, Y', strtotime($prescription['CreationDate'])); ?></p>
                                    </div>

                                    <div class="patient-info">
                                        <table class="info-table">
                                            <tr>
                                                <td width="20%"><strong>Patient Name:</strong></td>
                                                <td width="30%"><?php echo $prescription['PatientName']; ?></td>
                                                <td width="20%"><strong>Age:</strong></td>
                                                <td width="30%"><?php echo $prescription['PatientAge']; ?> years</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Gender:</strong></td>
                                                <td><?php echo ucfirst($prescription['PatientGender']); ?></td>
                                                <td><strong>Contact:</strong></td>
                                                <td><?php echo "+880".$prescription['PatientContno']; ?></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <h4 style="color: #1fb5ad; margin-bottom: 15px;">Medications</h4>
                                    <table class="medicine-table">
                                        <thead>
                                        <tr>
                                            <th width="5%">#</th>
                                            <th width="25%">Medicine Name</th>
                                            <th width="15%">Dosage</th>
                                            <th width="15%">Frequency</th>
                                            <th width="15%">Duration</th>
                                            <th width="25%">Instructions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $counter = 1;
                                        while($medicine = mysqli_fetch_array($medicines_query)) {
                                            ?>
                                            <tr>
                                                <td><?php echo $counter; ?></td>
                                                <td><strong><?php echo $medicine['medicine_name']; ?></strong></td>
                                                <td><?php echo $medicine['dose']; ?></td>
                                                <td><?php echo $medicine['timing']; ?></td>
                                                <td><?php echo $medicine['duration']; ?></td>
                                                <td>
                                                    <?php
                                                    if($medicine['instructions']!=null){
                                                        echo $medicine['instructions'];
                                                    }else{
                                                        echo "---";
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <?php
                                            $counter++;
                                        }
                                        ?>
                                        </tbody>
                                    </table>


<?php
$sql = "select * from doctors where id={$_SESSION['id']}";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_array($result);
?>
                                    <div class="doctor-signature">
                                        <div style="margin-bottom: 10px;">
                                            <strong>Dr. <?php echo $row['doctorName']; ?></strong><br>
                                            <?php echo $row['specialization']; ?><br>
                                            <?php echo"+880".$row['contactno']; ?>
                                        </div>
                                        <div class="signature-line"></div>
                                        <div style="margin-top: 5px;">Doctor's Signature</div>
                                    </div>

                                    <div class="prescription-footer">
                                        <p>This is a computer-generated prescription. No signature is required for validity.</p>
                                        <p>For any queries, please contact: Medical Hospital Pharmacy | Phone: (555) 123-4567</p>
                                    </div>
                                </div>
                            </div>
                        </div>
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
        function printPrescription() {
            var printContent = document.getElementById('prescriptionPrint').innerHTML;
            var originalContent = document.body.innerHTML;

            document.body.innerHTML = printContent;
            window.print();
            document.body.innerHTML = originalContent;
            window.location.reload();
        }

        function downloadPDF() {
            alert('PDF download functionality would be implemented here with a PDF generation library.');
            // In a real implementation, this would generate a PDF using libraries like jsPDF or server-side PDF generation
        }

        jQuery(document).ready(function() {
            Main.init();
            FormElements.init();
        });
    </script>
    </body>
    </html>
<?php } ?>