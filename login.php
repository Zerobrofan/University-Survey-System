<!DOCTYPE html>
<html lang="en">
<?php
session_start();
include('./db_connect.php');
?>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Login | NMU Survey System</title>
  <?php include('./header.php'); ?>
  <?php
  if (isset($_SESSION['login_id']))
    header("location:index.php?page=home");
  ?>
  <style>
    .nmu-btn {
      background-color: #921c21;
      color: #FFFFFF;
      border-color: #921c21;
    }

    .nmu-btn:hover {
      background-color: #581114;
      border-color: #581114;
    }

    .nmu-logo {
      max-width: 275px;
      height: auto;
      margin-top: -25px;
    }

    h1 {
      margin-top: 10px;
      margin-bottom: 10px;
      color: black;
    }
  </style>
</head>

<body class="bg-dark">
  <main class="container">
    <div class="row" id="loginForm">
      <section class="col-md-6 card p-5 shadow mx-auto mt-5 rounded">
        <form id="login-form">
          <div class="text-center">
            <img src="https://i.ibb.co/QF0YC6X/nmu2.png" class="nmu-logo" alt="nmu-logo">
            <h1>NMU Survey System</h1>
            <br><br>
          </div>
          <div class="form-group">
            <input type="text" name="email" id="email" class="form-control rounded-pill" placeholder="Enter Your Username">
          </div>
          <div class="form-group">
            <input type="password" name="password" id="password" class="form-control rounded-pill" placeholder="Enter Your Password">
          </div>
          <button type="submit" class="btn nmu-btn btn-danger btn-block rounded-pill">Login</button>
        </form>
      </section>
    </div>
  </main>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function() {
      $('#login-form').submit(function(e) {
        e.preventDefault()
        $('#login-form button[type="submit"]').attr('disabled', true).html('Logging in...');
        if ($(this).find('.alert-danger').length > 0)
          $(this).find('.alert-danger').remove();
        $.ajax({
          url: 'ajax.php?action=login',
          method: 'POST',
          data: $(this).serialize(),
          error: err => {
            console.log(err)
            $('#login-form button[type="submit"]').removeAttr('disabled').html('Login');
          },
          success: function(resp) {
            if (resp == 1) {
              location.href = 'index.php?page=home';
            } else {
              $('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
              $('#login-form button[type="submit"]').removeAttr('disabled').html('Login');
            }
          }
        })
      })
    });
  </script>
</body>
</html>