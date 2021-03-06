<?php if (count($languages) > 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
  <div class="btn-group">
    <button id='btnLanguage' class="btn btn-link dropdown-toggle" data-toggle="dropdown">
        <span class="hidden-xs"><?php echo $text_language; ?></span> 
        <?php foreach ($languages as $language) { ?>
        <?php if ($language['code'] == $code) { ?>
        <img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
        <?php } ?>
        <?php } ?>
        <span class="fa fa-chevron-down"">
    </button>

    <ul class="dropdown-menu dropdown-menu-right" id="dropdown-languages">
      <?php foreach ($languages as $language) { ?>
      <li> 
        <button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>"> <?php echo $language['name']; ?> <img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> 
        </button>
      </li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
