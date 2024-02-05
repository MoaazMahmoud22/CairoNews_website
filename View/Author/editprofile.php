<?php
if(!isset($_SESSION["username"]))
{
  session_start();
}


require_once '../../Models/Users.php';
require_once '../../Controllers/ProfileController.php';

$add="";
$errMsg="";
$add2="";
$errMsg2="";

if (isset($_POST['pass']) && isset($_POST['email'])&& isset($_POST['FullName'])&& isset($_POST['oldpass'])) 
{
  if (!empty($_POST['pass']) && !empty($_POST['email'])&& !empty($_POST['FullName'])&& !empty($_POST['oldpass'])) 
  {
  
    
    $profile=new profileContoller;
    $user=new Users;
    $oldpass=$_POST['oldpass'];
    $user->setusername($_SESSION["username"]);
    $user->email=$_POST['email'];
    $user->setPass($_POST['pass']);
    $user->FullName=$_POST['FullName'];
    if($oldpass==$_SESSION['password']){
    if($profile->editprofile($user))
    {
      $add="edited Successfully";

       // Update session variables with new information
      $_SESSION['Email'] = $user->email;
      $_SESSION['Name'] = $user->FullName;
      $_SESSION["password"]=$user->getPass();
    
    }
    else
    {
      $errMsg=$_SESSION["errMsg"];
    }
  }else{
    $errMsg="Incorrect Old Pass";
  }

  }
  else
  {
    $errMsg="Please fill all fields";
  }
}



if ( isset($_FILES["image"]))  
{
  $myprofile= new Profile;

$myprofile->username=$_SESSION["username"];


$location="../images/".date("h.i.s").$_FILES["image"]["name"];

          if(move_uploaded_file($_FILES["image"]["tmp_name"],$location))
              {
                $myprofile->image=$location;
                if($profile->SetIamge($myprofile))
                  {
                    $add2="added sucessfuly";
                    $_SESSION["photo"]= $myprofile->image;
                    
                    
                    }
                    else{
                    $errMsg2=$_SESSION["errMsg"];
                    }
          }
          
          
   } 

  else{
     $errMsg2="Error in upload";
     }


?>

