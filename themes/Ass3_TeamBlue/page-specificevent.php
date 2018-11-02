<?php
  /* Template Name: Specific Event */
  get_header();
?>

  <?php
      // This Provides the Event Post ID.
      $var_value = $_GET["?name"];
      // $event_post = get_post($var_value); // not the best way
      $args = array('post_type'=> 'event', 'p' => intval($var_value));
      $queryPost = new WP_Query($args); // This Works

      $queryPost->the_post();

      $event_name = get_field('event_name');
      $event_date = get_field('event_date');
      $event_image = get_field('event_image');
      $event_location = get_field('event_city');
      $event_des = get_field('event_full');
      $event_reviewer = get_field('event_reviewer');
      $event_review = get_field('event_review');


      echo '<div style="background-color: #424242; padding: 10px;">';
      echo '<h1 style="font-weight: bold;text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans; color: #e67e22">';
        print_r($event_name);
      echo '</h1>';
      echo '</div>';
      echo '<br>';


      echo '<div class="fill">';
      // This Prints Image.
      echo '<img src="';
      print_r($event_image);
      echo '">';

      echo '</div>';

      echo '<div style="font-weight: bold;text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans;">"';
      print_r($event_review);
      echo '"</div>';
      echo '<div style="font-weight: bold;text-align: center;font-family: Josefin Sans;">-';
      print_r($event_reviewer);
      echo '</div>';
      echo '<br><br>';


      echo'<div class="row">';

       // event quote
       echo '<div class="col-sm-8">';
           echo '<div style="margin-left: 6vw; margin-right: 2vw;font-family: Josefin Sans;">';
           print_r($event_des);
           echo '</div>';

       echo'</div>';

       echo '<div class="col-sm-4">';
        echo '<div style="font-weight: bold; text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans">When</div>';

         echo '<div style="text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans;">';
         $format_in = 'F j, Y'; // the format your value is saved in (set in the field options)
         $format_out = 'F j, Y'; // the format you want to end up with
         $date = DateTime::createFromFormat($format_in, get_field('event_date'));
        print_r($date->format( $format_out));
         echo '</div>';

         echo '<br>';

         echo '<div style="font-weight: bold; text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans;">Where</div>';

         echo '<div style="text-align: center; margin-left: 2vw; margin-right: 2vw;font-family: Josefin Sans;">';
          print_r($event_location);
         echo '</div>';

         echo '<br>';
         echo '<div style="text-align: center;font-family: Josefin Sans;">';
          echo '<button style="border-radius: 50px; padding: 10px; background-color: #3498db; color: #ecf0f1; font-weight: bold;">Book Tickets</button>';
         echo '</div>';


       echo'</div>';


     // end row
     echo '</div>';

     echo '<br>';

  ?>




  </div>

<?php
  get_footer();
?>
