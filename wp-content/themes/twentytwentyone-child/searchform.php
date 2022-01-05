<form role="search" method="get" class="search-form" action="<?php echo home_url( '/' ); ?>">

<div class="widget">
                                     <div class="search_widget_job no-margin">
                                         <div class="field_w_search">
                                         <input type="search" class="search-field" placeholder="<?php echo esc_attr_x( 'Search …', 'placeholder' ) ?>" value="<?php echo get_search_query() ?>" name="s" title="<?php echo esc_attr_x( 'Search for:', 'label' ) ?>"  />
                                            <button type="submit"> <i class="la la-search"></i></button>
                                         </div><!-- Search Widget -->
                                     </div>
                                 </div>
                                 </form>
