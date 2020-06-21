<?php namespace ProcessWire?>

<header class="bg-white" pw-replace="header">
        <div class="max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-8 lg:px-10 h-12">
        
        </div>
      </header>



<main pw-replace="main">
            <div class="bg-gray-200 mt-2 pb-8">

          <div class="max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-wrap lg:flex-no-wrap align-top justify-center">
           
            
			<div class="w-full sm:w-1/2 ">
             
              <div class="bg-white shadow overflow-hidden sm:rounded-lg relative flex-grow-0">
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                    <h3 class="text-lg leading-6 font-medium text-gray-900">
					<?php echo $page->edit('title'); ?>
                    </h3>
                 <p>The requested page was not found.</p>
					<img src="<?=urls()->templates?>/img/404.svg" alt="404 error">

                </div>
              </div>
           
              
          
            </div>
		
			</div>
		</div>
		
		
        </main>
