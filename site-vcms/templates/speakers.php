<?php namespace ProcessWire?>

<pw-region pw-replace="headerscript">

</pw-region>

<header class="bg-white" pw-replace="header">
  <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <h1 class="px-0 sm:px-6 text-2xl font-bold leading-tight text-gray-900">
      Speakers
    </h1>
    <span class="px-0 sm:px-6 text-red-600 font-bold mt-2 text-lg"> <?=$settings->conference_title?>
      <?=$home->subtitle?>
  </div>
</header>

<main pw-replace="main">
  <div class="bg-gray-200 mt-2 pb-8">
    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 flex flex-no-wrap align-top">
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-4 gap-4">
        <?php
            $talks=$pages->find("template=talk, scheduled=1, sort=category");
           
            foreach ($talks as $t):
          ?>
        <div class="w-full bg-white shadow-lg rounded-lg overflow-hidden my-4">
          <img class="w-full h-56 object-cover object-center" src="<?=$t->img->url?>" alt="avatar">
          <div class="flex items-center px-4 py-3 bg-gray-900">
              <h1 class="mx-3 text-white font-semibold text-lg"><?=$t->category?></h1>
          </div>
          <div class="py-4 px-6">
              <h1 class="text-2xl font-semibold text-gray-800"><?=$t->speaker->fullname?></h1>
              <p class="py-2 text-lg text-gray-700"><?=$t->speaker->affiliation?></p>
              <div class="flex flex-wrap items-center mt-4 text-gray-700">
                  <span class="w-full text-sm text-gray-500 uppercase">Title of talk</span>
                  <span class="w-full text-sm text-gray-800"><?=$t->title?></span>
              </div>
          </div>
        </div>
        <?php endforeach;?>
      </div>
    </div>
  </div>
</main>