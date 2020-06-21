<?php namespace ProcessWire?>


<pw-region pw-replace="headerscript">

<script  src="/VCMS/site/templates/scripts/comments.min.js"></script>
<style>
    [x-cloak] { display: none; }
</style>
</pw-region>


<header class="bg-white" pw-replace="header">
        <div class="max-w-7xl mx-auto pt-4 px-4  sm:px-6 lg:px-8">
          <h1 class="text-xl font-bold leading-tight text-gray-900">
            Virtual Poster Session
          </h1>
          <nav class="text-black font-bold mt-1 mb-4" aria-label="Breadcrumb">
            <ol class="list-none p-0 inline-flex">
              <li class="flex items-center">
                <a href="#" class="text-red-800">Posters </a>
                <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"/></svg>
              </li>
              <li>
                <a href="#" class="text-gray-500" aria-current="page"><?=$page->parent->title?></a>
              </li>
            </ol>
          </nav>
        </div>
      </header>



<main pw-replace="main">
    <div class="bg-gray-200 pb-8">
        <div class="mx-auto pt-4 sm:px-6 lg:px-8 flex items-center justify-center flex-no-wrap align-top">
            <div class="flex-initial">
            <div class="w-8 h-8">
            <?php if($page->prev()!=''):?>
                <a href="<?=$page->prev()->url?>" aria-label="Previous Poster" title="Previous Poster">
                    <svg class="w-8 h-8 inline-block stroke-current text-gray-700 hover:text-cool-gray-400"
                        viewBox="0 0 20 20">
                        <path d="M18.271,9.212H3.615l4.184-4.184c0.306-0.306,0.306-0.801,0-1.107c-0.306-0.306-0.801-0.306-1.107,0
                    L1.21,9.403C1.194,9.417,1.174,9.421,1.158,9.437c-0.181,0.181-0.242,0.425-0.209,0.66c0.005,0.038,0.012,0.071,0.022,0.109
                    c0.028,0.098,0.075,0.188,0.142,0.271c0.021,0.026,0.021,0.061,0.045,0.085c0.015,0.016,0.034,0.02,0.05,0.033l5.484,5.483
                    c0.306,0.307,0.801,0.307,1.107,0c0.306-0.305,0.306-0.801,0-1.105l-4.184-4.185h14.656c0.436,0,0.788-0.353,0.788-0.788
                    S18.707,9.212,18.271,9.212z"></path>
                    </svg>

                </a>
                <?php endif;?>
                </div>
            </div>
            <div class="px-4 flex-initial">
                
                <a href="<?=$page->parent->url?>"  aria-label="Link back to Poster overview" title="Back to Poster overview">
                    <svg class="w-8 h-8 text-gray-700 hover:text-cool-gray-400 fill-current" version="1.1"
                        viewBox="0 0 19.003 17.309">
                        <g transform="translate(-28.15 -124.87)">
                            <g transform="matrix(1.8245 0 0 1.8245 -130.71 -633.37)" aria-label="V">
                                <circle cx="96.228" cy="416.85" r="1.2573" stroke-width="0" />
                                <circle cx="96.228" cy="423.82" r="1.2573" />
                                <circle cx="96.228" cy="420.34" r="1.2573" />
                                <circle transform="translate(-6.1662e-7 3.0831e-6)" cx="88.327" cy="423.82" r="1.2573" />
                                <circle cx="88.327" cy="416.85" r="1.2573" stroke-width="0" />
                                <circle cx="88.327" cy="420.34" r="1.2573" stroke-width="0" />
                                <g transform="translate(.055047)">
                                    <circle transform="translate(-6.1662e-7 3.0831e-6)" cx="92.223" cy="416.85" r="1.2573" stroke-width="0" />
                                    <circle cx="92.223" cy="423.82" r="1.2573" />
                                    <circle cx="92.223" cy="420.34" r="1.2573" />
                                </g>
                            </g>
                        </g>
                    </svg>
                </a>
            
            </div>
            <div class="">
            <div class="w-8 h-8">
             <?php if($page->next()!=''):?>
                <a href="<?=$page->next()->url?>" aria-label="Next Poster" title="Next Poster">
                    <svg class="w-8 h-8 inline-block fill-current stroke-current text-gray-700 hover:text-cool-gray-400"
                        viewBox="0 0 20 20">
                        <path d="M1.729,9.212h14.656l-4.184-4.184c-0.307-0.306-0.307-0.801,0-1.107c0.305-0.306,0.801-0.306,1.106,0
                    l5.481,5.482c0.018,0.014,0.037,0.019,0.053,0.034c0.181,0.181,0.242,0.425,0.209,0.66c-0.004,0.038-0.012,0.071-0.021,0.109
                    c-0.028,0.098-0.075,0.188-0.143,0.271c-0.021,0.026-0.021,0.061-0.045,0.085c-0.015,0.016-0.034,0.02-0.051,0.033l-5.483,5.483
                    c-0.306,0.307-0.802,0.307-1.106,0c-0.307-0.305-0.307-0.801,0-1.105l4.184-4.185H1.729c-0.436,0-0.788-0.353-0.788-0.788
                    S1.293,9.212,1.729,9.212z"></path>
                    </svg>
                </a>
             <?php endif;?>
             </div>
            </div>
        </div>
        <div class="mx-auto pb-6 sm:px-6 lg:px-8 flex flex-grow-0 flex-no-wrap align-top">

            <div class="w-full mx-auto  sm:px-8 flex-grow-0">
                <div class="px-1 sm:px-4 py-4">

                    <div class=" sm:-mx-8 px-4 sm:px-8 py-4 ">
                        <div class=" shadow rounded-lg">

                            <div class="bg-white border flex  flex-wrap xl:flex-no-wrap align-top flex-grow-0">
                                <div class="w-full xl:w-2/3 relative h-auto ">
                                    <div class="sticky top-2">
                                    <?php if($page->iframe!=''):?>
                                        <div class="video-responsive mb-4 sm:rounded-lg">
                                        <?=$page->iframe?>
                                        </div>
                                        <?php endif;?>
                                    <?php if($page->pdf):?>
                                        <embed src="<?=$page->pdf->url?>" type="application/pdf" class="sticky top-0 w-full px-5 py-5 h-screen" >
                                   <?php endif;?>
                                    </div>

                                </div>
                                <div class="w-full xl:w-1/3  py-5 border-gray-300 border-l">

                                    <h2 class="font-bold text-cool-gray-700 text-xl px-5">
                                    <?=$page->title?> 
                                    </h2>
                                    <div class="text-base mt-2 flex flex-wrap flex-grow-0 px-5">
                                        <div @click.away="open = false" class="relative " x-data="{ open: false }">
                                            <div>
                                                <button @click="open = !open"
                                                    class="text-cool-gray-600 rounded-full underline hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700"
                                                    aria-label="Notifications" aria-haspopup="true"
                                                    x-bind:aria-expanded="open">
                                                    Ted Mosby,
                                                </button>

                                            </div>
                                            <div x-show="open" x-transition:enter="transition ease-out duration-100"
                                                x-transition:enter-start="transform opacity-0 scale-95"
                                                x-transition:enter-end="transform opacity-100 scale-100"
                                                x-transition:leave="transition ease-in duration-75"
                                                x-transition:leave-start="transform opacity-100 scale-100"
                                                x-transition:leave-end="transform opacity-0 scale-95"
                                                class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl" x-cloak>
                                                <div
                                                    class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                                    <div class="flex content-center items-center">
                                                        <img src="<?=urls()->templates?>img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                                        <a href="https://orcid.org/0000-0002-4304-8106"
                                                            class="flex-1">0000-0001-1234-5678</a>
                                                    </div>
                                                    <div class="flex content-center items-center">
                                                        <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current"
                                                            viewBox="0 0 20 20">

                                                            <path fill="none"
                                                                d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378">
                                                            </path>
                                                        </svg>
                                                        <a href="https://github.com/duerrsimon"
                                                            class="flex-1">tedmosby</a>
                                                    </div>
                                                    <div class="flex content-center items-center">
                                                        <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current"
                                                            viewBox="0 0 20 20">
                                                            <path fill="none"
                                                                d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                                            </path>
                                                        </svg>
                                                        <a href="https://twitter.com/tedmosby"
                                                            class="flex-1">tedmosby</a><br>
                                                    </div>
                                                    <p class="mt-2"> Open University </p>

                                                </div>
                                            </div>
                                        </div>
                                  
                                    </div>
                                    <h5 class="font-bold text-cool-gray-500 text-sm mt-4 px-5"> Abstract</h5>
                                    <div class="text-sm px-5 abstract">
                                    <?=$page->abstract?> 
                                    <?=$page->references?> 

                                    </div>
                                    <?php if($page->doi!=''&&$page->twitter!=''):?>
                                    <h5 class="font-bold text-cool-gray-500 text-sm mt-4 px-5"> Metadata</h5>
                                    <div class="flex flex-wrap lg:flex-no-wrap items-center text-sm px-5">
                                    <?php if($page->doi!=''):?>
                                        <div class="w-full lg:w-1/2">
                                            <span class="pr-1 font-medium text-xs">DOI</span>
                                            <a class=" text-red-800 hover:text-gray-500" href="">
                                            <?=$page->doi?> 
                                            </a>
                                        </div>
                                    <?php endif;?>
                                    <?php if($page->twitter!=''):?>
                                        <div class="w-full lg:w-1/2 pl-2 flex items-center">

                                            <svg class="w-4 h-4 inline-block mr-2 stroke-current text-blue-500 fill-current"
                                                viewBox="0 0 20 20">
                                                <path
                                                    d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                                </path>
                                            </svg>
                                            <a class=" text-red-800 hover:text-gray-500" href="">
                                            <?=$page->twitter?> 
                                            </a>
                                        </div>
                                        <?php endif;?>
                                     
                                    </div>
                                    <?php endif;?> 
                                    <div class="px-4 py-5 border-b border-gray-200 sm:px-6 flex items-center">
                                        <h3 class="flex-1 text-lg leading-6 font-medium text-gray-900">
                                            Comments
                                        </h3>
                                        <div class="block flex-1 w-full mx-auto flex items-center">
                                            <button id="votebutton" class="text-cool-gray-600 <?php if ($user->liked_posters->has($page)){echo 'text-red-600';}?> hover:text-red-600 inline mr-2" ><svg
                                                    class="w-8 h-8 ml-6 stroke-current" viewBox="0 0 20 20">
                                                    <path
                                                        d="M9.719,17.073l-6.562-6.51c-0.27-0.268-0.504-0.567-0.696-0.888C1.385,7.89,1.67,5.613,3.155,4.14c0.864-0.856,2.012-1.329,3.233-1.329c1.924,0,3.115,1.12,3.612,1.752c0.499-0.634,1.689-1.752,3.612-1.752c1.221,0,2.369,0.472,3.233,1.329c1.484,1.473,1.771,3.75,0.693,5.537c-0.19,0.32-0.425,0.618-0.695,0.887l-6.562,6.51C10.125,17.229,9.875,17.229,9.719,17.073 M6.388,3.61C5.379,3.61,4.431,4,3.717,4.707C2.495,5.92,2.259,7.794,3.145,9.265c0.158,0.265,0.351,0.51,0.574,0.731L10,16.228l6.281-6.232c0.224-0.221,0.416-0.466,0.573-0.729c0.887-1.472,0.651-3.346-0.571-4.56C15.57,4,14.621,3.61,13.612,3.61c-1.43,0-2.639,0.786-3.268,1.863c-0.154,0.264-0.536,0.264-0.69,0C9.029,4.397,7.82,3.61,6.388,3.61">
                                                    </path>
                                                </svg></button><span id="no_votes"><?=$page->number_of_votes?></span>&nbsp;Votes</div>
                                    </div>
                                    <?php if ($page->speaker):?> 
                                    <div class="py-1 px-4">
                                    <p class="text-xs text-gray-600">The presenter has indicated the following pronouns: <?=$page->speaker->pronouns ?></p>
                                    </div>
                                    <?php endif;?> 
                                    <div class="p-4">
                                    <?php echo $page->comments->render(array('headline' => '')); ?>
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
                    </div>



                </div>
            </div>


        </div>


    </div>
    <script type="text/javascript" src="<?=urls()->templates?>scripts/notify.min.js"></script>
</main>


<script type="text/javascript" pw-replace="script">
       $(document).ready(function () {
        ntfy.init();
       

  $('#votebutton').click(function () {
   
    var data = {
      purpose: 'vote',
      userid: <?=$user->id?>,
      entry: <?=$page?>
    };
    $.ajax({
      url: "<?=$home->httpUrl;?>api/vote/",
      dataType: "JSON",
      type: "POST",
      data: data,
      success: function(response) {
          if (response['success']===1) {
            ntfy.ntfy("fav","bottom-right","Voting",response['msg']);
            $('#votebutton').addClass('text-red-600');
            var no_votes=$('#no_votes').text();
            no_votes++;
            $('#no_votes').text(no_votes);
          }else{
            ntfy.ntfy("warning","bottom-right","Voting",response['msg']);
          }
        
      },
      error: function(response) {
        ntfy.ntfy("error","bottom-right","Error","Your vote could not be saved.");
      }
    });
    return false;
  });
 
});
        
</script>
        