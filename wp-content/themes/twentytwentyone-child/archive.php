<?php get_header(); ?>
<section class="post-template-default single single-post postid-448 single-format-standard right-sidebar">
   <?php if (have_posts()) : while(have_posts()) : the_post(); ?>
   <div class="off-canvas-wrapper">
      <div id="page" class="hfeed site">
         <div id="content" class="site-content" tabindex="-1">
            <div class="container">
               <div class="site-content-inner">
                  <div class="woocommerce"></div>
                  <div id="primary" class="content-area">
                     <main id="main" class="site-main">
                        <article id="post-448" class="post-448 post type-post status-publish format-standard has-post-thumbnail hentry category-education category-learn category-skill category-travel tag-adwords tag-trade">
                           <?php if (has_post_thumbnail()) : ?>
                           <div class="media-attachment">
                              <div class="post-thumbnail"><?php the_post_thumbnail(); ?></div>
                           </div>
                           <header class="entry-header">
                              <div class="entry-meta">
                                 <div class="post-author-info">
                                    <div class="media">
                                       <div class="media-left media-middle"> <a href="javascript:void(0)"> <?php echo get_avatar( get_the_author_meta( 'ID' ) , array('class' => 'avatar') ); ?> </a></div>
                                       <div class="media-body">
                                          <h4 class="media-heading"><a href="javascript:void(0)"><?php $author_id=$post->post_author; ?>
                                             <?php echo the_author_meta( 'display_name' , $author_id ); ?>
                                             </a>
                                          </h4>
                                       </div>
                                    </div>
                                 </div>
                                 <span class="posted-on"><a href="javascript:void(0)" rel="bookmark"><time class="entry-date published" datetime="2018-08-09T13:28:00+00:00"><?php echo get_the_modified_date( 'F j, Y' ); ?></time> <time class="updated" datetime="2018-09-06T06:09:14+00:00"><?php echo get_the_modified_date( 'F j, Y' ); ?></time></a></span> <span class="comments-link"><a href="javascript:void(0)"><?php $commentscount = get_comments_number(); echo $commentscount; ?> Comments</a></span> <span class="cat-links"> <?php $post_id = get_the_ID(); $category_detail=get_the_category($post_id);//$post->ID
                                    foreach($category_detail as $cd){
                                    echo $cd->cat_name;
                                    } ?></span>
                              </div>
                              <h1 class="entry-title"><?php echo get_the_title(); ?></h1>
                           </header>
                           <div class="entry-content">
                              <?php the_content(); ?> 
                           </div>
                        </article>

                        <nav id="post-navigation" class="navigation post-navigation" role="navigation" aria-label="Post Navigation">
                           <h2 class="screen-reader-text">Post navigation</h2>
                           <div class="nav-links">
                              <div class="nav-previous">
                                 <a href="<?php $previous = get_previous_post();?><?php if ( get_previous_post() ) { ?>
                                    <?php echo get_the_title($previous) ?>
                                    <?php } ?>" rel="prev">
                                    <div class="jobhunt-post-nav">
                                       <div class="post-nav-icon icon-prev"> <span class="nav-icon"><i class="la la-long-arrow-left"></i></span></div>
                                       <div class="jobhunt-post-title prev">
                                          <span class="post-direction">Prev Post</span> 
                                          <span class="post-title">
                                             <?php $previous = get_previous_post();?><?php if ( get_previous_post() ) { ?>
                                             <p><?php echo get_the_title($previous) ?>
                                                <?php } ?>
                                          </span>
                                       </div>
                                    </div>
                                 </a>
                              </div>
                           </div>
                        </nav>
                        <!--section id="comments" class="comments-area" aria-label="Post Comments">
                           <h2 class="comments-title"> <span class="comments-link"><?php $commentscount = get_comments_number(); echo $commentscount; ?> Comments</span></h2>
                           <ol class="comment-list">
                              <li class="comment even thread-even depth-1 parent" id="comment-10">
                                 <div class="comment_container">
                                    <img alt="" src="assets/images/4fdb3b572ac7dd8d7a58ba70317efa14.jpeg" srcset="https://secure.gravatar.com/avatar/4fdb3b572ac7dd8d7a58ba70317efa14?s=200&amp;d=mm&amp;r=g 2x" class="avatar avatar-100 photo" height="100" width="100" loading="lazy">
                                    <div class="comment-text">
                                       <div class="meta">
                                          <strong class="woocommerce-review__author">
                                             <?php foreach (get_comments() as $comment): ?>
                                             <div><?php echo $comment->comment_author; ?></div>
                                             <?php endforeach; ?>
                                          </strong>
                                          <time class="woocommerce-review__published-date" datetime="2018-08-10T06:00:40+00:00"><?php 
                                             comment_date('F j, Y'); 
                                             ?></time>
                                       </div>
                                       <div id="div-comment-meta-10" class="comment-content">
                                          <div class="description">
                                             <?php foreach (get_comments() as $comment): ?>
                                             <div>"<?php echo $comment->comment_content; ?>"</div>
                                             <br />
                                             <?php endforeach; ?>
                                          </div>
                                          <div class="reply"> <a rel="nofollow" class="comment-reply-login" href="#">Log in to Reply</a></div>
                                       </div>
                                    </div>
                                 </div>
                                 <ol class="children">
                                    <li class="comment odd alt depth-2" id="comment-11">
                                       <div class="comment_container">
                                          <img alt="" src="assets/images/66f865ee03bc019d2f06af6ec0c434ce.jpeg" srcset="https://secure.gravatar.com/avatar/66f865ee03bc019d2f06af6ec0c434ce?s=200&amp;d=mm&amp;r=g 2x" class="avatar avatar-100 photo" height="100" width="100" loading="lazy">
                                          <div class="comment-text">
                                             <div class="meta"> <strong class="woocommerce-review__author">Olivia Reynolds</strong> <time class="woocommerce-review__published-date" datetime="2018-08-10T06:15:34+00:00">August 10, 2018</time></div>
                                             <div id="div-comment-meta-11" class="comment-content">
                                                <div class="description">
                                                   <p>Far much that one rank beheld bluebird after outside ignobly allegedly more when oh arrogantly vehement tantaneously eel valiantly petted this along across highhandedly much.</p>
                                                </div>
                                                <div class="reply"> <a rel="nofollow" class="comment-reply-login" href="#">Log in to Reply</a></div>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                 </ol>
                              </li>
                           </ol>
                           <div id="respond" class="comment-respond">
                              <span id="reply-title" class="gamma comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="https://demo4.madrasthemes.com/jobhunt/2018/08/09/attract-more-attention-sales-and-profits/#respond" style="display:none;">Cancel reply</a></small></span>
                              <p class="must-log-in">You must be <a href="#">logged in</a> to post a comment.</p>
                           </div>
                        </section-->
                     </main>
                  </div>
                  <div id="secondary" class="widget-area" role="complementary">
                  <?php get_sidebar(); ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <?php endif; ?>
   <?php endwhile; ?>
   <?php endif; ?>
</section>
<?php get_footer(); ?>