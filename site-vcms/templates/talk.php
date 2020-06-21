<?php namespace ProcessWire;

date_default_timezone_set('UTC');
?>
<?php include('_functions.php');?>


<meta name="description" content="<?= $sanitizer->truncate(page()->abstract, 140, 'sentence');?>" pw-replace="metadescription">

<pw-region pw-replace="headerscript">

<script  src="<?=urls()->templates?>scripts/comments.min.js"></script>
<script  src="<?=urls()->templates?>scripts/readmore.min.js"></script>
<script  src="<?=urls()->templates?>scripts/moment-with-locales.min.js"></script>
<script  src="<?=urls()->templates?>scripts/moment-timezone-with-data-10-year-range.min.js"></script>

</pw-region>

<?php

// access control
if ($settings->access_control->id>2){
  if(!$user->isLoggedin() ) { // not for login page
    $session->set('returnPage', $page->httpUrl);
    $session->redirect( $home->httpUrl.'sign-in/');
    die;
  }
}

?>

<header class="bg-white" pw-replace="header">
  <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <h1 class="text-xl font-bold leading-tight text-gray-900">
      Schedule
    </h1>
    <nav class="text-black font-bold mt-1" aria-label="Breadcrumb">
      <ol class="list-none p-0 inline-flex">
        <li class="flex items-center">
          <a href="<?=$pages->get("schedule")->url.'#'.$page->clockstart.'000'?>" class="text-red-800"><time
              class="convertDay" datetime="<?=date("c",$page->clockstart)?>"></time></a>
          <svg class="fill-current w-3 h-3 mx-3" viewBox="0 0 320 512">
            <path
              d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z" />
            </svg>
        </li>
        <li>
          <a href="#" class="text-gray-500" aria-current="page"><?=$page->title?></a>
        </li>
      </ol>
    </nav>
  </div>
</header>


