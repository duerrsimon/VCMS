<?php namespace ProcessWire;

$home = pages()->get('/'); // homepage
$siteTitle = 'Virtual Conference Managment System';	
$siteTagline = $home->summary; 
$settings =$pages->get('/settings/');


// as a convenience, set location of our 3rd party resources (Uikit and jQuery)...
urls()->set('jquery', 'wire/modules/Jquery/JqueryCore/JqueryCore.js');
urls()->set('alpine', urls()->templates.'scripts/alpine.js');

function generateMenu($home, $page) {
    $menu="";
    if ($page->name == $home->name) {
      $active="text-white bg-gray-900";
    }else{
      $active="text-gray-300 hover:text-white hover:bg-gray-700";
    }
  
  $menu.='<a href="'.$home->url.'" class="px-3 py-2 rounded-md text-sm font-medium '.$active.' focus:outline-none focus:text-white focus:bg-gray-700">'.$home->title.'</a>';
  foreach($home->children as $m){
    if ($m->name == $page->name) {
      $active="text-white bg-gray-900";
    }else{
      $active="text-gray-300 hover:text-white hover:bg-gray-700";
    }
    $menu.= "<a href=".$m->url."
    class='ml-4 px-3 py-2 rounded-md text-sm font-medium $active focus:outline-none focus:text-white focus:bg-gray-700'> $m->title</a>";
  
  }
  return $menu;
  }
    
  

  function generateMobileMenu($home, $page) {
    $menu="";
    if ($page->name == $home->name) {
      $active="text-white bg-gray-900";
    }else{
      $active="text-gray-300 hover:text-white hover:bg-gray-700";
    }
  
  $menu.='<a href="'.$home->url.'" class="block px-3 py-2 rounded-md text-sm font-medium '.$active.' focus:outline-none focus:text-white focus:bg-gray-700">'.$home->title.'</a>';
  foreach($home->children as $m){
    if ($m->name == $page->name) {
      $active="text-white bg-gray-900";
    }else{
      $active="text-gray-300 hover:text-white hover:bg-gray-700";
    }
    $menu.= "<a href=".$m->url."
    class='mt-1 block px-3 py-2 rounded-md text-sm font-medium $active focus:outline-none focus:text-white focus:bg-gray-700'> $m->title</a>";
  
  }
  return $menu;
  }
 
  // Add hooks for generating static json files
  wire()->addHook('LazyCron::every5Minutes', null, 'posterJSON');

  wire()->addHook('LazyCron::everyHour', null, 'tagsJSON');

function posterJSON(HookEvent $e) {
  $posters = pages()->find('template=poster, parent=/contributions/accepted/');
  // extract required fields into plain array
  $data = $posters->explode(function($item) {
  
              $tags =  $item->tags->explode(function($t){
                return array(
                  'id' => $t->id,
                  'name'=> $t->title
                );
              } 
            );

    return array(
      'id' => $item->id, 
      'url' => $item->httpUrl, 
      'title' => $item->title,
      'speaker' => $item->speaker->fullname,
      'authors' => json_decode($item->authors),
      'abstract' => $item->abstract,
      'iframe' => $item->iframe,
      'pdf' => ($item->pdf ? $item->pdf->httpUrl : ""),
      'pdftitle' => ($item->pdf ? $item->pdf->name : ""),
      'doi' => $item->doi,
      'twitter' => $item->twitter,
      'votes' => $item->number_of_votes,
      'tags' => $tags,
      'pronouns' => $item->speaker->pronouns,
      'license' => $item->license,
      'comments' =>  $item->comments->count(),
      'img' => ($item->img ? $item->img->httpUrl : ""),
    ); 
  });

  
  $fp = fopen(config()->paths->templates.'protected/posters.json', 'w');
  
  fwrite($fp, json_encode($data, true));

  fclose($fp);	
}

function tagsJSON(HookEvent $e) {
  $tagPageArr = pages()->find('parent=/tags/');
  // extract required fields into plain array

    $tags =  $tagPageArr->explode(function($t){
      return array(
        'id' => $t->id,
        'name'=> $t->title
      );
    }
  ); 
  
  $fp = fopen(config()->paths->templates.'protected/tags.json', 'w'); 
  fwrite($fp, json_encode($tags, true));
  fclose($fp);	
}