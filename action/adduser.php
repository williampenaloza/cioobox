<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CIIOBOX - ciioingenieria.com </title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">


      <!-- Bootstrap 3.3.6 -->
      <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
      <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/font-awesome/css/font-awesome.min.css">

      <!-- Ionicons -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
      <!-- DataTables -->
      <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
      <!-- Theme style -->
      <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
      <!-- AdminLTE Skins. Choose a skin from the css/skins
           folder instead of downloading all of them to reduce the load. -->
      <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    
        <!-- iCheck -->
    <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">

    <!-- micss -->
    <link rel="stylesheet" href="css/micss.css">
    <style>
            .skin-black .main-header .logo {
                background-color: #dd4b39;
                color: #fff;
            }
            .skin-black .main-header .logo:hover {
                background-color: #dd4b39;
                color: #fff;
            }
            .skin-black .main-header .navbar {
                background-color: #dd4b39;
                color: #fff;
            }
            .skin-black .main-header li.user-header{
                background-color: #dd4b39;
                color: #fff;
            }
            .skin-black .main-header .navbar .sidebar-toggle:hover{
                background-color: #dd4b39;
                color: #fff;
            }

            .skin-black .main-header .navbar>.sidebar-toggle {
                color: #fff;
                border-right: 1px solid #dd4b39;
            }



            .skin-black .main-header .navbar .nav>li>a:hover, .skin-black .main-header .navbar .nav>li>a:active, .skin-black .main-header .navbar .nav>li>a:focus, .skin-black .main-header .navbar .nav .open>a, .skin-black .main-header .navbar .nav .open>a:hover, .skin-black .main-header .navbar .nav .open>a:focus, .skin-black .main-header .navbar .nav>.active>a {
                background: #dd4b39;
                color: #fff;
            }

            .skin-black .main-header .navbar .nav>li>a:hover, .skin-black .main-header .navbar .nav>li>a:active, .skin-black .main-header .navbar .nav>li>a:focus, .skin-black .main-header .navbar .nav .open>a, .skin-black .main-header .navbar .nav .open>a:hover, .skin-black .main-header .navbar .nav .open>a:focus, .skin-black .main-header .navbar .nav>.active>a:hover {
                background: #d24837;
                color: #fff;
            }

            .skin-black .main-header .navbar .nav>li>a, .skin-black .main-header .navbar .nav>li>a:active, .skin-black .main-header .navbar .nav>li>a:focus, .skin-black .main-header .navbar .nav .open>a, .skin-black .main-header .navbar .nav .open>a:hover, .skin-black .main-header .navbar .nav .open>a:focus, .skin-black .main-header .navbar .nav>.active>a {
                color: #fff;
            }

            .skin-black .main-header .navbar .navbar-custom-menu .navbar-nav>li>a, .skin-black .main-header .navbar .navbar-right>li>a {
                border-left: 1px solid #dd4b39;
                border-right-width: 0;
            }
                
            .skin-black .main-header>.logo {
                background-color: #d24837;
                color: #fff;
                border-bottom: 0 solid transparent;
                border-right: 1px solid #dd4b39;
            }
            .skin-black .main-header>.logo:hover {
                background-color: #d24837;
            }
    </style>

</head>

<?php	

	session_start();
	/*Inicia validacion del lado del servidor*/
	if (empty($_POST['fullname'])) {
           $errors[] = "Nombre vacío";
        }else if (empty($_POST['email'])){
			$errors[] = "Correo Vacio vacío";
		} else if (empty($_POST['password'])){
			$errors[] = "Contraseña vacío";
		} else if (
			!empty($_POST['fullname']) &&
			!empty($_POST['password'])
		){

		include "../config/config.php";//Contiene funcion que conecta a la base de datos


		$fullname=$_POST["fullname"];
		$password=sha1(md5($_POST["password"]));
		$email=$_POST["email"];
		$created_at = "NOW()";
		$is_admin=0;
		$default_profile="default.png";
		$sqls = "select * from user where (email= \"$email\")";
		$users = mysqli_query($con,$sqls);
		$count = mysqli_num_rows($users);
		$is_admin=0;
		if(isset($_POST["is_admin"])){$is_admin=1;}


		if ($count>0){
				$errors []= "El correo electrónico ya existe en nuestra base de datos";
			}else{

			$sql = "insert into user (fullname,email,is_admin,password,image,created_at) ";
			$sql .= "value (\"$fullname\",\"$email\",\"$is_admin\",\"$password\",\"$default_profile\",$created_at)";

			$query_new_insert = mysqli_query($con,$sql);
				if ($query_new_insert){
					$messages[] = "El registro ha sido ingresado satisfactoriamente.";
				} else{
					$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);
				}
			}	
			
		}else{
			$errors []= "Error desconocido.";
		}
		
		if (isset($errors)){
			
			?>
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>Error!</strong> 
					<?php
						foreach ($errors as $error) {
								echo $error;
							}
						?>
			</div>
			<?php
			}
			if (isset($messages)){
				
				?>
				<div class="alert alert-success" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						<strong>¡Bien hecho!</strong>
						<?php
							foreach ($messages as $message) {
									echo $message;
								}
							?>
				</div>
				<?php
			}


?>

<a href="../registrar.php">Regresar</a>