<?php

if ($input->urlSegment1=="comments") {
    //echo $page->comments->render(array('headline' => ''));
    $jsonComments=array();
foreach($page->comments as $comment) {
    if($comment->status < 1) continue; // skip unapproved or spam comments
    $cite = htmlentities($comment->cite); // make sure output is entity encoded
    $text = htmlentities($comment->text);
    $date = date($comment->created); // format the date
    if ($comment->parent!=""){
        $c=array('author' => $cite, 'date' => $date, 'id'=>$page->id, 'parent_id'=>$comment->parent->id, 'text'=>$text);
        $jsonComments[$comment->parent->id]["comments"][$comment->id]=$c;
    }else{
    $c= array($comment->id => array('author' => $cite, 'date' => $date, 'id'=>$page->id, 'parent_id'=>$comment->id, 'text'=>$text, 'comments'=>array()));
    $jsonComments+=$c;
    }
    //echo $comment->parent."<br>";
    //var_dump($c);
    //echo "<br>";
    
}
echo json_encode($jsonComments);

}else{
    echo $page->comments->renderForm(
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
}


?>