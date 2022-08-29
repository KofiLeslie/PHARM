<?php
include('header.php');
titl_name('Change Password');
?>
    <!-- including side navigations -->
    <?php 
    if ($_SESSION['ad_level'] == 1) {
      include "sections/sidenav.html";
    } else if ($_SESSION['ad_level'] == 2) {
      include "sections/pharmacist_nav.html";
    }
    ?>
    <div class="container-fluid">
      <div class="container">
        <!-- header section -->
        <?php
          require "php/header.php";
          createHeader('key', 'Change Passowrd', 'Set New Password');
          // header section end
        ?>
        <div class="row">
          <div class="row col col-md-6">

            <div class="row col col-md-12">
              <div class="col col-md-12 form-group">
                <label class="font-weight-bold" for="old_password">Old Password :</label>
                <input id="old_password" type="text" class="form-control" placeholder="old password" onblur="checkAdminPassword(this.value, 'old_password_error');">
                <code class="text-danger small font-weight-bold float-right mb-2" id="old_password_error" style="display: none;"></code>
              </div>
            </div>

            <div class="row col col-md-12">
              <div class="col col-md-12 form-group">
                <label class="font-weight-bold" for="password">New Password :</label>
                <input id="password" type="text" class="form-control" placeholder="password" style="max-height: 100px;">
                <code class="text-danger small font-weight-bold float-right mb-2" id="password_error" style="display: none;"></code>
              </div>
            </div>

            <div class="row col col-md-12">
              <div class="col col-md-12 form-group">
                <label class="font-weight-bold" for="confirm_password">Confirm New Password :</label>
                <input id="confirm_password" type="password" class="form-control" placeholder="confirm password">
                <code class="text-danger small font-weight-bold float-right mb-2" id="confirm_password_error" style="display: none;"></code>
              </div>
            </div>

            <div class="row col col-md-12 m-auto" id="change">
              <div class="col col-md-4 form-group float-right"></div>
              <div id="change_button" class="col col-md-4 form-group float-right">
                <button class="btn btn-warning form-control font-weight-bold" onclick="changePassword();">Reset Password</button>
              </div>
              <div id="password_button" class="col col-md-4 form-group float-right">
                <a href="my_profile.php" class="btn btn-primary form-control font-weight-bold">Profile</a>
              </div>
            </div>

          </div>
        </div>
        <hr style="border-top: 2px solid #ff5252;">
      </div>
    </div>
  </body>
</html>
