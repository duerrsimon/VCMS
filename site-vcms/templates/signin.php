<?php namespace ProcessWire;

include('_functions.php');

?>
<pw-region pw-replace="headerscript">
<link rel="stylesheet" href="<?=urls()->templates?>css/signin.css">
</pw-region>
<header class="bg-white" pw-replace="header">
          <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <h1 class="px-0 sm:px-6 text-2xl font-bold leading-tight text-gray-900">
              Signin
            </h1>
            <span class="px-0 sm:px-6 text-red-600 font-bold mt-2 text-lg" > <?=$settings->conference_title?>  <?=$home->subtitle?>
          </div>
        </header>


<main pw-replace="main">
<div class="bg-gray-200 mt-2 pb-8">
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap">
                <div class="py-6 w-full">
                    <div class="flex   bg-white rounded-lg shadow-lg overflow-hidden mx-auto  p-4">
                          <div class="hidden lg:block lg:w-1/2 bg-contain bg-center bg-no-repeat" style="background-image:url('<?=$home->img->url?>')">
                        </div>
                          <div class="w-full py-8 lg:ml-8 mx-1 lg:mx-4 px-1 lg:px-4 lg:w-1/2 lg:border-l border-gray-200">
                             
                             
                     
                              <?php
                              if ($user->isLoggedIn()){
                                echo '<h2 class="text-2xl font-semibold text-gray-700 text-center">'.$user->fullname.'</h2>';
                              }else{
                                echo '<h2 class="text-2xl font-semibold text-gray-700 text-center">Login</h2>';
                              }
                                    $loginRegister = $modules->get('LoginRegister');
                                    $loginRegister->set('renderStyles', false); 
                                    echo $loginRegister->execute();
                                ?>
                              
                             
                            
                             
                          </div>
                      </div>
                  </div>
            </div>
            </div>
            
		
		
        </main>