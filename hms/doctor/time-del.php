<?php
include('include/config.php');

$sql = "DELETE FROM tbltimes WHERE id={$_GET['id']}";
mysqli_query($con, $sql) or die(mysqli_error($con));
mysqli_close($con);
echo "<script>window.location.href='time.php'</script>";