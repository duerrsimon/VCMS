<?php namespace ProcessWire;


$submitted_icon=' <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
class="feather feather-user-check w-8 h-8 text-yellow-700 inline-flex">
<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
<circle cx="8.5" cy="7" r="4"></circle>
<polyline points="17 11 19 13 23 9"></polyline>
</svg>';
$saved_icon='<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-save w-8 h-8 text-gray-700 inline-flex"><path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path><polyline points="17 21 17 13 7 13 7 21"></polyline><polyline points="7 3 7 8 15 8"></polyline></svg>';

$accepted_icon='  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
stroke-width="2" viewBox="0 0 24 24" class="w-8 h-8 text-green-500 inline-flex ">
<path
  d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z">
</path>
</svg> ';
$declined_icon='<svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
stroke-width="2" viewBox="0 0 24 24" class="w-8 h-8 text-red-500 inline-flex">
<path
  d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636">
</path>
</svg>';

$icons= array(
    'saved' => $saved_icon,
    'accepted' => $accepted_icon,
    'declined' => $declined_icon,
    'submitted' => $submitted_icon,
);
$item=$pages->get($sanitizer->int($input->urlSegment(1)));

?>
<pw-region pw-replace="headerscript">

<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
<script  src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>

</pw-region>


<header class="bg-white" pw-replace="header">
        <div class="max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-6 lg:px-8 h-10">
          <h1 class="text-xl font-bold leading-tight text-gray-900">
            
          </h1>
          
        </div>
      </header>


