<!doctype html>
<!-- https://www.proteusthemes.com/blog/displaying-custom-post-types-templates-querying/ -->
<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->

<?php
  $args = array(
    'post_type' => 'event'
  );

  $events = new WP_Query($args);
  if ($events->have_posts()):
  ?>
<!-- Enter Div Tag -->
<!-- <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
-->

    <div class="container" style="margin-top: 40px">
      <div class="card-columns">
        <?php
          while( $events->have_posts() ) :
            $events->the_post();
            ?>
            <!-- For Each Post -->
              <div class="col-sm-4">
                <div class="card" style="width: 18rem; height: 30rem;">
                  <!-- Add Image here -->
                  <!-- <img class="card-img-top" src="http://localhost:3157/teamblue/wp-content/uploads/2018/10/Step-300x125.jpg" alt="" width="100%" height="100rem" /> -->
                  <?php
                  $image = get_field('event_image');
                  echo '<img src="';
                  print_r($image);
                  echo '" style="width: 18rem">';
                  ?>
                  <div class="card-body">

                    <h5 class="card-title"> <?php the_field('event_name') ?> </h5>
                    <p><?php get_field('event_image')?></p>
                    <p class="card-text"> <?php the_field('event_description') ?>  </p>
                    <a href="#" class="btn btn-primary">More..</a>
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
