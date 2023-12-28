 <nav class="navbar fixed bg-secandary-md-nowrap p-0 shadow">
  <a class="navbar-brand col" href="#"><img src="templates/logo.png" alt="" width="80" height="40"> </a>
			


    	<?php
    		if (isset($_SESSION['admin_id'])) {
    			?><a class="nav-link" href="../admin/admin-logout.php">Sign out</a>
    			<?php
    		}else{
    			$uriAr = explode("/", $_SERVER['REQUEST_URI']);
    			$page = end($uriAr);
    			if ($page === "login.php") {
    				?>
	    				<a class="nav-link" href="../admin/register.php">Register</a>
	    			<?php
    			}else{
    				?>
	    				<a class="nav-link" href="../admin/login.php">Login</a>
	    			<?php
    			}

    		}

    	?>
      
    </li>
  </ul>
</nav>