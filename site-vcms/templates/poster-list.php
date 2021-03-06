<?php namespace ProcessWire;

if ($settings->access_control->id>2){
    if(!$user->isLoggedin() ) { // not for login page
      $session->set('returnPage', $page->httpUrl);
      $session->redirect( $home->httpUrl.'sign-in/');
      die;
    }
  }


?>
<pw-region id="jquery">
</pw-region>
<pw-region pw-replace="headerscript">

<script src="<?=urls()->templates?>scripts/vue-lazyload.js"></script>

</pw-region>

<header class="bg-white" pw-replace="header">
          <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <h1 class="px-4 sm:px-6 text-2xl font-bold leading-tight text-gray-900">
              Virtual Poster session
            </h1>
          </div>
        </header>

<main pw-replace="main">
</head>
<div id="app">
            <input type="hidden" name="uid" ref="userid" value="<?=$user->id?>"> 
            <input type="hidden" name="httpUrl" ref="httpurl" value="<?=$home->httpUrl?>"> 
            <input type="hidden" name="votedPosters" ref="votedPosters" value="<?=$user->liked_posters?>">
            <input type="hidden" name="voting" ref="voting" value="<?=$settings->votingenable?>">        
</div>
     
<script src="<?=urls()->templates?>scripts/posters.js"></script>
</main>







