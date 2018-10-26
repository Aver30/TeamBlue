<!doctype html>
<?php
  /* Template Name: List Of Events*/
  get_header();

?>
<div>
  <?php
    [pdb_list filter="event_city=Canberra"];

  ?>
  hey there this is being displayed
</div>

<?php
  get_footer();
?>
