<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="POST">
        <label for="">network type</label>
        <select name="type" id="">
            <option value="">choose network type</option>
            <option value="mtn">MTN</option>
            <option value="glo">GLO</option>
            <option value="airtel">AIRTEL</option>
            <option value="9mobile">9MOBILE</option>
        </select>

        <label for="">data type to add</label>
        <?php  include('config/constants.php'); ?>

        <select name="data_type" id="">
      <?php  $select=mysqli_query($connect,"SELECT * FROM databundle");
        if(mysqli_num_rows($select)>0){
            while($row=mysqli_fetch_array($select)){

         
        ?>
            <option value="<?php echo $row['data_id']; ?>"><?php $type= $row['network']." ".
             $row['size']." ".  "&#8358"." ".$row['amount']." ".
             $row['plan_type'].",".$row['validity']."days validity" ; echo $type;?></option>
        <?php }} ?>
        </select>
        <input type="submit" value="submit" name="submit">
        <?php
if(isset($_POST['submit'])){
$type=$_POST['type'];
$data_type=$_POST['data_type'];
$insert=mysqli_query($connect,"INSERT INTO opt (network_type,data_ids) VALUES('$type','$data_type')");
}
        ?>
    </form>
</body>
</html>