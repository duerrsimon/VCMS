<?php namespace ProcessWire?>



<header class="bg-white" pw-replace="header">
  <div class="max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8">
    <h1 class="px-4 sm:px-6 text-2xl font-bold leading-tight text-gray-900">
      <?=$settings->conference_title?>
    </h1>
    <span class="px-4 sm:px-6 text-black font-bold mt-2 text-red-600 text-lg" > <?=$home->subtitle?>
    
</span>
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
            <div class="format">
              <?php echo $page->edit('body'); ?>
            </div>
          </div>
        </div>
        <div class="bg-white shadow overflow-hidden sm:rounded-lg relative mt-4 flex-grow-0">
          <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
            <h3 class="text-lg leading-6 font-medium text-gray-900">
              <?php echo $page->edit('secondtitle'); ?>
            </h3>
            <h5 class="mt-1 mb-4 max-w-2xl text-sm leading-5 text-gray-500">
              <?php echo $page->edit('secondsubtitle'); ?>
            </h5>
            <?php echo $page->edit('secondbody'); ?>

            <div class="flex items-center flex-wrap">
              <?php foreach($page->images as $sponsor): ?>
              <a href="<?=$sponsor->hyperlink?>" class="w-full sm:w-1/4"><img src="<?=$sponsor->url?>" class="h-auto"
                  alt="<?=$sponsor->subtitle?>"></a>
              <?php endforeach; ?>
            </div>
          </div>
        </div>
        <div class="bg-white shadow overflow-hidden sm:rounded-lg relative mt-4 flex-grow-0">
          <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
            <h3 class="text-lg leading-6 mb-4 font-medium text-gray-900">
              <?php echo $page->edit('thirdtitle'); ?>
            </h3>
            <h5 class="mt-1 mb-4 max-w-2xl text-sm leading-5 text-gray-500">
              <?php echo $page->edit('thirdsubtitle'); ?>
            </h5>
            <?php echo $page->edit('thirdbody'); ?>
            <div id='CommentForm' class='CommentForm_new'>
              <div class="mt-4">
                <?php
						 $contactform = $modules->get('SimpleContactForm');
							$options = array(
							'emailSubject' => 'New Contact Request'.$siteTitle,
							'btnClass' =>"w-full ml-2 border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-cool-gray-500 font-medium",
							'classes' => array(
                'form' => 'CommentFormCite',
                )
							);	
							echo $contactform->render($options);
				        ?>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php if ($settings->twitter!=''): ?>
      <div class="w-full lg:w-1/3">
        <div class="bg-white shadow overflow-hidden mx-0  lg:mx-2 mt-2 lg:mt-0 sm:rounded-lg mb-4 h-screen">
          <a class="twitter-timeline" data-height="1500" data-dnt="true"
            href="https://twitter.com/<?=$settings->twitter?>">Tweets by @<?=$settings->twitter?></a>
          <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
      </div>
      <?php endif; ?>
    </div>
  </div>
</main>