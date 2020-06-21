<header class="bg-white shadow" pw-replace="header">
      <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="px-2 sm:px-6 text-lg sm:text-2xl font-bold leading-tight text-gray-900">
        <?=$page->get("subtitle|title");?>
        </h1>
      </div>
</header>


<main pw-replace='main'>
        <div class="bg-gray-200 pb-8">
          <div class="max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-no-wrap">
              <div class="w-full mx-auto px-4 sm:px-6 "  edit="faq">
                <?php foreach($page->faq as $faq): ?>
                    <h2 class="text-xl font-bold leading-tight text-gray-900 mb-4">
                    <?=$faq->title?>
                    </h2>   
                    <ul class="blockmy-4 mx-auto" x-data="{selected:null}">
                    <?php
                    $counter=0;
                    foreach($faq->faq_section as $section): ?>
                        <li class="flex align-center flex-col mb-4">
                            <h4  @click="selected !== <?=$counter?> ? selected = <?=$counter?> : selected = null"
                                class="cursor-pointer px-5 py-3 bg-gray-50 border border-gray-200  inline-block hover:opacity-75 hover:shadow hover:-mb-3 rounded-t">
                              <button class="text-gray-700 font-bold" aria-controls="#<?=$section->name?>content" id="<?=$section->name?>" x-bind:aria-expanded="selected===<?=$counter?>"> <?=$section->title?></button>
                            </h4>
                            <div x-show="selected == <?=$counter?>" class="markdown border-b border-l border-r py-4 px-5 bg-gray-50" id="<?=$section->name?>content" aria-labelledby="#<?=$section->name?>" role="region">
                                <?=$section->body?>
                            </div>
                        </li>
                        
                        <?php $counter++; ?>
                    <?php endforeach; ?>
                    </ul>
                <?php endforeach; ?>
       </div>
    </div>
    </div>
</main>
