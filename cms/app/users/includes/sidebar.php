<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="assets/img/hannibal.jpg" class="img-circle" width="80"></a></p>
                   <?php $query=mysqli_query($bd, "select fullName from users where userEmail='".$_SESSION['login']."'");
 while($row=mysqli_fetch_array($query)) 
 {
 ?> 
              	  <h5 class="centered"><?php echo htmlentities($row['fullName']);?></h5>
                  <?php } ?>
              	  	
                  <li class="mt">
                      <a href="dashboard.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Tableau de bord</span>
                      </a>
                  </li>


                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>¨Paramétres du compte</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="profile.php">Profil</a></li>
                          <li><a  href="change-password.php">Changer mot de passe</a></li>
                        
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="register-complaint.php" >
                          <i class="fa fa-book"></i>
                          <span>Deposer un Ticket</span>
                      </a>
                    </li>
                  </li>
                  <li class="sub-menu">
                      <a href="complaint-history.php" >
                          <i class="fa fa-tasks"></i>
                          <span>Historique des Tickets</span>
                      </a>
                      
                  </li>
                 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>