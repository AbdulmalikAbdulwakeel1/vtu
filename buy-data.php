<?php 
    $activePage = 'data';
    include('config/constants.php'); 
    include('partials/login-check.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <!-- My CSS -->
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/session.css">
    <link rel="stylesheet" href="css/sidebar.css">
    <link rel="stylesheet" href="css/buydata.css">
    <link rel="stylesheet" href="css/modal.css">

    <!-- Include SweetAlert CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">

    <title>Buy Data</title>

    <style>
    /* Responsive styling for SweetAlert */
    .swal2-popup {
      width: 70% ;
      max-width: 400px;
      font-size: 1em;
      padding: 20px;
    }

    @media (max-width: 600px) {
      .swal2-popup {
        width: 70% !important;
        margin-right: 30px !important;
      }
    }

    .swal2-title {
      font-size: 1.5em;
    }

    .swal2-actions button {
      width: 100%;
      margin-top: 10px;
    }
  </style>
</head>
<body>
    <!-- sidebar  -->
    <?php include('partials/sidebar.php') ?>
    <!-- sidebar  -->

    <!-- CONTENT -->
    <section id="content">
        <!-- NAVBAR -->
        <?php include('partials/navbar.php') ?>
        <!-- NAVBAR -->

        <!-- MAIN -->
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Buy Data</h1>
                </div>
            </div>
            <form action="" method="POST">
                <div class="box-info">
                    <div class="network">
                        <h4>Phone Number:</h4>
                        <div class="box">
                            <span class="index">+234</span>
                            <input type="number" name="number"  class="phone-no">
                        </div>
                    </div>

                    <div class="network nt">
                        <h4>Network:</h4>
                        <select class="box" name="" id="" required>
                            <option selected value="">Select Network Type</option>
                            <option  value="1">MTN</option>
                            <option  value="2">Glo</option>
                            <option  value="3">Airtel</option>
                            <option  value="6">9Mobile</option>
                           
                        </select>
                    </div>

                    <div class="network nt">
                        <h4>Data Bundle:</h4>
                        <select class="box" name="data_type" id="">
      <?php  $select=mysqli_query($connect,"SELECT * FROM databundle WHERE n_type='1'");
        if(mysqli_num_rows($select)>0){
            while($row=mysqli_fetch_array($select)){

         
        ?>
            <option value="<?php echo $row['data_id']; ?>"><?php $type= $row['network']." ".
             $row['size']." ".  "&#8358"." ".$row['amount']." ".
             $row['plan_type'].",".$row['validity']."days validity" ; echo $type;?></option>
        <?php }} ?>
        </select>
                    </div>

                    <div class="network nt">
                        <h4>Amount:</h4>
                        <div class="box" style="cursor: not-allowed;">
                            <input type="text" name="price" value="<?php 
                            $select=mysqli_query($connect,"SELECT * FROM databundle WHERE data_id='182'");
                            $row=mysqli_fetch_array($select);
                            echo $row['amount'];
                                
                             ?>" disabled>
                        </div>
                    </div>

                    <?php
                    if(isset($_POST['buy'])){

                    $number=$_POST['number'];

// NumVerify API key
$api_key = 'af318bdf1bca4dfeaa5d358bf11c6c6c';

// Phone number to lookup
$phone_number = '+234'.$number;  // Replace with the desired phone number

// NumVerify API endpoint
$api_endpoint = "http://apilayer.net/api/validate?access_key=$api_key&number=$phone_number";

// Initialize cURL session
$ch = curl_init($api_endpoint);

// Set cURL options
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// Execute cURL session
$response = curl_exec($ch);

// Close cURL session
curl_close($ch);

// Parse the response
$data = json_decode($response, true);

// Check if the request was successful
if ($data && isset($data['carrier'])) {
    $carrier_name = $data['carrier'];
    echo "Carrier: $carrier_name";
} else {
    echo "Unable to determine carrier.";
}}
?>

                </div>

                <center><input type="submit" name="buy" class="primary-btn" value="Buy" id="buyButton" ></center>
            </form>
        </main>
        <!-- MAIN -->
    </section>
    <!-- CONTENT -->
    <!-- Include SweetAlert JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

   <script>
        document.addEventListener('DOMContentLoaded', function () {
            const buyButton = document.getElementById('buyButton');

            buyButton.addEventListener('click', function () {
                showAlert();
            });

            // Function to trigger SweetAlert
            function showAlert() {
                Swal.fire({
                    title: 'SweetAlert Title',
                    text: 'Your message goes here',
                    icon: 'success', // You can change it to 'info', 'warning', 'error', etc.
                });
            }
        });
    </script>
    <script src="js/dashboard.js"></script>
    <script src="js/copy.js"></script>
</body>
</html>