<main pw-replace="main">
      <div class="bg-gray-200 mt-2 pb-8">
      <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-wrap sm:flex-no-wrap">



        <div class="w-full sm:w-2/5 ">
          <div class="bg-white shadow overflow-hidden mx-2 sm:rounded-lg mb-4 sticky top-2">
            <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
              <h3 class="text-lg leading-6 font-medium text-gray-900">
                Your submissions
              </h3>
            </div>
            <div class="px-4 py-5">


            <?php 
                
                $submissions=$pages->find("template=talk|poster, speaker={$user}, parent=1059|1060|1061|1084");
                foreach ($submissions as $s) : 
            ?>
              <article class="border rounded-md my-2 hover:shadow <?php if ($input->urlSegment(1)==$s) {echo "shadow shadow-lg border-gray-500";} ?>">
                <div class="border-l-2 px-2 border-transparent">
                  <a href="<?=$home->httpUrl?>edit-contribution/<?=$s?>">
                    <header class="flex justify-between items-center py-5 cursor-pointer select-none">
                      <div class="flex flex-wrap"><span
                          class="text-gray-800 w-full tracking-wider font-thin">#<?=$s?></span> <span class="w-full"><?=$s->title?></span> </div>

                      <div class="w-7 h-7 flex items-center justify-center">
                      <?php 
                        if ($s->parent->name=="posters" or $s->parent->name=="talks" ){
                          echo $icons['accepted'];
                        }else{
                          echo $icons[$s->parent->name];
                        }
                     ?>
                    
                      
                      </div>
                    </header>
                  </a>
                </div>
              </article>
                <?php endforeach;?> 

           
              <a href="<?=$home->httpUrl?>submit-contribution"
                class="w-full focus:outline-none border mt-4 border-indigo-600 py-2 px-5 rounded-lg shadow-sm text-center text-indigo-700 hover:text-indigo-900 hover:border-indigo-900  focus:border-indigo-900 font-medium flex items-center "><svg
                  fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  viewBox="0 0 24 24" class="w-8 h-8">
                  <path
                    d="M9 13h6m-3-3v6m5 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z">
                  </path>
                </svg> <span class="flex-1">Submit new abstract</span></a>


            </div>
          </div>
        </div>
        <div class="w-full sm:w-3/5">


          <div x-data="app()" >
            <div class="max-w-3xl mx-auto  bg-gray-100 border border-gray-200 rounded-lg">
            <?php if ($input->urlSegment1==''):?>
                <div class="px-4 py-5 border-b text-center sm:px-6">
                  <h3 class="text-base text-gray-600">
                    Select a submission on the right
                  </h3>
                </div>
            <?php endif;?>
            <?php if ($input->urlSegment(1)!=''):?>
              <div x-cloak>
                <!-- Top Navigation -->
                <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                  <h3 class="text-lg leading-6 font-medium text-gray-900 flex items-center">
                    <span class="text-gray-800 text-lg tracking-wider font-medium">#<?=$item->id?></span>

                    <?php if ($item->parent->name=="saved"){
                    echo '<div class="flex-1 text-right"><a href="'.$home->httpUrl.'submit-contribution/'.$item->id.'" class=" items-center text-lg font-semibold hover:text-indigo-600"> <span>Edit  </span><svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" stroke="currentColor" viewBox="0 0 24 24" class="w-4 h-4 inline-flex"><path d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path></svg></a></div>';
                    }
                    ?>
                  </h3>
                </div>
                <!-- /Top Navigation -->
                <?php
                  $status="";
                 if ($item->parent->name=="posters" or $item->parent->name=="talks" ){
                   $status="accepted";
                 }else{
                   $status=$item->parent->name;
                 }
            
                switch ($status){
                    case 'accepted':
                        echo ' <div class="bg-green-50 border-l-4 border-r-4 border-green-500 text-sm mb-2 text-green-800 p-4"
                        role="alert">
                        <p>Your submission has been accepted. 
                        </p>
                      </div>';
                        break;
                    case 'submitted':
                            echo '<div class="bg-orange-100 border-l-4 border-r-4 border-orange-300 text-sm mb-2 text-orange-800 p-4"
                            role="alert">
                            <p>Your submission is undergoing moderation before being accepted.</p>
                          </div>';
                            break;
                    case 'declined':
                            echo ' 
                            <div class="bg-red-100 border-l-4 border-r-4 border-red-500 text-sm mb-2 text-red-800 p-4" role="alert" >
                              <p>Your submission has been declined.</p>
                            </div>';
                            break;
                            case 'saved':
                              $twodaysBeforeConf=$settings->startdate - 60*60*24*2 ;
                                echo ' 
                                <div class="bg-gray-300 border-l-4 border-r-4 border-gray-500 text-sm mb-2 text-gray-800 p-4" role="alert" >
                                  <p>Your contribution is saved but not submitted. You can edit it until '.$twodaysBeforeConf.' It will not automatically be submitted. </p>
                                </div>';
                                break;
    
                }
                ?>
               
               
                <!-- Step Content -->
                <div class="py-10 px-4">



                  <h3 class="font-bold mb-1 text-gray-700 block">Category</h3>

                  <span class="w-full py-3  "><?=$item->template?></span>






                  <div class="my-5">
                    <h4 class="font-bold mb-1 text-gray-700 block">Title of your contribution</h4>
                    <span class="w-full py-3"><?=$item->title?></span>
                  </div>
                  <div class="my-5">
                    <label for="status" class="font-bold mb-1 text-gray-700 block">Status</label>
                    <div class="flex items-center">

                    <?=$icons[$status]?>
                      <span class="w-full mx-4 py-3"><?=$status?> 
                      </span></div>
                  </div>

                  <?php if ($status!="saved" and $status!="submitted" and $item->videoconferenceurl!=""):?>
                  <div class="my-5">
                    <h4 class="font-bold mb-1 text-gray-700 block">Date and Time, Videochat link</h4>
                    <p class="w-full py-3  text-gray-600 font-medium">19.12.2020 17:15 <br><a href=""
                        class="text-sm text-blue-400 hover:text-blue-800">zoom.us/0909230422</a></p>
                  </div>
                  <?php endif; ?>
                  <div class="my-3">
                    <h4 class="font-medium  mb-2 text-xl">Authors</h4>
                    <div class="flex flex-wrap">
                      <template x-for="(person, index) in formContent.persons" :key="index">
                        <div @click.away="person.open = false" class="mr-2 relative flex items-center">


                          <div>
                            <div>
                              <button @click="person.open = !person.open"
                                class="text-cool-gray-600 rounded-full hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700"
                                x-bind:class="{'underline' : person.presenting}" aria-label="Notifications"
                                aria-haspopup="true" x-bind:aria-expanded="person.open" x-text="person.fullname">
                              
                              </button>
                              <span class="-ml-1" x-show="index!=formContent.persons.length-1">,</span>

                            </div>
                            <div x-show="person.open" x-transition:enter="transition ease-out duration-100"
                              x-transition:enter-start="transform opacity-0 scale-95"
                              x-transition:enter-end="transform opacity-100 scale-100"
                              x-transition:leave="transition ease-in duration-75"
                              x-transition:leave-start="transform opacity-100 scale-100"
                              x-transition:leave-end="transform opacity-0 scale-95"
                              class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                              <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                <div class="flex content-center items-center" x-show="person.orcid!=''">
                                  <img src="<?=urls()->templates?>img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                  <a href="'https://orcid.org/'+person.orcid" class="flex-1"
                                    x-text="person.orcid"></a>
                                </div>
                                <div class="flex content-center items-center" x-show="person.hyperlink!=''">
                                  <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current"
                                    viewBox="0 0 20 20">

                                    <path fill="none"
                                      d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378">
                                    </path>
                                  </svg>
                                  <a :href="person.hyperlink" class="flex-1"
                                    x-text="person.hyperlink"></a>
                                </div>
                                <div class="flex content-center items-center" x-show="person.twitter!=''">
                                  <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current"
                                    viewBox="0 0 20 20">
                                    <path 
                                      d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                    </path>
                                  </svg>
                                  <a x-bind:href="'https://twitter.com/'+person.twitter" class="flex-1"
                                    x-text="person.twitter"></a><br>
                                </div>
                                <p class="mt-2" x-text="person.affiliation"></p>

                              </div>
                            </div>
                          </div>

                        </div>
                      </template>
                    </div>
                  </div>

                  <h3 class="font-bold mb-1 my-8 text-gray-700 block">Abstract & References</h3>
                  <div class="markdown">
                  <?=$item->abstract?>
                  </div>
                
                  <?php if ($item->parent->name!="saved" and $item->parent->name!="submitted"):?>
                  <h3 class="font-bold mb-5 mt-8 text-gray-700 block">Upload files</h3>
                  <div class="my-5">
                  
                   
                      
                      <div class="mb-5 text-center" x-show="formContent.type==='talk'">
                      <label for="pdfFile" type="button"
                            class="cursor-pointer inine-flex justify-between items-center focus:outline-none border py-2 px-4 rounded-lg shadow-sm text-left text-gray-600 bg-white hover:bg-gray-100 font-medium">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-6 h-6 inline-flex">
                              <path class="heroicon-ui"
                                d="M13 5.41V17a1 1 0 0 1-2 0V5.41l-3.3 3.3a1 1 0 0 1-1.4-1.42l5-5a1 1 0 0 1 1.4 0l5 5a1 1 0 1 1-1.4 1.42L13 5.4zM3 17a1 1 0 0 1 2 0v3h14v-3a1 1 0 0 1 2 0v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3z" />
                            </svg>
                            Upload presentation
                          </label>
                      <input name="pdfFile" id="pdfFile" accept="application/pdf" class="hidden" type="file" @change="fileUpload(document.getElementById('pdfFile'))">

                          <span class="text-xs block text-cool-gray-500">max 15 MB</span>
                          <div class="mx-auto py-4 mt-2  relative bg-gray-100 mb-4 shadow-inset" x-show="file!=''">
                                <a :href="fileURL"  class="items-center hover:text-teal-700 focus:text-teal-700"><svg
                                  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-6 h-6 inline-flex">
                                  <path class="heroicon-ui"
                                    d="M6 2h9a1 1 0 0 1 .7.3l4 4a1 1 0 0 1 .3.7v13a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V4c0-1.1.9-2 2-2zm9 2.41V7h2.59L15 4.41zM18 9h-3a2 2 0 0 1-2-2V4H6v16h12V9zm-2 7a1 1 0 0 1-1 1H9a1 1 0 0 1 0-2h6a1 1 0 0 1 1 1zm0-4a1 1 0 0 1-1 1H9a1 1 0 0 1 0-2h6a1 1 0 0 1 1 1zm-5-4a1 1 0 0 1-1 1H9a1 1 0 1 1 0-2h1a1 1 0 0 1 1 1z" />
                                </svg> 
                                
                                <span x-html="file"></span> </a>
                                
                          </div>
                      
                    </div>


                  </div>

                </div>

               
                <div class="flex flex-wrap content-baseline px-4" x-show="formContent.type==='poster'">
                  <div class="my-5 w-full text-center sm:w-1/2 pr-4">
                    <div class="mx-auto w-full h-auto mb-2   relative bg-gray-100 mb-4 shadow-inset" x-show="previewImage!=''">
                      <img id="preview_image" class="object-cover w-full h-32 rounded-lg" :src="previewImage" />
                    </div>

                    <label for="previewImage" type="button"
                      class="cursor-pointer inine-flex justify-between items-center focus:outline-none border py-2 px-4 rounded-lg shadow-sm text-left text-gray-600 bg-white hover:bg-gray-100 font-medium">
                      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-6 h-6 inline-flex">
                        <path class="heroicon-ui"
                          d="M13 5.41V17a1 1 0 0 1-2 0V5.41l-3.3 3.3a1 1 0 0 1-1.4-1.42l5-5a1 1 0 0 1 1.4 0l5 5a1 1 0 1 1-1.4 1.42L13 5.4zM3 17a1 1 0 0 1 2 0v3h14v-3a1 1 0 0 1 2 0v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3z" />
                        </svg>
                      Preview Image
                    </label>
                    
                    <span class="text-xs block text-cool-gray-500">max 1.5 MB</span>

                    <input name="previewImage" id="previewImage" accept="image/*" class="hidden" type="file" @change="let preview = document.getElementById('previewImage').files[0]; 
                    var reader = new FileReader();
                    reader.onload = (e) => previewImage = e.target.result;
                    reader.readAsDataURL(preview);
                    sendPreviewToServer(preview);">


                  </div>

                  <div class="my-5 text-center w-full text-center  px-4 sm:w-1/2">
                    <div class="mx-auto w-full py-4 mb-2 border relative bg-gray-100 mb-4 shadow-inset">
                      <h3 class="font-bold mb-4 text-gray-700 block">PDF Poster</h3>
                          <label for="pdfFile" type="button"
                            class="cursor-pointer inine-flex justify-between items-center focus:outline-none border py-2 px-4 rounded-lg shadow-sm text-left text-gray-600 bg-white hover:bg-gray-100 font-medium">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-6 h-6 inline-flex">
                              <path class="heroicon-ui"
                                d="M13 5.41V17a1 1 0 0 1-2 0V5.41l-3.3 3.3a1 1 0 0 1-1.4-1.42l5-5a1 1 0 0 1 1.4 0l5 5a1 1 0 1 1-1.4 1.42L13 5.4zM3 17a1 1 0 0 1 2 0v3h14v-3a1 1 0 0 1 2 0v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3z" />
                            </svg>
                            Upload Poster
                          </label>
                          <input name="pdfFile" id="pdfFile" accept="application/pdf" class="hidden" type="file" @change="fileUpload(document.getElementById('pdfFile'))">

                          <span class="text-xs block text-cool-gray-500">max 15 MB</span>
                          <div class="mx-auto py-4 mt-2  relative bg-gray-100 mb-4 shadow-inset" x-show="file!=''">
                                <a :href="fileURL"  class="items-center hover:text-teal-700 focus:text-teal-700"><svg
                                  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-6 h-6 inline-flex">
                                  <path class="heroicon-ui"
                                    d="M6 2h9a1 1 0 0 1 .7.3l4 4a1 1 0 0 1 .3.7v13a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V4c0-1.1.9-2 2-2zm9 2.41V7h2.59L15 4.41zM18 9h-3a2 2 0 0 1-2-2V4H6v16h12V9zm-2 7a1 1 0 0 1-1 1H9a1 1 0 0 1 0-2h6a1 1 0 0 1 1 1zm0-4a1 1 0 0 1-1 1H9a1 1 0 0 1 0-2h6a1 1 0 0 1 1 1zm-5-4a1 1 0 0 1-1 1H9a1 1 0 1 1 0-2h1a1 1 0 0 1 1 1z" />
                                </svg> 
                                
                                <span x-html="file"></span> </a>
                                
                          </div>
                          <div class="mx-auto text-sm  py-4 mt-2  relative bg-gray-100 mb-4 shadow-inset" x-show="file==''">
                            <p>No file uploaded</p>
                          </div>
                          <div class="my-4 flex items-center justify-between">
                            <span class="border-b w-1/5 md:w-1/4"></span>
                            <span class="text-sm text-gray-500 uppercase">or paste in iframe</span>
                            <span class="border-b w-1/5 md:w-1/4"></span>
                        </div>
                     
                      <textarea
                            class="h-48 w-full px-4 py-3 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 text-xs"
                            name="iframe"
                            placeholder="&lt;iframe src='THEURLYOUWANTTOEMBED' width='1600' height='900'>&lt;/iframe>"
                            x-model="formContent.iframe" x-on:focusout="showIframe = true"></textarea>
                      <p class="text-xs p-2 text-left">Copy an iframe embed code from Google slides/slides.com/Youtube
                        or any other source and paste it. If you have uploaded a poster as pdf the iframe will have
                        priority.</p>

                        
                    </div>

                  </div>

                </div>

              </div>
              <div class="mx-2 mb-8" x-show="showIframe" x-transition:enter="transition ease-out duration-300"
                x-transition:enter-start="opacity-0 transform scale-90"
                x-transition:enter-end="opacity-100 transform scale-100"
                x-transition:leave="transition ease-in duration-300"
                x-transition:leave-start="opacity-100 transform scale-100"
                x-transition:leave-end="opacity-0 transform scale-90">
                <h3 class="font-bold mb-4 text-gray-700 block">Preview of your embedded poster</h3>
                <div class="video-responsive mb-4 border border-gray-200 sm:rounded-lg" x-html="formContent.iframe">
                </div>
                <button @click="showIframe=false" title="close preview
                aria-label=" close preview"
                  class=" text-sm px-2 mt-2 focus:outline-none border border-transparent flex items-center text-center ">Close
                  preview <svg
                    class="w-4 h-4 mx-2 stroke-current text-gray-500 hover:text-gray-700 focus:text-gray-700 focus:outline-none"
                    viewBox="0 0 20 20">
                    <path fill="none" d="M13.864,6.136c-0.22-0.219-0.576-0.219-0.795,0L10,9.206l-3.07-3.07c-0.219-0.219-0.575-0.219-0.795,0
  c-0.219,0.22-0.219,0.576,0,0.795L9.205,10l-3.07,3.07c-0.219,0.219-0.219,0.574,0,0.794c0.22,0.22,0.576,0.22,0.795,0L10,10.795
  l3.069,3.069c0.219,0.22,0.575,0.22,0.795,0c0.219-0.22,0.219-0.575,0-0.794L10.794,10l3.07-3.07
  C14.083,6.711,14.083,6.355,13.864,6.136z M10,0.792c-5.086,0-9.208,4.123-9.208,9.208c0,5.085,4.123,9.208,9.208,9.208
  s9.208-4.122,9.208-9.208C19.208,4.915,15.086,0.792,10,0.792z M10,18.058c-4.451,0-8.057-3.607-8.057-8.057
  c0-4.451,3.606-8.057,8.057-8.057c4.449,0,8.058,3.606,8.058,8.057C18.058,14.45,14.449,18.058,10,18.058z">
                    </path>
                  </svg></button>
              </div>

              <?php
           
              if ($item->template->name=="poster"): ?>
              <div class="mt-4 px-4">
                <label for="select_tags" class="font-bold mb-1 text-gray-700 block">Tags</label>
                <p>You can choose from the prexisting tags or create new tags by typing in the field.</p>
                          <select class="tags" name="select_tags" multiple="multiple">

                          </select>
                </div>
                  <?php endif;?>

              <div class="mt-4 px-4">
                <label for="DOI" class="font-bold mb-1 text-gray-700 block">DOI for this contribution</label>
                <p>Copy the full URL to the DOI.</p>
                <input type="url" name="DOI"
                  class="w-full px-4 py-3 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                  placeholder="https://dx.doi.org/1010.00/123456" x-model="formContent.doi">
              </div>

              <div class="my-5 px-4">
                <label for="tweet" class="font-bold mb-1 text-gray-700 block">Link to Tweet</label>
                <p>Click on the date of your tweet to get to the permalink of the tweet.</p>
                <input type="url" name="tweet"
                  class="w-full px-4 py-3 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                  placeholder="https://twitter.com/status/09320490230" x-model="formContent.twitter">
              </div>
              <div class="my-5 px-4 flex flex-no-wrap">
                <div class="w-1/2">
                  <h4 class="font-bold mb-1 text-gray-700 block">Comments</h4>
                  <span class="w-full py-3"><?=$item->comments->count()?> Comments</span>
                </div>
                <?php if ($item->template->name=="poster"):?>
                <div class="w-1/2">
                  <h4 class="font-bold mb-1 text-gray-700 block">Votes</h4>
                  <span class="w-full py-3"><?=$item->number_of_votes?> Votes</span>
                </div>
                <?php endif;?>

              </div>

              <div class="flex justify-end px-4 mb-4">
                <button @click="sendFormToserver()"
                  class="w-32 focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-blue-500 hover:bg-blue-600 font-medium">Save</button>
              </div>
           
                  <?php endif; ?>


            </div>


          </div>
            <?php endif;?>
          <!-- / Step Content -->
        </div>
      </div>


    </div>
    <script type="text/javascript" src="<?=urls()->templates?>scripts/notify.min.js"></script>

    <?php if ($input->urlSegment(1)!=''):?>