<!-- <main>
            <div class="bg-gray-200 pb-8">

          <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap align-top">
         
                <div class="container mx-auto">
                    <div class="py-8">
                        <div class="my-2 mx-1 px-4 md:px-0 flex sm:flex-row flex-col">
                            <div class="flex flex-row mb-1 sm:mb-0">
                                <div class="relative">
                                    <select
                                        class="appearance-none h-full rounded-l border block appearance-none w-full bg-white border-gray-400 text-gray-700 py-2 px-4 pr-8 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                                        <option>5</option>
                                        <option>10</option>
                                        <option>20</option>
                                    </select>
                                    <div
                                        class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                        <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                            <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="relative">
                                    <select
                                        class="appearance-none h-full rounded-r border-t sm:rounded-r-none sm:border-r-0 border-r border-b block appearance-none w-full bg-white border-gray-400 text-gray-700 py-2 px-4 pr-8 leading-tight focus:outline-none focus:border-l focus:border-r focus:bg-white focus:border-gray-500">
                                        <option>All</option>
                                        <option>Computational</option>
                                        <option>Experimental</option>
                                    </select>
                                    <div
                                        class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                                        <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                            <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                                        </svg>
                                    </div>
                                </div>
                            </div>
                            <div class="block relative">
                                <span class="h-full absolute inset-y-0 left-0 flex items-center pl-2">
                                    <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current text-gray-500">
                                        <path
                                            d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z">
                                        </path>
                                    </svg>
                                </span>
                                <input placeholder="Search"
                                    class="appearance-none rounded-r rounded-l sm:rounded-l-none border border-gray-400 border-b block pl-8 pr-6 py-2 w-full bg-white text-sm placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none" />
                            </div>
                        </div>
                        <div class="mx-1 sm:-mx-8 px-4 sm:px-8 py-4  ">
                            <div class="inline-block w-full shadow rounded-lg overflow-hidden">
                                
                                <div class="bg-white border flex flex-wrap xs:justify-between ">
                                   <div class="w-full sm:w-1/2  relative">
                                    <a href="poster_pdf.html" class="absolute w-full h-full opacity-0 fd-sh flex  hover:opacity-100 bg-gray-transparent items-center justify-center content-center">
                                        <img src="img/enlarge.svg" class="w-12 h-12" alt="">
                                        </a>
                                        <img src="img/example_poster1.png" alt=""  class="w-full px-5 py-5 h-auto">
                                       
                                    </div>
                                   <div class="w-full sm:w-1/2 px-5 py-5 border-gray-300 border-l">

                                    <h2 class="font-bold text-cool-gray-700 text-xl">
                                       Posters Can Be Presented in Portable Document Format
                                    </h2>
                                    <div class="text-base mt-2 flex flex-wrap flex-grow-0">
                                        <div @click.away="open = false" class="relative " x-data="{ open: false }">
                                            <div>
                                                <button @click="open = !open" class="text-cool-gray-600 rounded-full underline hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700" aria-label="Notifications" aria-haspopup="true" x-bind:aria-expanded="open">
                                                   Ted Mosby, 
                                                  </button>
                                                  
                                            </div>
                                            <div x-show="open" 
                                            x-transition:enter="transition ease-out duration-100"
                                             x-transition:enter-start="transform opacity-0 scale-95" 
                                             x-transition:enter-end="transform opacity-100 scale-100" 
                                             x-transition:leave="transition ease-in duration-75" 
                                             x-transition:leave-start="transform opacity-100 scale-100" 
                                             x-transition:leave-end="transform opacity-0 scale-95" 
                                             class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                              <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                                <div class="flex content-center items-center">
                                                    <img src="img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                                     <a href="https://orcid.org/0000-0002-4304-8106" class="flex-1">0000-0001-1234-5678</a> 
                                                </div>
                                                <div  class="flex content-center items-center">
                                                    <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current" viewBox="0 0 20 20">
                                                        
							<path fill="none" d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378"></path> </svg>
                                                       <a href="https://github.com/duerrsimon" class="flex-1">tedmosby</a> 
                                                    </div>
                                                    <div class="flex content-center items-center">
                                                        <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current" viewBox="0 0 20 20">
                                                            <path fill="none" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                                                        </svg>
                                                       <a href="https://twitter.com/tedmosby" class="flex-1">tedmosby</a><br> 
                                                    </div>
                                                       <p class="mt-2"> LCBC ISIC SB, Ecole Polytechnique Federale de Lausanne, Switzerland </p>
                                                    
                                              </div>
                                            </div>
                                          </div> 
                                          <div @click.away="open = false" class="relative " x-data="{ open: false }">
                                            <div>
                                                <button @click="open = !open" class="text-cool-gray-600 rounded-full  hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700" aria-label="Notifications" aria-haspopup="true" x-bind:aria-expanded="open">
                                                   &nbsp;Marshall Eriksen,
                                                  </button>
                                            </div>
                                            <div x-show="open" 
                                            x-transition:enter="transition ease-out duration-100"
                                             x-transition:enter-start="transform opacity-0 scale-95" 
                                             x-transition:enter-end="transform opacity-100 scale-100" 
                                             x-transition:leave="transition ease-in duration-75" 
                                             x-transition:leave-start="transform opacity-100 scale-100" 
                                             x-transition:leave-end="transform opacity-0 scale-95" 
                                             class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                              <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                                <div class="flex content-center items-center">
                                                    <img src="img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                                     <a href="https://orcid.org/0000-0002-4304-8106" class="flex-1">0000-0001-1234-5678</a> 
                                                </div>
                                                <div  class="flex content-center items-center">
                                                    <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current" viewBox="0 0 20 20">
                                                        
							<path fill="none" d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378"></path> </svg>
                                                       <a href="https://github.com/duerrsimon" class="flex-1">eriksen_marsh</a> 
                                                    </div>
                                                    <div class="flex content-center items-center">
                                                        <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current" viewBox="0 0 20 20">
                                                            <path fill="none" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                                                        </svg>
                                                       <a href="https://twitter.com/tedmosby" class="flex-1">eriksen</a><br> 
                                                    </div>
                                                       <p class="mt-2"> GNB National Bank, McClarens Pub</p>
                                                    
                                              </div>
                                            </div>
                                          </div> 
                                          <div @click.away="open = false" class="relative mx-1" x-data="{ open: false }">
                                            <div>
                                                <button @click="open = !open" class="text-cool-gray-600 rounded-full hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700" aria-label="Notifications" aria-haspopup="true" x-bind:aria-expanded="open">
                                                    Alyson Hannigan
                                                  </button>
                                            </div>
                                            <div x-show="open" 
                                            x-transition:enter="transition ease-out duration-100"
                                             x-transition:enter-start="transform opacity-0 scale-95" 
                                             x-transition:enter-end="transform opacity-100 scale-100" 
                                             x-transition:leave="transition ease-in duration-75" 
                                             x-transition:leave-start="transform opacity-100 scale-100" 
                                             x-transition:leave-end="transform opacity-0 scale-95" 
                                             class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                              <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                                <div class="flex content-center items-center">
                                                    <img src="img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                                     <a href="https://orcid.org/0000-0002-4304-8106" class="flex-1">0000-0001-1234-5678</a> 
                                                </div>
                                                <div  class="flex content-center items-center">
                                                    <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current" viewBox="0 0 20 20">
                                                        
							<path fill="none" d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378"></path> </svg>
                                                       <a href="https://github.com/duerrsimon" class="flex-1">alyson_hanigan</a> 
                                                    </div>
                                                    <div class="flex content-center items-center">
                                                        <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current" viewBox="0 0 20 20">
                                                            <path fill="none" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                                                        </svg>
                                                       <a href="https://twitter.com/tedmosby" class="flex-1">alyson_hanigan</a><br> 
                                                    </div>
                                                       <p class="mt-2"> McLarens Bar </p>
                                                    
                                              </div>
                                            </div>
                                          </div>  
                                     </div>
                                    <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Abstract</h5>
                                    <p class="text-sm">                                   
                                      While PDF Posters are nice for offline poster sessions, the amount of information they display most of the times is way to much to read on a screen. For Virtual poster sessions the format should be adapted and use can be made of multi page PDFs to structure ones thoughts or even interactive html presentation can be used (see Google Slides and reveal.js examples). Nevertheless you can use services like Posterdown to create Posters directly from R in a reproducible way.
                                    </p>
                                    <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Metadata</h5>
                                    <div class="flex flex-wrap lg:flex-no-wrap items-center text-sm">
                                      <div class="w-full lg:w-1/3">
                                        <span class="pr-1 font-medium text-xs">DOI</span>
                                        <a class=" text-red-800 hover:text-gray-500" href="">  
                                          10/1023.zenodo.1322                                 
                                        </a>
                                      </div>
                                      <div class="w-full lg:w-1/3 pl-2 flex items-center">
                                        
                                          <svg class="w-4 h-4 inline-block mr-2 stroke-current text-blue-500 fill-current" viewBox="0 0 20 20">
                                            <path  d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                                        </svg>
                                        <a class=" text-red-800 hover:text-gray-500" href="">  
                                          t.co/12319020                               
                                        </a>
                                      </div>
                                      <div class="w-full lg:w-1/3 pl-2 flex items-center">
                                        
                                        <svg class="w-4 h-4 inline-block mr-2 stroke-current text-gray-800" viewBox="0 0 20 20">
                                         <path fill="none" d="M16.254,3.399h-0.695V3.052c0-0.576-0.467-1.042-1.041-1.042c-0.576,0-1.043,0.467-1.043,1.042v0.347H6.526V3.052c0-0.576-0.467-1.042-1.042-1.042S4.441,2.476,4.441,3.052v0.347H3.747c-0.768,0-1.39,0.622-1.39,1.39v11.813c0,0.768,0.622,1.39,1.39,1.39h12.507c0.768,0,1.391-0.622,1.391-1.39V4.789C17.645,4.021,17.021,3.399,16.254,3.399z M14.17,3.052c0-0.192,0.154-0.348,0.348-0.348c0.191,0,0.348,0.156,0.348,0.348v0.347H14.17V3.052z M5.136,3.052c0-0.192,0.156-0.348,0.348-0.348S5.831,2.86,5.831,3.052v0.347H5.136V3.052z M16.949,16.602c0,0.384-0.311,0.694-0.695,0.694H3.747c-0.384,0-0.695-0.311-0.695-0.694V7.568h13.897V16.602z M16.949,6.874H3.052V4.789c0-0.383,0.311-0.695,0.695-0.695h12.507c0.385,0,0.695,0.312,0.695,0.695V6.874z M5.484,11.737c0.576,0,1.042-0.467,1.042-1.042c0-0.576-0.467-1.043-1.042-1.043s-1.042,0.467-1.042,1.043C4.441,11.271,4.908,11.737,5.484,11.737z M5.484,10.348c0.192,0,0.347,0.155,0.347,0.348c0,0.191-0.155,0.348-0.347,0.348s-0.348-0.156-0.348-0.348C5.136,10.503,5.292,10.348,5.484,10.348z M14.518,11.737c0.574,0,1.041-0.467,1.041-1.042c0-0.576-0.467-1.043-1.041-1.043c-0.576,0-1.043,0.467-1.043,1.043C13.475,11.271,13.941,11.737,14.518,11.737z M14.518,10.348c0.191,0,0.348,0.155,0.348,0.348c0,0.191-0.156,0.348-0.348,0.348c-0.193,0-0.348-0.156-0.348-0.348C14.17,10.503,14.324,10.348,14.518,10.348z M14.518,15.212c0.574,0,1.041-0.467,1.041-1.043c0-0.575-0.467-1.042-1.041-1.042c-0.576,0-1.043,0.467-1.043,1.042C13.475,14.745,13.941,15.212,14.518,15.212z M14.518,13.822c0.191,0,0.348,0.155,0.348,0.347c0,0.192-0.156,0.348-0.348,0.348c-0.193,0-0.348-0.155-0.348-0.348C14.17,13.978,14.324,13.822,14.518,13.822z M10,15.212c0.575,0,1.042-0.467,1.042-1.043c0-0.575-0.467-1.042-1.042-1.042c-0.576,0-1.042,0.467-1.042,1.042C8.958,14.745,9.425,15.212,10,15.212z M10,13.822c0.192,0,0.348,0.155,0.348,0.347c0,0.192-0.156,0.348-0.348,0.348s-0.348-0.155-0.348-0.348C9.653,13.978,9.809,13.822,10,13.822z M5.484,15.212c0.576,0,1.042-0.467,1.042-1.043c0-0.575-0.467-1.042-1.042-1.042s-1.042,0.467-1.042,1.042C4.441,14.745,4.908,15.212,5.484,15.212z M5.484,13.822c0.192,0,0.347,0.155,0.347,0.347c0,0.192-0.155,0.348-0.347,0.348s-0.348-0.155-0.348-0.348C5.136,13.978,5.292,13.822,5.484,13.822z M10,11.737c0.575,0,1.042-0.467,1.042-1.042c0-0.576-0.467-1.043-1.042-1.043c-0.576,0-1.042,0.467-1.042,1.043C8.958,11.271,9.425,11.737,10,11.737z M10,10.348c0.192,0,0.348,0.155,0.348,0.348c0,0.191-0.156,0.348-0.348,0.348s-0.348-0.156-0.348-0.348C9.653,10.503,9.809,10.348,10,10.348z"></path>
                                      </svg>
                                     <span >15.06.2019</span>
                                      </div>
                                    </div>

                                    <div class="flex mt-6 items-center content-end align-bottom flex-wrap">
                                        <div class="flex-1 ">
                                            <div class="block w-full mx-auto flex items-center">
                                            <a class="text-cool-gray-600 hover:text-red-600 inline mr-2" href=""><svg class="w-8 h-8 ml-6 stroke-current" viewBox="0 0 20 20">
                                                <path fill="none" d="M12.871,9.337H7.377c-0.304,0-0.549,0.246-0.549,0.549c0,0.303,0.246,0.55,0.549,0.55h5.494
                                                c0.305,0,0.551-0.247,0.551-0.55C13.422,9.583,13.176,9.337,12.871,9.337z M15.07,6.04H5.179c-0.304,0-0.549,0.246-0.549,0.55
                                                c0,0.303,0.246,0.549,0.549,0.549h9.891c0.303,0,0.549-0.247,0.549-0.549C15.619,6.286,15.373,6.04,15.07,6.04z M17.268,1.645
                                                H2.981c-0.911,0-1.648,0.738-1.648,1.648v10.988c0,0.912,0.738,1.648,1.648,1.648h4.938l2.205,2.205l2.206-2.205h4.938
                                                c0.91,0,1.648-0.736,1.648-1.648V3.293C18.916,2.382,18.178,1.645,17.268,1.645z M17.816,13.732c0,0.607-0.492,1.1-1.098,1.1
                                                h-4.939l-1.655,1.654l-1.656-1.654H3.531c-0.607,0-1.099-0.492-1.099-1.1v-9.89c0-0.607,0.492-1.099,1.099-1.099h13.188
                                                c0.605,0,1.098,0.492,1.098,1.099V13.732z"></path>                                            </svg></a><span>1&nbsp;Comment</span></div>
                                            
                            
                                        </div>
                                        <div class="flex-1 ">
                                            <div class="block w-full mx-auto flex items-center">
                                            <a class="text-cool-gray-600 hover:text-red-600 inline mr-2" href=""><svg class="w-8 h-8 ml-6 stroke-current" viewBox="0 0 20 20">
                                                <path d="M9.719,17.073l-6.562-6.51c-0.27-0.268-0.504-0.567-0.696-0.888C1.385,7.89,1.67,5.613,3.155,4.14c0.864-0.856,2.012-1.329,3.233-1.329c1.924,0,3.115,1.12,3.612,1.752c0.499-0.634,1.689-1.752,3.612-1.752c1.221,0,2.369,0.472,3.233,1.329c1.484,1.473,1.771,3.75,0.693,5.537c-0.19,0.32-0.425,0.618-0.695,0.887l-6.562,6.51C10.125,17.229,9.875,17.229,9.719,17.073 M6.388,3.61C5.379,3.61,4.431,4,3.717,4.707C2.495,5.92,2.259,7.794,3.145,9.265c0.158,0.265,0.351,0.51,0.574,0.731L10,16.228l6.281-6.232c0.224-0.221,0.416-0.466,0.573-0.729c0.887-1.472,0.651-3.346-0.571-4.56C15.57,4,14.621,3.61,13.612,3.61c-1.43,0-2.639,0.786-3.268,1.863c-0.154,0.264-0.536,0.264-0.69,0C9.029,4.397,7.82,3.61,6.388,3.61"></path>
                                            </svg></a><span>10&nbsp;Votes</span></div>
                                            
                                        
                                        </div>
                                        <div class="w-full sm:flex-1 content-center items-center text-center">
                                            <a href="poster_pdf.html" class="w-full sm:w-auto mt-2 sm:mt-0 inline-block focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-gray-500 hover:bg-gray-600 font-medium">
                                             View
                                            </a> 
                                         </div>
                                  </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                     
                        
                        <div class="sm:-mx-8 px-4 sm:px-8 py-4">
                            <div class="inline-block min-w-full shadow rounded-lg overflow-hidden">
                                
                                <div
                                    class="px-5 py-5 bg-white border flex flex-col xs:flex-row items-center xs:justify-between          ">
                                    <span class="text-xs xs:text-sm text-gray-900">
                                        Showing 1 to 3 of 3 Entries
                                    </span>
                                    <ul class="flex text-sm mt-2 items-center">
                                        <!-- <li class="">
                                            <a class="flex items-center font-bold mx-1 px-3 py-2 bg-gray-200 text-gray-500 rounded-lg" href="#">
                                                <svg class="w-4 h-4 stroke-current" viewBox="0 0 20 20">
                                                    <path fill="none" d="M18.271,9.212H3.615l4.184-4.184c0.306-0.306,0.306-0.801,0-1.107c-0.306-0.306-0.801-0.306-1.107,0
                                                    L1.21,9.403C1.194,9.417,1.174,9.421,1.158,9.437c-0.181,0.181-0.242,0.425-0.209,0.66c0.005,0.038,0.012,0.071,0.022,0.109
                                                    c0.028,0.098,0.075,0.188,0.142,0.271c0.021,0.026,0.021,0.061,0.045,0.085c0.015,0.016,0.034,0.02,0.05,0.033l5.484,5.483
                                                    c0.306,0.307,0.801,0.307,1.107,0c0.306-0.305,0.306-0.801,0-1.105l-4.184-4.185h14.656c0.436,0,0.788-0.353,0.788-0.788
                                                    S18.707,9.212,18.271,9.212z"></path>
                                                </svg>
                                            </a>
                                        </li> -- >
                                        <li class="">
                                            <a class="font-bold mx-1 px-3 py-2 bg-gray-600 text-gray-300 hover:bg-gray-700 hover:text-gray-200 rounded-lg" href="#">1</a>
                                        </li>
                                        <li class="">
                                            <a class="font-bold mx-1 px-3 py-2 bg-gray-200 text-gray-700 hover:bg-gray-700 hover:text-gray-200 rounded-lg" href="#">2</a>
                                        </li>
                                        <li class="">
                                            <a class="font-bold mx-1 px-3 py-2 bg-gray-200 text-gray-700 hover:bg-gray-700 hover:text-gray-200 rounded-lg" href="#">3</a>
                                        </li>
                                        <li class="">
                                            <a class="flex items-center font-bold mx-1 px-3 py-2 bg-gray-200 text-gray-700 hover:bg-gray-700 hover:text-gray-200 rounded-lg" href="#">
                                                <svg class="w-4 h-4 stroke-current fill-current" viewBox="0 0 20 20">
                                                    <path  d="M1.729,9.212h14.656l-4.184-4.184c-0.307-0.306-0.307-0.801,0-1.107c0.305-0.306,0.801-0.306,1.106,0
                                                    l5.481,5.482c0.018,0.014,0.037,0.019,0.053,0.034c0.181,0.181,0.242,0.425,0.209,0.66c-0.004,0.038-0.012,0.071-0.021,0.109
                                                    c-0.028,0.098-0.075,0.188-0.143,0.271c-0.021,0.026-0.021,0.061-0.045,0.085c-0.015,0.016-0.034,0.02-0.051,0.033l-5.483,5.483
                                                    c-0.306,0.307-0.802,0.307-1.106,0c-0.307-0.305-0.307-0.801,0-1.105l4.184-4.185H1.729c-0.436,0-0.788-0.353-0.788-0.788
                                                    S1.293,9.212,1.729,9.212z"></path>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            
          </div>

            
        </div>
        </main> -->