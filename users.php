<?php 
    include "head.php"; 
    include "header.php"; 
    include "aside.php"; 
?>

<div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
        <section class="content-header"><!-- Content Header (Page header) -->
            <h1>Usuarios </h1>
            <ol class="breadcrumb">
                <li><a href="home.php"><i class="fa fa-dashboard"></i> Inicio</a></li>
                <li class="active"><a href="myfiles.php"><i class="fa fa-archive"></i> Usuarios</a></li>
                
            </ol>
        </section>
<?php 
$files=mysqli_query($con,"select * from user"); ?>
        <section class="content"><!-- Main content -->
            <div class="row"><!-- Small boxes (Stat box) -->
                <div class="col-md-12">
                	<div class="box-body no-padding">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                    	<th>ID</th>
                                        <th>Nombre</th>
                                        <th>Correo</th>
                                        <th>Estado</th>
                                        <th></th>
                                    </tr>
                                </thead>    
                                <tbody>    
                                	
                                       <?php foreach($files as $file):?>
                                    <tr>
                                       <td>
                                            <?php echo $file['id'];?>
                                       </td> 
                                       <td>
                                            <?php echo $file['fullname'];?>
                                       </td> 
                                       <td>
                                            <?php echo $file['email'];?>
                                       </td> 
                                       <td>
                                       	<?php if($file['is_active'] ==1){ echo "Activo";}else { echo "Inactivo";} ?>
                                       </td>
 									</tr>
                                     <?php endforeach; ?>
                                    
                                    <?php //endforeach; ?>
                                </tbody>
                            </table>
                            
                        </div><!-- /.box-body --><br>
                    </div><!-- /.box -->