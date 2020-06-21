<?php 

// prevent not logged in user to exploit site
if (pages()->get('/settings/')->access_control->id<3 or $user->isLoggedIn()) {

    if ($input->urlSegment1=='tags') {
      echo file_get_contents("protected/tags.json");
    }

    
     if ($input->urlSegment1=='poster') {
      echo file_get_contents("protected/posters.json");
      }
      
    }
       
  

    if ($input->urlSegment1=='talk') {
      date_default_timezone_set('UTC');
      $myPages = $pages->find('template=talk, scheduled=0,  parent=/contributions/accepted/');
      // extract required fields into plain array
      $data = $myPages->explode(function($item) {
        return array(
          'id' => $item->id, 
          'url' => $item->url, 
          'scheduled' => $item->scheduled, 
          'title' => $item->title,
          'speaker' => $item->speaker->fullname,
          'link' => "",
          'affiliation' => $item->speaker->affiliation,
          'category' =>"Webinar",
          'clockstart' => date('c', intval($item->clockstart)),
          'clockend' => date('c', intval($item->clockend))
        ); 
      });
      echo json_encode($data);      
  }

  if ($input->urlSegment1=='talk_scheduled') {
    date_default_timezone_set('UTC');
    $myPages = $pages->find('template=talk, scheduled=1,  parent=/contributions/accepted/');
    // extract required fields into plain array
    $data = $myPages->explode(function($item) {
      return array(
        'id' => $item->id, 
        'url' => $item->url, 
        'scheduled' => $item->scheduled, 
        'title' => $item->title,
        'speaker' => $item->speaker->fullname,
        'affiliation' => $item->speaker->affiliation,
        'link' => $item->videoconferenceurl,
        'category' => $item->category,
        'clockstart' => date('c', intval($item->clockstart)),
        'clockend' => date('c', intval($item->clockend))
      ); 
    });
    echo json_encode($data);      
}


       
    ?>