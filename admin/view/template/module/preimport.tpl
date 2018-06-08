<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-preimport" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-cogs"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body">
		<p><?php echo $placeholder; ?></p>
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-preimport" class="form-horizontal">
          <div class="form-group">

            <label for="userfile">файл импорта</label>

            <input type="file" name="userfile" id="userfile" required>

          </div>




          <button type="submit" class="btn btn-primary">Загрузить</button>
        </form>

<?php
if  (isset($result_file_name)){  ?>
        <a href="<?=$result_file_name;?>" download >скачать файл</a>
<?php } ?>

      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>