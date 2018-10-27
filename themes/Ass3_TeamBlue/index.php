<!doctype html>
<!-- https://www.proteusthemes.com/blog/displaying-custom-post-types-templates-querying/ -->
<?php
get_header();

?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->
<!-- Add Filter Options -->
<div class="row">
  <div class="container" style="margin-top: 40px">

    <form class="form-inline">
      <select class="form-control col-sm-3 " name='city' style="margin-right: 20px">
        <option value="array('Melbourne', 'Canberra')">All Locations</option>
        <option value="Melbourne">Melbourne</option>
        <option value="Canberra">Canberra</option>
      </select>

      <select class="form-control col-sm-3" name='topic' style="margin-right: 20px">
        <option value="All Topics">All Topics</option>
        <option value="Conflict">Conflict</option>
        <option value="Woman Rights">Woman Rights</option>
        <option value="Woman">Woman</option>
      </select>

      <select class="form-control col-sm-3 " name='type'>
        <option value="All Types">All Types</option>
        <option value="Film">Film</option>
        <option value="Music">Music</option>
        <option value="Article">Article</option>

      </select>

     <button type="submit" name='submit' class="btn btn-primary mb-2">Filter</button>
    </form>


  </div>
</div>



<!-- Print Custom Post Tiles -->
<!-- TO BE CONTINUED -->
<?php

  $var_value ='hellothere';
  $_SESSION['testing'] = $var_value;

  $args = array('post_type'=> 'event');

  if(isset($_POST['submit'])){
    echo '<div class="container"> blah blah blah';
    print_r($args);
    echo '</div>';


    $args = array(
      'post_type' => 'event',
      'tax_query' => array(
        array(
          'taxonomy' => 'city',
          'field' => 'name',
          'terms' => $location
        )
      )
    );
  }
  else{
    $location = $_POST['city'];
    $args = array('post_type' => 'event');
    echo '<div class="container"> blah blah blah';
    print_r($location);
    //print_r($args);
    echo '</div>';
  }
  /*
  array(
    'taxonomy' => 'event_type',
    'field' => 'name',
    'terms' => 'Film'
  ),
  array(
    'taxonomy' => 'topic',
    'field' => 'name',
    'terms' => 'Conflict'
  )
  */




  $events = new WP_Query($args);
  if ($events->have_posts()):
  ?>


    <div class="container" style="margin-top: 40px">
      <div class="card-columns">
        <?php
          while( $events->have_posts() ) :
            $events->the_post();
            ?>
            <!-- For Each Post -->
              <div class="col-sm-4">
                <div class="card" style="width: 18rem; height: 28rem;">
                  <!-- Add Image here -->
                  <!-- <img class="card-img-top" src="http://localhost:3157/teamblue/wp-content/uploads/2018/10/Step-300x125.jpg" alt="" width="100%" height="100rem" /> -->
                  <?php
                  $image = get_field('event_image');
                  $test1 = array (
                    'page_id'   => '6',
                    'name'  => 'hello'
                  );
                  //$query1 = build_query( $test1 );

                  $url = set_url_scheme(
                        'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']
                    );
                  $url = add_query_arg($test1, $url);

                  echo '<img src="';
                  print_r($image);
                  echo '" style="width: 18rem">';
                  ?>
                  <div class="card-body">

                    <h5 class="card-title"> <?php the_field('event_name') ?> </h5>
                    <p><?php get_field('event_image')?></p>
                    <p class="card-text"> <?php the_field('event_description') ?> </p>

                     <a href=<?php print_r($url) ?> class="btn btn-primary">More..</a>


                  </div>
                </div>
                <?php
                echo get_the_post_thumbnail($my_id,
                      'full',
                      array(
                          'alt'   => $post_title,
                          'title' => $post_title,
                          'class' => 'my_post_img_class'
                      )
                  );
                  ?>

              </div>


            <?php
          endwhile;
          wp_reset_postdata();
        ?>
      </div>
    </div>

    <?php
    else :
        esc_html_e( 'No testimonials in the diving taxonomy!', 'text-domain' );
    endif;
    ?>









<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>
