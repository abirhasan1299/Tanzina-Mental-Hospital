<?php
include('include/config.php');


if(!empty($_POST["doctor"]))
{

    $sql=mysqli_query($con,"select * from tbltimes where doctor_id='".$_POST['doctor']."'");
    while($row=mysqli_fetch_array($sql))
    {?>
        <option value="<?php echo $row['id']; ?>"><?php echo "From: ".date("h:i A", strtotime($row['t_from']))." -  To: ".date("h:i A", strtotime($row['t_to'])); ?></option>
        <?php
    }
}

?>

