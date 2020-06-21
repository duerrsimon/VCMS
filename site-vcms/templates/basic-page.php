<?php namespace ProcessWire?>



<header class="bg-white" pw-replace="header">
        <div class="max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-8 lg:px-10 h-12">
        
        </div>
      </header>



<main pw-replace="main">
            <div class="bg-gray-200 mt-2 pb-8">

          <div class="max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-wrap lg:flex-no-wrap align-top">
           
            
			<div class="w-full <?php if ($settings->twitter!=''){echo "lg:w-2/3";}?>">
             
              <div class="bg-white shadow overflow-hidden sm:rounded-lg relative flex-grow-0">
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                    <h3 class="text-lg leading-6 font-medium text-gray-900">
					<?php echo $page->edit('title'); ?>
                    </h3>
                    <h5 class="mt-1 max-w-2xl text-sm leading-5 text-gray-500 mb-4">
					<?php echo $page->edit('subtitle'); ?>
					</h5>
					<div class="format markdown">
						<?php echo $page->edit('body'); ?>
					</div>
					

                </div>
              </div>
           
              
          
            </div>
			<?php if ($settings->twitter!=''): ?>
              <div class="w-full lg:w-1/3">
                <div class="bg-white shadow overflow-hidden mx-0  lg:mx-2 mt-2 lg:mt-0 sm:rounded-lg mb-4 h-screen">
                    <a class="twitter-timeline" data-height="1500" data-dnt="true" href="https://twitter.com/<?=$settings->twitter?>">Tweets by @<?=$settings->twitter?></a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
              </div>
			<?php endif; ?>
			</div>
		</div>
		
		
        </main>