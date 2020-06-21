<?php namespace ProcessWire; 


// Voting



// prevent not logged in user to exploit site
// if ($user->isLoggedIn()) {
  


//Get user from input
$u=$users->get($sanitizer->int($input->post->userid));

// enter voting block and only let user vote if current user is the same as the one in the request.
//if ($input->urlSegment1=='vote' && $user==$u) {
    if ($input->urlSegment1=='vote') {
    // check if user has votes left
    if ($u->number_of_votes>0) {
        $p=$pages->get($sanitizer->int($input->post->entry));
        //check if user can still vote on this page
        if ($u->liked_posters->has($p)) {
            $success=0;
            $status="error";
            $msg="You have already voted on this poster.";
            $title="Could not save vote.";
        }else{
        // save votes to user page and increase vote count
        $u->of(false);
        
        $u->liked_posters->add($p);
        $u->number_of_votes=$u->number_of_votes-1;
        $u->save();
        // add votes to page
        $p->of(false);
        $p->number_of_votes=$p->number_of_votes+1;
        $p->save();

        $msg=$u->number_of_votes." vote(s) left.";
        $success=1;
        $status="success";
        $title="Vote saved";
    }
    }else{
        $success=0;
        $status="error";
        $msg="You have no votes left.";
        $title="Error";
    }
  echo json_encode(array('success' => $success,'status' => $status,'title' => $title, 'msg'=>$msg));
}


// }elseif ($input->urlSegment1=='vote' && $user!=$u) {
//     $success=0;
//     $msg="You need to be logged in to vote.";
//     echo json_encode(array('success' => $success, 'msg'=>$msg));
// }


// PosterJSON

function base64ToImage($path, $base64_string, $output_file) {
    $file = fopen($path.$output_file, "wb");

    $data = explode(',', $base64_string);

    fwrite($file, base64_decode($data[1]));
    fclose($file);

    return $path.$output_file;
}

if ($input->urlSegment1=='submission') {
    
    try {
    $data=json_decode($input->data, true);

    if ( $sanitizer->text($input->goal)=='save') {
      $parentname='/contributions/saved/';
    }elseif ($sanitizer->text($input->goal)=='submit') {
        $parentname='/contributions/submitted/';
    }
    if ($data['id']=="") {
        $k= new Page();
        $k->template = $sanitizer->text($data['type']);
    
      
    }else {
        $k=$pages->get($sanitizer->int($input->id));
    }
    $k->parent = wire('pages')->get($parentname);

    $k->setOutputFormatting(false);
    $k->name=$sanitizer->pageName($data['title']);
    $k->title=$sanitizer->text($data['title']);
    $k->abstract=$sanitizer->purify($data['abstract']);
    $k->license=$sanitizer->text($data['license']);
    $k->authors=json_encode($data['persons']);
    $k->speaker=$user;
    $k->number_of_votes=0;
    $k->save();

    if ($data['type']=="talk") {
        $td = $files->tempDir('uploadimage'); 
        $k->img->add(base64ToImage($td->get(), $data['image'], $k->name));
    }
    $k->save();
    echo 'Your submission was saved.';
    
    }catch (Exception $e) {
    echo "Error";
    }



    // try {

         
    // $k=$pages->get($sanitizer->int($input->post('pageid')));

    // // set template
    // $k->parent = wire('pages')->get('/http404/blog/'); // set the parent
    // $k->setOutputFormatting(false);
    // // Copy page fields from input to newly created one
    // $k->name=$sanitizer->name($input->post('grid-title'));
    //   $k->vorname=$sanitizer->text($input->post('grid-first-name')).' '.$sanitizer->text($input->post('grid-last-name'));

    // $k->date=$sanitizer->text($input->post('grid-date'));


    // $k->email=$sanitizer->email($input->post('email'));


    // $k->languageselect=$sanitizer->text($input->post('grid-lang'));
    // $k->region=$sanitizer->text($input->post('grid-region'));
    // $k->summary_nolang=$sanitizer->textarea($input->post('grid-description')); //markdown?
    // $k->body_markdown=$sanitizer->purify($input->post('grid-body')); //markdown?

    // $text='';


    // $k->save();
    // $success=1;

    // $mail = wireMail();
    // $mail->to('test@simonduerr.ue');
    // $mail->subject('New Blog post: please approve');
    // $mail->bodyHTML('<html>

    // <body>
    //     <h4>A new Blog Post was added, pleas verify and approve</h4>
    //     <h1>'.$sanitizer->text($input->post('grid-title')).'</h1>
    //     <ul>
    //         <li>'.$k->vorname.'</li>
    //         <li> </li>
    //         <li> '.$k->email.' </li>
    //     </ul> '.$k->summary_nolang);
    //     $mail->send();
    // } catch (Exception $e) {
    //        $success=2;
    // }
   
}

