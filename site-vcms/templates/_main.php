<?php namespace ProcessWire;
// _main.php template file, called after a page’s template file	
	
?><!DOCTYPE html>
<html lang='en'>
<head id='html-head'>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title id='html-title'><?=page()->title?></title>
	<meta name="description" content="<?=page()->summary?>" data-pw-id="metadescription">
	
    <link rel="stylesheet" href="<?=urls()->templates?>fonts/inter.css">
  <link rel="stylesheet" href="<?=urls()->templates?>css/tailwind.min.css">
	<pw-region id="jqueryalpine">
	<script src="<?=urls()->jquery?>"></script>
  
  </pw-region>
  <script src="<?=urls()->alpine?>"></script>
  <pw-region id="headerscript"></pw-region>
  <style>
    [x-cloak] { display: none; }
</style>
</head>
<body id='html-body'>
<div>
    <nav x-data="{ open: false }" @keydown.window.escape="open = false" class="bg-gray-800">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-16">
          <div class="flex items-center">
            <div class="flex-shrink-0">
            <a href='<?=urls()->root?>'>
            <?php if ($settings->img):?>
                <img class="h-8 w-8" src="<?=$settings->img->url?>" alt="<?=$settings->img->description?>" />
            <?php endif;?>
				</a>	
              
            </div>
            <div class="hidden md:block">
              <div class="ml-10 flex items-baseline">
              <?php 

              $bool = $cache->save('menu', generateMenu($home, $page), 86400);
              echo cache()->get('menu');
              ?>
                
              </div>
            </div>
          </div>
          <div class="hidden md:block">
            <div class="ml-4 flex items-center md:ml-6">
             

              <div @click.away="open = false" class="ml-3 relative" x-data="{ open: false }">
                <div>
                  <button @click="open = !open"
                    class="max-w-xs flex items-center text-sm rounded-full text-gray-400 rounded-full hover:text-white focus:outline-none focus:text-white"
                    id="user-menu" aria-label="User menu" aria-haspopup="true" x-bind:aria-expanded="open">

                    <svg class="svg-icon h-6 w-6 stroke-1 stroke-current" viewBox="0 0 20 20">
                      <path fill="none"
                        d="M10,10.9c2.373,0,4.303-1.932,4.303-4.306c0-2.372-1.93-4.302-4.303-4.302S5.696,4.223,5.696,6.594C5.696,8.969,7.627,10.9,10,10.9z M10,3.331c1.801,0,3.266,1.463,3.266,3.263c0,1.802-1.465,3.267-3.266,3.267c-1.8,0-3.265-1.465-3.265-3.267C6.735,4.794,8.2,3.331,10,3.331z">
                      </path>
                      <path fill="none"
                        d="M10,12.503c-4.418,0-7.878,2.058-7.878,4.685c0,0.288,0.231,0.52,0.52,0.52c0.287,0,0.519-0.231,0.519-0.52c0-1.976,3.132-3.646,6.84-3.646c3.707,0,6.838,1.671,6.838,3.646c0,0.288,0.234,0.52,0.521,0.52s0.52-0.231,0.52-0.52C17.879,14.561,14.418,12.503,10,12.503z">
                      </path>
                    </svg>
                  </button>
                </div>
                <div x-show="open" x-transition:enter="transition ease-out duration-100"
                  x-transition:enter-start="transform opacity-0 scale-95"
                  x-transition:enter-end="transform opacity-100 scale-100"
                  x-transition:leave="transition ease-in duration-75"
                  x-transition:leave-start="transform opacity-100 scale-100"
                  x-transition:leave-end="transform opacity-0 scale-95"
                  class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg" x-cloak>
                  <div class="py-1 rounded-md bg-white shadow-xs">
                  <?php if ($user->isLoggedIn()):?>
            <a href="<?=$home->httpUrl?>sign-in/?profile=1"  role="menuitem"   class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Your Profile</a>
            <a href="<?=$home->httpUrl?>edit-contribution" role="menuitem"
            class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Submissions</a>
            <a href="<?=$home->httpUrl?>sign-in/?logout=1" role="menuitem"
            class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Sign out</a>
          <?php else: ?>
              <a href="<?=$home->httpUrl?>sign-in/"
              class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
              role="menuitem">Sign in</a>
              <?php endif;?>
                 
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="-mr-2 flex md:hidden">
            <button @click="open = !open"
              class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:bg-gray-700 focus:text-white"
              x-bind:aria-label="open ? 'Close main menu' : 'Main menu'" x-bind:aria-expanded="open">
              <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                <path :class="{'hidden': open, 'inline-flex': !open }" class="inline-flex" stroke-linecap="round"
                  stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                <path :class="{'hidden': !open, 'inline-flex': open }" class="hidden" stroke-linecap="round"
                  stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
        </div>
      </div>
      <div :class="{'block': open, 'hidden': !open}" class="hidden md:hidden">
        <div class="px-2 pt-2 pb-3 sm:px-3">
        <?php 