<?php 
  $tags=$pages->get('/tags/')->children;
  $tags_array = array();
  
  foreach ($tags as $tag) {
      $tags_array[] = array(
        'id' => $tag->id,
        'text' => $tag->title

      );
  }
  
  $tags_json = json_encode($tags_array, true);

  
  
  ?>
    <script>
var tagOptions =<?=$tags_json?>;

  $(".tags").select2({
              tags: true,
              width:"100%", 
              data: tagOptions
            });
            $('.tags').val([<?=str_replace( "|", ",",$item->tags)?>]);
$('.tags').trigger('change'); // Notify any JS components that the value changed

      function app() {
        return {
          step: 1,
          passwordStrengthText: '',
          togglePassword: false,
          positionToInsert: null,
          previewImage:'<?=($item->img ? $item->img->url: '' )?>',
          file:'<?=($item->pdf ? $item->pdf->name: '' )?>',
          fileURL:'<?=($item->pdf ? $item->pdf->url: '' )?>',
          showEdit: false,
          showIframe:<?php echo ($item->iframe == "" ? 'false' : 'true'); ?>,
          formContent: {
            'type': '<?=$item->template->name?>',
                  'doi': '<?=$item->doi?>',
                  'twitter': '<?=$item->twitter?>',
                  'iframe': '<?=$item->iframe?>',
                  'abstract':'',
                  'title':'<?=$item->title?>',
                  'status': '<?=$item->parent->name?>',
                  persons: <?=$item->authors?>,
            
          },
          fileUpload(element){
                  let file = element.files[0];

                  ntfy.init()
                  if (file.size/ 1048576>1) {
                    ntfy.ntfy("error","bottom-right","Error","This file is too big.");
                    this.file='File too big.'
                  }else{
                    var formData = new FormData();
                    formData.append('pdfFile', file);
                    formData.append('id', <?=$item?>);
                    var xhr = new XMLHttpRequest();
                    xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
                    xhr.open('POST', '/VCMS/api/upload', true);
                    xhr.send(formData);
                    this.file=file.name;
                  }

                  //this.file=file.name;
                },
                sendPreviewToServer(file){
                  ntfy.init()
                  if (file.size/ 1048576>1) {
                    ntfy.ntfy("error","bottom-right","Error","This file is too big.");
                  }else{
                    var formData = new FormData();
                    formData.append('img', file);
                    formData.append('id', <?=$item?>);
                    var xhr = new XMLHttpRequest();
                    xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
                    xhr.open('POST', '/VCMS/api/uploadpreview', true);
                    xhr.send(formData);
                  }

                  //this.file=file.name;
                },
                sendFormToserver(){
                    var formData = new FormData();
                    formData.append('data', JSON.stringify(this.formContent));
                    formData.append('tags',  JSON.stringify($('.tags').select2('data')));
                    formData.append('id', <?=$input->urlSegment(1)?>);

                    var xhr = new XMLHttpRequest();
                    xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
                    xhr.open('POST', '/VCMS/api/edit', true);
                    xhr.send(formData);

               },
               setFile(title, path){
                this.file=title;
                this.fileURL=path;
               },
                onreadystatechangeHandler(evt) {
                  
                  if (evt.target.responseText!=""){
                  rsp=JSON.parse(evt.target.responseText);
                  
                  ntfy.init()
                  if ( rsp.success==1) {
                    ntfy.ntfy("success","bottom-right","Success",rsp.msg);
                  }else{
                    ntfy.ntfy("error","bottom-right","Error",rsp.msg);
                  }
                }
                },          
        }
      }
    </script>
 <?php endif;?>

    </div>
    </div>
    </div>

    
</main>