<main pw-replace="main">
            <div class="bg-gray-200 pb-8">

          <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap align-top">
           
            
            <div class="w-1/2">
              
              <?php if($settings->videotofollow && $page->iframe==''):?>
                <div class="bg-white shadow overflow-hidden sm:rounded-lg relative flex-grow-0 mb-4">
                <p class="text-center py-6 font-medium text-lg text-gray-600 uppercase">Recording to follow</p>
              </div>
                <?php endif;?>
              <?php if($page->iframe!=''):?>
                <div class="video-responsive mb-4 sm:rounded-lg">
                 <?=$page->iframe?>
                </div>
                  <?php endif;?>
                
              <div class="bg-white shadow overflow-hidden sm:rounded-lg relative flex-grow-0">
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                  <h3 class="text-lg leading-6 font-medium text-gray-900">
                    <?=$page->title?>
                  </h3>
                  <p class="mt-1 max-w-2xl text-sm leading-5 text-gray-500">
                    Session information
                  </p>
                </div>
                <div>
                  <dl>
                    <div class="bg-gray-100 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                      <dt class="text-sm leading-5 font-medium text-gray-500">
                        Presenter
                      </dt>
                      <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
                      <?=$page->speaker->fullname?>
                      </dd>
                    </div>
                    <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                      <dt class="text-sm leading-5 font-medium text-gray-500">
                        Date and Time
                      </dt>
                      <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
                       <time class="convertDate" datetime="<?=date("c",$page->clockstart)?>"></time> - <time   class="convertDate"  datetime="<?=date("c",$page->clockend)?>"></time>
                      </dd>
                    </div>
                    
                    <div class="bg-gray-100 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm leading-5 font-medium text-gray-500">
                          Link
                        </dt>
                        <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
                        <?php 
                        
                        if ($settings->access_control->id<2 or $user->isLoggedin()){
                        
                        if($page->videoconferenceurl):?>
                          <a href="<?php echo $page->videoconferenceurl;?>" class="text-red-800 hover:text-gray-800"><img src="<?php echo urls()->templates;?>img/<?php echo getIcon($page->videoconferenceurl);?>" class="inline h-4 w-4"> <?=$page->videoconferenceurl?></a>
                         <?php endif;?> 
                         <?php if($page->videoconferenceurl==""):?>
                          <span> Link not available yet.</span>
                         <?php endif;?> 
                         <?php if($settings->meetingpassword!=""):?>
                          <br><span class="mt-2 inline-block">Password: <?=$settings->meetingpassword?></span>
                         <?php endif; }
                         if ($settings->access_control->id>1 and !$user->isLoggedin()):?>
                          <span>Link only available to registered particpants.</span>
                         <?php endif;?> 
                        </dd>
                      
                      </div>
                    <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                      <dt class="text-sm leading-5 font-medium text-gray-500">
                        Affiliation
                      </dt>
                      <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
                      <?=$page->speaker->affiliation?>
                      </dd>
                    </div>
                    <?php if ($settings->access_control->id<2 or $user->isLoggedin()){ 
                      if($page->pdf):?>
                    <div class="bg-gray-100 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                      <dt class="text-sm leading-5 font-medium text-gray-500">
                        Attachments
                      </dt>
                      <dd class="mt-1 text-sm leading-5 text-gray-900 sm:mt-0 sm:col-span-2">
                        <ul class="border border-gray-200 rounded-md">
                          <li class="border-t border-gray-200 pl-3 pr-4 py-3 flex items-center justify-between text-sm leading-5">
                            <div class="w-0 flex-1 flex items-center">
                              <svg class="flex-shrink-0 h-5 w-5 text-gray-400" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z" clip-rule="evenodd"/>
                              </svg>
                              <span class="ml-2 flex-1 w-0 truncate">
                               <?=$page->pdf->name?>
                              </span>
                            </div>
                            <div class="ml-4 flex-shrink-0">
                              <a href="<?=$page->pdf->url?>" class="font-medium text-indigo-600 hover:text-indigo-500 transition duration-150 ease-in-out">
                                Download
                              </a>
                            </div>
                          </li>
                        </ul>
                      </dd>
                    </div>
                    <?php endif; }  ?>
                  </dl>
                </div>
              </div>
            </div>

              <div class="w-1/2">
                <div class="bg-white shadow overflow-hidden mx-2 sm:rounded-lg mb-4">
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                    <h3 class="text-lg leading-6 font-medium text-gray-900">
                      Abstract
                    </h3>
                </div>
                <div class="px-4 py-5">
                  <div class="abstract markdown">
                    
                    <?=$page->abstract?>
                </div>
                </div>          
                
              </div>
              <div class="bg-white shadow overflow-hidden mx-2 sm:rounded-lg">
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                  <h3 class="text-lg leading-6 font-medium text-gray-900">
                    Comments
                  </h3>
              </div>
              <div class="p-4">
              <?php echo $page->comments->render(array(
    'headline' => '')); ?>
              </div>
                <div id='CommentForm' class='CommentForm_new'>
                   <div class="py-4">
                
                <?php echo $page->comments->renderForm(
                    array(
                    'headline' => "<div class=\"px-4 py-5 border-b border-gray-200 sm:px-6\"><h3 class=\"text-lg leading-6 font-medium text-gray-900\">Post Comment</h3></div>",
                    'successMessage' => "<p class='success' x-data=\"{ open: true }\" x-show=\"open\"><span  >Thank you, your submission has been saved. <button @click=\"open = false\"><svg class=\"w-4 h-4 stroke-current text-gray-600 hover:text-gray-800 focus:text-gray-800\" viewBox=\"0 0 20 20\">
                    <path fill=\"none\" d=\"M13.864,6.136c-0.22-0.219-0.576-0.219-0.795,0L10,9.206l-3.07-3.07c-0.219-0.219-0.575-0.219-0.795,0
                        c-0.219,0.22-0.219,0.576,0,0.795L9.205,10l-3.07,3.07c-0.219,0.219-0.219,0.574,0,0.794c0.22,0.22,0.576,0.22,0.795,0L10,10.795
                        l3.069,3.069c0.219,0.22,0.575,0.22,0.795,0c0.219-0.22,0.219-0.575,0-0.794L10.794,10l3.07-3.07
                        C14.083,6.711,14.083,6.355,13.864,6.136z M10,0.792c-5.086,0-9.208,4.123-9.208,9.208c0,5.085,4.123,9.208,9.208,9.208
                        s9.208-4.122,9.208-9.208C19.208,4.915,15.086,0.792,10,0.792z M10,18.058c-4.451,0-8.057-3.607-8.057-8.057
                        c0-4.451,3.606-8.057,8.057-8.057c4.449,0,8.058,3.606,8.058,8.057C18.058,14.45,14.449,18.058,10,18.058z\"></path>
                </svg></button></span></p>",
                    
                    ));
                ?>
                
            
            </div>
              </div>                    
              </div>
            </div>
        </div>
        </main>

        <script type="text/javascript" pw-replace="script">
	
    $(document).ready(function() {
      $('.abstract').readmore({ speed: 75, lessLink: '<a href="#">Read less</a>' });

        $('.convertDate').each(function() {
          $(this).html(moment($(this).attr('datetime')).tz(moment.tz.guess()).format('D.M.Y HH:mm zz'))
            
              });

              $('.convertDay').each(function() {
          $(this).html(moment($(this).attr('datetime')).tz(moment.tz.guess()).format('D.M.Y'))
            
              });
      });

		</script>

<?php date_default_timezone_set('UTC');?>
<script type="application/ld+json" pw-replace="schemaorg">{
  "@context": "http://schema.org" 
  ,"@type": "Event"
  ,"id":  "<?=$home->httpUrl?>"
  ,"name": "<?=$settings->conference_title?>"
  ,"url": "<?=$home->httpUrl?>"
  ,"image": "<?=$settings->img->url?>"
  ,"description": "<?=$sanitizer->truncate(page()->abstract, 140, 'sentence')?>"
  ,"startDate": "<?= date("c",$page->clockstart) ?> "
  ,"endDate": "<?= date("c",$page->clockend) ?> "
  ,"eventAttendanceMode": "https://schema.org/OnlineEventAttendanceMode"
  ,"eventStatus": "https://schema.org/EventScheduled"
  ,"superEvent":"<?=$home->httpUrl?>"
  ,"location": {
        "@type": "VirtualLocation",
        "url": "<?=$page->httpUrl?>"
        },
  "performer": {
      "@context": "http://schema.org",
      "@type": "Person",
      "affiliation": {
      "@context": "http://schema.org/",
      "@type": "Organization",
      "name": "<?=$page->speaker->affiliation?>"
      },
    "image": "<?=$page->img->httpUrl?>",
    "name": "<?=$page->speaker->fullname?>"
}
}
</script>