$bool = $cache->save('mobile-menu', generateMobileMenu($home, $page), 86400);
echo cache()->get('mobile-menu');

            ?>  
            

        </div>
        <div class="pt-4 pb-3 border-t border-gray-700">
          <div class="flex items-center px-5">
            <div class="flex-shrink-0">
              <svg class="svg-icon h-10 w-10 stroke-1 stroke-current text-cool-gray-100" viewBox="0 0 20 20">
                <path fill="none"
                  d="M10,10.9c2.373,0,4.303-1.932,4.303-4.306c0-2.372-1.93-4.302-4.303-4.302S5.696,4.223,5.696,6.594C5.696,8.969,7.627,10.9,10,10.9z M10,3.331c1.801,0,3.266,1.463,3.266,3.263c0,1.802-1.465,3.267-3.266,3.267c-1.8,0-3.265-1.465-3.265-3.267C6.735,4.794,8.2,3.331,10,3.331z">
                </path>
                <path fill="none"
                  d="M10,12.503c-4.418,0-7.878,2.058-7.878,4.685c0,0.288,0.231,0.52,0.52,0.52c0.287,0,0.519-0.231,0.519-0.52c0-1.976,3.132-3.646,6.84-3.646c3.707,0,6.838,1.671,6.838,3.646c0,0.288,0.234,0.52,0.521,0.52s0.52-0.231,0.52-0.52C17.879,14.561,14.418,12.503,10,12.503z">
                </path>
              </svg>
            </div>
            <?php if ($user->isLoggedIn()):?>
            <div class="ml-3">
              <div class="text-base font-medium leading-none text-white"><?=$user->fullname;?></div>
              <div class="mt-1 text-sm font-medium leading-none text-gray-400"><?=$user->email;?></div>
            </div>
            <?php endif;?>
          </div>
          <div class="mt-3 px-2" role="menu" aria-orientation="vertical" aria-labelledby="user-menu" role="menuitem">
          <?php if ($user->isLoggedIn()):?>
            <a href="<?=$home->httpUrl?>sign-in/?profile=1"
              class="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
              role="menuitem">Your Profile</a>
            <a href="<?=$home->httpUrl?>edit-contribution"
              class="mt-1 block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
              role="menuitem">Submissions</a>
            <a href="<?=$home->httpUrl?>signin/?logout=1"
              class="mt-1 block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
              role="menuitem">Sign out</a>
          <?php else: ?>
              <a href="<?=$home->httpUrl?>sign-in/"
              class="mt-1 block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
              role="menuitem">Sign in</a>
              <?php endif;?>

          </div>
        </div>
      </div>
    </nav>
    <header class="bg-white" data-pw-id="header">
      <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold leading-tight text-gray-900">
        <?=$siteTitle?>
        </h1>
      </div>
    </header>
  </div>

	<!-- MAIN CONTENT -->
	<main data-pw-id='main'>
   




	</main>

      

	

	<!-- FOOTER -->
	<footer>
    <div class="bg-gray-300 px-4 md:px-8 p-8">
    <div class="container mx-auto">
      <div class="sm:flex sm:flex-wrap md:flex-no-wrap mb-4">
        <div class="sm:w-1/2 md:w-1/4 h-auto">
          <div class="text-base font-bold mb-2">Organizing commitee</div>
          <ul class="list-reset leading-normal"  edit="1020.organizers"> 
          <?php foreach($settings->organizers as $o): ?>
                      <li class="hover:text-orange text-gray-600"><a href="<?=$o->hyperlink?>"><?=$o->title?></a></li>
           
            <?php endforeach; ?>
          
          </ul>
        </div>

        <div class="sm:w-1/2 md:w-1/4 h-auto sm:mt-0 mt-8">
        
          <div class="text-base font-bold mb-2">Legal information</div>
          <ul class="list-reset leading-normal">
          <?php foreach ($settings->page_ref as $key):?>
            <li class=""><a href="<?=$key->url?>" class="hover:text-orange text-gray-600"><?=$key->title?></li>
          <?php endforeach;?>

          </ul>
        </div>
        <div class="sm:w-1/2 md:w-1/4 h-auto sm:mt-0 mt-8">
          <div class="text-base font-bold mb-2">Support</div>
          <ul class="list-reset leading-normal">
          <?php foreach ($settings->page_ref_hyperlink_url as $key){
              if ($key->single_page) {
                echo '<li><a href="'.$key->single_page->url.'" class="hover:text-orange text-gray-600">'.$key->title.'</a></li>';
              }else{
                echo '<li><a href="'.$key->hyperlink.'" class="hover:text-orange text-gray-600">'.$key->title.'</a></li>';
              }
               }
            ?>
          </ul>
        </div>
        <div class="sm:w-1/2 md:w-1/4 sm:mt-0 mt-8 h-auto">
        <?php if ($settings->use_newsletter and $settings->Mailchimp_URL!='') :?>
          <h6 class="text-base font-bold mb-2">Newsletter</h6>
          <p class="text-gray-600 leading-normal">Put yourself on the mailing list. </p>
          <div class="mt-4 flex flex-wrap items-center">
             <input type="text" class="w-3/5 xl:w-2/3 p-3 border border-gray-200 round text-gray-700 text-sm h-auto"
              placeholder="Your email address" onfocusout="emailButton(this.value)" aria-description="Signup to the Newsletter.">
            <a target="blank" id="newsletterButton" href="<?=$settings->Mailchimp_URL?>" class="w-2/5 xl:w-1/3 bg-gray-800 text-white rounded-sm h-auto text-xs p-3">Subscribe</a>
          </div>
        <?php endif;?>
          <div class="text-xs mt-6 text-gray-600">
          <a href='https://processwire.com'>Powered by <img src="<?=$home->httpUrl?>wire/modules/AdminTheme/AdminThemeUikit/uikit/custom/images/pw-mark.png" class="inline-flex w-4 h-4" alt="Processwire logo"></a> with the <a href='https://processwire.com'>VCMS site profile</a> 
          </div>
         
        </div>
      </div>
    </div>
  </div>
    </footer>

<script>
    function emailButton(address) {
  document.getElementById("newsletterButton").href = "<?=$settings->Mailchimp_URL?>&MERGE0="+address;
  
}
</script>


<script data-pw-id="script"></script>

<script type="application/ld+json" data-pw-id="schemaorg">{
  "@context": "http://schema.org" 
  ,"@type": "Event"
  ,"id":  "<?=$home->httpUrl?>"
  ,"name": "<?=$settings->conference_title?>"
  ,"url": "<?=$home->httpUrl?>"
  ,"image": "<?=$settings->img->httpUrl?>"
  ,"description": "<?=$page->summary?>"
  ,"startDate": "<?= date("c",$settings->startdate) ?> "
  ,"endDate": "<?= date("c",$settings->enddate) ?> "
  ,"eventAttendanceMode": "https://schema.org/OnlineEventAttendanceMode"
  ,"eventStatus": "https://schema.org/EventScheduled"
  ,"location": {
        "@type": "VirtualLocation",
        "url": "<?=$home->httpUrl?>"
        }
}
</script>
      
</body>
</html>

