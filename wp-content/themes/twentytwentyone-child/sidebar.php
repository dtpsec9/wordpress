
<div class="widget">
   <div class="search_widget_job no-margin">
         <?php get_search_form(); ?>
      
      <!-- Search Widget -->
   </div>
</div>
<div class="widget">
   <h3>Categories</h3>
   <div class="sidebar-links">
      <?php
         $categories = get_categories();
         foreach($categories as $category) {
         echo '<a href="' . get_category_link($category->term_id) . '">' . $category->name . '<i class="la la-angle-right"></i></a>';
         }
         ?>
   </div>
</div>
<div class="widget">
   <h3>Recent Posts</h3>
   <?php 
      $args = array( 'posts_per_page' => '3' );
      $recent_posts = new WP_Query($args);
      while( $recent_posts->have_posts() ) :  
        	$recent_posts->the_post() ?>
   <div class="post_widget">
      <div class="mini-blog">
         <span><a href="<?php the_permalink(); ?>"><?php echo get_the_post_thumbnail(); ?></a></span>
         <div class="mb-info">
            <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
            <span><?php echo get_the_date(); ?></span>
         </div>
      </div>
   </div>
   <?php endwhile; ?>
   <?php wp_reset_postdata(); # reset post data so that other queries/loops work ?>
</div>
<!--div class="widget">
   <h3>Archives</h3>
   <div class="sidebar-links">
      <ul><?php wp_get_archives('type=monthly'); ?></ul>
   </div>
</div-->
<!--div class="widget">
   <h3>Meta</h3>
   <div class="sidebar-links">
      <a href="#" title=""><i class="la la-angle-right"></i>Log in</a>
      <a href="#" title=""><i class="la la-angle-right"></i>Entries RSS</a>
      <a href="#" title=""><i class="la la-angle-right"></i>Comments RSS</a>
      <a href="#" title=""><i class="la la-angle-right"></i>WordPress.org</a>
   </div>
</div-->
<!--div class="widget">
   <h3>Tags</h3>
   <div class="tags_widget">
     <?php
      $tags = get_tags();
      foreach ( $tags as $tag ) : ?>
         <a href="<?php echo esc_url( get_tag_link( $tag->term_id ) ); ?>" title="<?php echo esc_attr( $tag->name ); ?>"><?php echo esc_html( $tag->name ); ?></a>
      <?php endforeach; ?>
   
   </div>
</div-->
