<?php
include('include/config.php');


if(!empty($_POST["doctor"])) 
{

 $sql=mysqli_query($con,"select experience from doctors where id='".$_POST['doctor']."'");
 while($row=mysqli_fetch_array($sql))
 	{?>
 <option value="<?php echo htmlentities($row['experience']); ?>"><?php echo htmlentities($row['experience']); ?></option>
  <?php
}
}

?>

