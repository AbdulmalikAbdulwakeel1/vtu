<?php 
    $activePage = 'result';
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

    <title>Check Result</title>

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
                    <h1>Check Result</h1>
                </div>
            </div>