<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>CairoNews</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/pyramid.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
  </head>
  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="Home.php" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img src="../assets/img/favicon/pyramid.png" alt="" style="width: 10%;">
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2" style="z-index: 2; position:absolute; padding-left: 4rem;">CairoNews</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
           <!-- Home -->
           <li class="menu-item ">
              <a href="author.php" class="menu-link" >
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Author Page</div>
              </a>
            </li>
            <li class="menu-item ">
              <a href="ArticleAuthor.php" class="menu-link" >
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Articles Page</div>
              </a>
            </li>

            

            
          </ul>
        </aside>
        <!-- / Menu -->
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..."
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="<?php echo $_SESSION["photo"]?>" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="<?php echo $_SESSION["photo"]?>" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                          <?php if (isset($_SESSION["username"])){
                            
                            if (!isset($_SESSION["username"])) {

                              header("location:Home.php");
                            } else {
                              if ($_SESSION["position"] != "author") {
                                 header("location:Home.php");
                              }
                            }
                           ?> <span class="fw-semibold d-block"><?php  echo $_SESSION["Name"]?></span>
                           <small class="text"><?php echo $_SESSION["position"]?> </small>
                           <?php
                          }
                          
                           if (!isset($_SESSION["username"])) {
                            ?> <span class="fw-semibold d-block"><?php  echo "Visitor" ;?></span>
                            <?php
                          }
                          ?>
                          
                        
                          
                          </div>
                        </div>
                      </a>
                      
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <?php
                    if(isset($_SESSION["username"])){
                   ?> <li>
                      <a class="dropdown-item" href="profile.php">
                        <i class="bx bx-user me-2"></i>
                        
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li><?php
                    }
                    else{
                      ?>
                      <a class="dropdown-item" href="../Auth/auth-register-basic.php">
                        <i class="bx bx-user me-2"></i>
                        
                        <span class="align-middle">SignUp</span>
                      </a>
                      <a class="dropdown-item" href="../Auth/auth-login-basic.php">
                        <i class="bx bx-user me-2"></i>
                        
                        <span class="align-middle">Login</span>
                      </a>
                      <?php
                    }
                      ?>
                    
                    
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <?php
                    if(isset($_SESSION["username"])){
                   ?> 
                    <li>
                      <a class="dropdown-item" href="../Auth/auth-login-basic.php?logout">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                    <?php
                    }
                    ?>
                    
                  </ul>
                </li>
                <!--/ User -->
               </ul>
             </div>
           </nav>

           <div class="container mt-5">
    
            <div class="row d-flex justify-content-center">
                
                <div class="col-md-7">
                    <div class="card-body text-center"> 
                    <img class="img-account-profile rounded-circle mb-2" src="<?php echo $_SESSION["photo"]?>" width="300px" height="300px" alt="">
                    <h4><?php echo $_SESSION["Name"]?></h4>
                    <p><?php echo $_SESSION["position"]?></p>
                    

                    
                    <?php 
              
              if($errMsg!="")
              {
                  ?>
                      <div class="alert alert-danger" role="alert"><?php echo $errMsg ?></div>
                  <?php
              }
              if($add!="")
              {
                  ?> 
                      <div class="alert alert-success" role="alert"><?php echo $add ?></div>
                  <?php
              }
              ?>
                    
                    <form id="formAuthentication" class="card-body" action="profile.php" method="POST"enctype="multipart/form-data" >
                      <input type="file" id="image" name="image" class="btn btn-primary">
                      <input type="submit" class="btn btn-primary" name="photo">
                      <h3>Upload New Photo</h3>
                    </form>
                    <br> <br>

                    
                    
                </div>
                    
                </div>
                
            </div>
            
        </div>

        <h4>Edit Profile<br> </h4>
        <?php 
              
              if($errMsg!="")
              {
                  ?>
                      <div class="alert alert-danger" role="alert"><?php echo $errMsg ?></div>
                  <?php
              }
              if($add!="")
              {
                  ?> 
                      <div class="alert alert-success" role="alert"><?php echo $add ?></div>
                  <?php
              }
              ?>
        <div class="col-xxl">
          
          <div class="card mb-4">
            <div class="card-header d-flex align-items-center justify-content-between">
              <h5 class="mb-0">Basic Layout</h5>
              <!-- <small class="text-muted float-end">Default label</small> -->
            </div>
            <div class="card-body">
            <form id="formAuthentication" class="card-body" action="editprofile.php" method="POST"enctype="multipart/form-data" >


                
                <div class="row mb-3">

                  <label class="col-sm-2 col-form-label" for="FullName">New FullName</label>
                  <div class="col-sm-10">
                    <input type="text"  value="<?php  echo $_SESSION["Name"]?>" class="form-control" id="FullName" name="FullName" placeholder="John Doe">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label" for="pass">old Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="oldpass" name="oldpass" placeholder="enter old Password">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label" for="pass">New Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Enter new password">
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label" for="email">New Email</label>
                  <div class="col-sm-10">
                    <div class="input-group input-group-merge">
                      <input type="email" value="<?php  echo $_SESSION["Email"]?>" name="email" id="email" class="form-control" placeholder="john.doe" aria-label="john.doe" aria-describedby="basic-default-email2">
                      <span class="input-group-text" id="email">@example.com</span>
                    </div>
                    <div class="form-text">You can use letters, numbers &amp; periods</div>
                  </div>
                </div>
                
                
                <div class="row justify-content-end">
                  <div class="col-sm-10">
                    <button type="submit" name="submit" class="btn btn-primary">Edit</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

  <!-- Footer -->
  <footer class="footer bg-light">
                  <div class="container-fluid d-flex flex-md-row flex-column justify-content-between align-items-md-center gap-1 container-p-x py-3">
                    <div>
                      <a href="Home.php" target="_blank" class="footer-text fw-bolder">CairoNews</a>
                      ©
                    </div>
                  
                      <div class="dropdown dropup footer-link me-3">
                        
                        
                      </div>
                      <a href="../Auth/auth-login-basic.php?logout" class="btn btn-sm btn-outline-danger"><i class="bx bx-log-out-circle"></i> Logout</a>
                    </div>
                  </div>
                </footer>
  <!-- Footer -->

</div>
<!-- End of .container -->
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    

    <!-- Core JS -->
    <!-- build:js ../assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script> 
    
</body>
</html>