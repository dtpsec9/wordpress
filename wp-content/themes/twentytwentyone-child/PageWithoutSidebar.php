<?php /* Template Name: PageWithoutSidebar */ ?>
<?php get_header();?>
<section class="blog_grid_vs">
   <div class="block">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="heading">
                  <h2> Latest News &amp; Blogs </h2>
                  <span>Found by employers communicate directly with hiring managers and recruiters.</span>
               </div>
               <!-- Heading -->
               <?php
                  $the_query = new WP_Query( array('posts_per_page'=>9,
                  'post_type'=>'post',
                  'paged' => (get_query_var('paged')) ? get_query_var('paged') : 1) 
                   ); 
                   ?>
               <div class="blog-sec">
                  <div class="row">
                     <div class="col-lg-9">
                        <div class="row">
                           <?php while ($the_query -> have_posts()) : $the_query -> the_post(); ?>
                           <div class="col-lg-4 col-sm-6 col-md-6">
                              <div class="my-blog">
                                 <div class="blog-thumb">
                                    <a href="<?php the_permalink(); ?>" class="file-title"><?php echo get_the_post_thumbnail(); ?></a>
                                    <div class="blog-metas">
                                       <a href="<?php the_permalink(); ?>" class="file-title"><?php echo get_the_date(); ?></a>
                                       <a href="<?php the_permalink(); ?>" class="file-title"><?php get_comments_number(); ?>Comments</a>
                                    </div>
                                 </div>
                                 <div class="blog-details">
                                    <h3><a href="<?php the_permalink(); ?>" class="file-title"><?php echo get_the_title(); ?></a></h3>
                                    <?php the_content(); ?>
                                    <a href="<?php echo get_permalink($post->ID); ?>">READ MORE <i class="la la-long-arrow-right"></i></a>
                                 </div>
                              </div>
                           </div>
                           <?php endwhile; ?>
                        </div>
                     </div>
                     <aside class="col-lg-3 column">
                     <?php get_sidebar(); ?>
                     </aside>
                  </div>
               </div>
               <div class="pagination">
                  <ul>
                     <li class="prev">
                        <?php $big = 999999999; // need an unlikely integer
                           echo paginate_links( array(
                              'base' => str_replace( $big, '%#%', get_pagenum_link( $big ) ),
                              'format' => '?paged=%#%',
                              'current' => max( 1, get_query_var('paged') ),
                              'total' => $the_query->max_num_pages
                           ) );
                           
                           wp_reset_postdata(); ?>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<?php get_footer(); ?>