<?php
	$activePage = 'dashboard';
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



	<title>Dashboard</title>
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
					<h1>Dashboard</h1>
                    
                    <?php
                            if(isset($_SESSION['add'])){// to check if is set or not
                                echo $_SESSION['add'];//Displaying session message if set
                                unset($_SESSION['add']);// Removing session message
                            }
                            if(isset($_SESSION['login'])){// to check if is set or not
                                echo $_SESSION['login'];//Displaying session message if set
                                unset($_SESSION['login']);// Removing session message
                            }
                    ?>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
			</div>

			<ul class="box-info">
				<li>
					<i class='bx' >₦</i>
					<span class="text">
						<h3>Available Balance</h3>
						<p>
                            <?php
                            $id = $_SESSION['user'];
                            $sql = "SELECT * FROM tbl_user WHERE id = '$id'";
                            $res = mysqli_query($connect, $sql);
                            $count = mysqli_num_rows($res); // function to get all the rows in database
                            if($count>0){
                                while($rows =mysqli_fetch_assoc($res)){
                                    $id = $rows['id'];
                                    $balance = $rows['balance'];
                                    echo "₦ $balance";
                                }
                            }
                            ?>
                        </p>
					</span>
				</li>
                
                <div class="link">
                    <a href="#"><i class='bx bx-plus' ></i>Add Money</a>
                    <a href="transaction-history.php?id=<?php echo $accountdetaild?>"><i class='bx bx-chevrons-left' ></i>Transaction</a>
                </div>

                <div class="link" >
                    <p>Referral Code: <span id="textToCopy4">Ql$w3PoZ-eF4</span> <iconify-icon icon="ph:copy" onclick="copyText('textToCopy4', 'copyMessage4')"></iconify-icon></p>
                    <div id="copyMessage4" class="copymessage" style="display: none;"></div>
                </div>
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Banks</h3>
					</div>
<?php
$select=mysqli_query($connect,"SELECT *  FROM tbl_user WHERE id='$id' ");
while($row=mysqli_fetch_array($select)){
    $account= $row['accountdetails'];
    $accountdetails = explode(', ', $account);

    foreach ($accountdetails as $accountdetail) {
        
        list($bankname, $accountnumber, $accountname) = explode(' - ', $accountdetail);


?>

					<div class="card-holder">
                        <div class="card">
                            <h2><?php echo $bankname; ?></h2>
                            <div class="card-detail">
                                <p>Account Number: <span id="textToCopy<?php echo $accountdetail;?>"><?php echo $accountnumber; ?></span> <iconify-icon icon="ph:copy" onclick="copyText('textToCopy<?php echo $accountdetail;?>', 'copyMessage<?php echo $accountdetail;?>')"></iconify-icon></p>
                                <div id="copyMessage<?php echo $accountdetail;?>" class="copymessage" style="display: none;"></div>
                                <div class="account-name"><?php echo $accountname; ?></div>
                            </div>
                        </div>

                    </div>
<?php    //}
    }
}?>

				</div>
				<div class="todo">
					<div class="head">
						<h3>Others</h3>
					</div>
					<ul class="todo-list">
						<li class="completed">
							<a href="buy-airtime.php">
                                <img src="images/airtime.svg" alt="airtime2cash">
                                <span>Airtime Topup</span>
                            </a>
						</li>
						<li class="not-completed">
							<a href="buy-data.php">
                                <img src="images/data.jpg" alt="airtime2cash">
                                <span>Buy Data</span>
                            </a>
						</li>
						<li class="completed">
							<a href="referral.php">
                                <img src="images/fundacc.jpeg" alt="airtime2cash">
                                <span>Referral bonus</span>
                            </a>
						</li>
						<li class="not-completed">
							<a href="airtime2cash.php">
                                <img src="images/airtime2cash.jpg" alt="airtime2cash">
                                <span>Airtime to Cash</span>
                            </a>
						</li>
						<li class="completed">
							<a href="eletricity-bill.php">
                                <img src="images/utility.jpg" alt="airtime2cash">
                                <span>Electricity Bill</span>
                            </a>
						</li>

                        <li class="not-completed">
							<a href="#">
                                <img src="images/resultchecker.png" alt="airtime2cash">
                                <span>Result Checkers</span>
                            </a>
						</li>

                        <li class="completed">
							<a href="#">
                                <img src="images/referral.png" alt="airtime2cash">
                                <span>My Referrals</span>
                            </a>
						</li>
					</ul>
				</div>
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
	<script src="js/dashboard.js"></script>
	<script src="js/copy.js"></script>
</body>
</html>