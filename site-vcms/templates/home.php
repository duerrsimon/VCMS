<?php namespace ProcessWire;

?>
<pw-region pw-replace="headerscript">
  <script src="<?=urls()->templates?>scripts/moment-with-locales.min.js"></script>
  <script src="<?=urls()->templates?>scripts/moment-timezone-with-data-10-year-range.min.js"></script>
</pw-region>


<header class="bg-white" pw-replace="header">
</header>

<main pw-replace='main'>
  <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-wrap-reverse sm:flex-no-wrap">
    <div class="mx-auto w-full sm:w-1/2 px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
      <div class="sm:text-center lg:text-left">
        <h2
          class="text-3xl tracking-tight leading-10 font-extrabold text-gray-900 sm:text-5xl sm:leading-none md:text-4xl">
          <?=$settings->get('conference_title')?>
          <br class="xl:hidden" />
          <span class="text-red-600"><?=page()->get('subtitle')?></span>
        </h2>
        <edit field="startdate,enddate" page="1020">
          <p class="mt-1 text-lg text-gray-600 sm:mt-2 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-2xl lg:mx-0">
            <time class="convertDate" datetime="<?=date("c",$settings->startdate)?>"></time> - <time class="convertDate"
              datetime="<?=date("c",$settings->enddate) ?>"></time>
          </p>
        </edit>
        <p class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-lg lg:mx-0">
          <?=page()->get('summary')?>
        </p>
        <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
          <div class="rounded-md shadow">
            <a href="<?=$pages->get("sign-in")->url?>"
              class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-white bg-red-600 hover:bg-red-500 focus:outline-none focus:shadow-outline transition duration-150 ease-in-out md:py-4 md:text-lg md:px-10">
              Sign up
            </a>
          </div>
          <div class="mt-3 sm:mt-0 sm:ml-3">
            <a href="<?=$pages->get("schedule")->url?>"
              class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base leading-6 font-medium rounded-md text-red-700 bg-red-100 hover:text-red-600 hover:bg-red-50 focus:outline-none focus:shadow-outline focus:border-red-300 transition duration-150 ease-in-out md:py-4 md:text-lg md:px-10">
              View Schedule
            </a>
          </div>
        </div>
        <div>
          <dl class="flex flex-wrap mt-6">
            <?php foreach($settings->deadline as $d): ?>
            <dt class="w-1/2"><?=$d->title?></dt>
            <dd class="w-1/2"><time class="convertDate" datetime="<?=date("c",$d->date)?>"></time></dd>
            <?php endforeach; ?>
          </dl>
        </div>
      </div>

    </div>
    <div class="mt-10 mx-auto w-full sm:w-1/2 px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
      <edit img>
        <img src="<?=$page->img->url?>" class="w-2/3 mx-auto h-auto" />
      </edit>
    </div>
  </div>
  <?php  if ($pages->get("/about/")->sponsorsfrontpage):?>
  <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex items-center flex-wrap">
    <hr class="w-full border border-gray-300">
    <?php foreach($pages->get("/about/")->images as $sponsor): ?>
                <a href="<?=$sponsor->hyperlink?>" class="w-full sm:w-1/4"><img src="<?=$sponsor->url?>" class="h-auto" alt="<?=$sponsor->subtitle?>"></a>
    <?php endforeach; ?>

  </div>
  <?php endif;?>
</main>


<script type="text/javascript" pw-replace="script">
  $(document).ready(function () {
    $('.convertDate').each(function () {
      $(this).html(moment($(this).attr('datetime')).format('D.M.Y'))

    });
  });
</script>