if ($input->urlSegment1=='edit') {
    
    try {
    $data=json_decode($input->data, true);
   
    $k=$pages->get($sanitizer->int($input->id));
    $k->setOutputFormatting(false);
    
    if ($k->template=="poster") {
        $tags=json_decode($input->tags);
        $k->tags=null;    
        foreach ($tags as $t){
            if ($sanitizer->int($t->id)==""){
                $tagPage= new Page();
                $tagPage->template = 'category';
                $tagPage->parent = wire('pages')->get(1087);
                $tagPage->setOutputFormatting(false);
                $tagPage->name=$sanitizer->pageName($t->text);
                $tagPage->title=$sanitizer->text($t->text);
                $tagPage->save();
                $t->id=$tagPage->id;
                }
            $k->tags->add($sanitizer->int(intval($t->id)));
            }
    }
    $k->twitter=$sanitizer->url($data['twitter']);
    $k->doi=$sanitizer->url($data['doi']);
    
    $k->iframe=$sanitizer->purify($data['iframe'], $options = ["HTML.SafeIframe" =>true, "URI.SafeIframeRegexp" =>'%^https://%'] );

    if ($data['iframe']=="" or $k->iframe!="") {
       
        $k->save();
        $success=1;
        $msg="Modifications were saved";
        echo json_encode(array('success' => $success, 'msg'=>$msg));
    }else{
        $success=0;
        $msg="Sorry. The iframe contains unsupported Markup or is not https://";
        echo json_encode(array('success' => $success, 'msg'=>$msg));
    }
    //$k->tags=0;
    


    
    
    }catch (Exception $e) {
    echo "Error";
    }
   
}

if ($input->urlSegment1=='upload') {
    try {
        $tempDir = wire()->files->tempDir('userUploads')->get();
    $p = $pages->get($sanitizer->int(intval($input->id)));
    $p->of(false);
   
 
        $uploaded = (new WireUpload('pdfFile')) 
        ->setValidExtensions(['png', 'jpg', 'pdf'])
        ->setMaxFiles(1) // remove this to allow multiple files
        ->setMaxFileSize(10 * pow(2, 20))// 10MB
        ->setDestinationPath($tempDir)
        ->execute();
        
        $p->pdf->deleteAll();
        foreach ($uploaded as $file) {
            $filePath = $tempDir.$file;
            $p->pdf->add($filePath);
    
        }
   
    $p->save('pdf');
    $success=1;
    $msg=$file." uploaded.";
    header('Content-type: application/json');
    echo json_encode(array('success' => $success, 'msg'=>$msg, 'path'=>$p->pdf->url, 'title'=>$file));
    } catch (Exception $e) {
        $success=0;
        $msg="Error";
        echo json_encode(array('success' => $success, 'msg'=>$msg));
    }
    
}
if ($input->urlSegment1=='uploadpreview') {
    try {
        $tempDir = wire()->files->tempDir('userUploads')->get();
    $p = $pages->get($sanitizer->int(intval($input->id)));
    $p->of(false);
   


    $uploaded = (new WireUpload('img')) 
    ->setValidExtensions(['png', 'jpg', 'webp', 'bmp', 'svg', 'jfif'])
    ->setMaxFiles(1) // remove this to allow multiple files
    ->setMaxFileSize(1.5 * pow(2, 20))// 10MB
    ->setDestinationPath($tempDir)
    ->execute();
    
    $p->img->deleteAll();
    foreach ($uploaded as $file) {
        $filePath = $tempDir.$file;
        $p->img->add($filePath);
    
    }
   
    $p->save('img');
    $success=1;
    $msg=$file." uploaded.";
    header('Content-type: application/json');
    echo json_encode(array('success' => $success, 'msg'=>$msg, 'path'=>$p->pdf->url, 'title'=>$file));
    } catch (Exception $e) {
        $success=0;
        $msg="Error";
        echo json_encode(array('success' => $success, 'msg'=>$msg));
    }
    
}




?>