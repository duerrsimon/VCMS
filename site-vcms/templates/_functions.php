<?php namespace ProcessWire;
$home = pages()->get('/'); // homepage
function getIcon($input)
{
  $icon='general.svg';
  if (strpos($input, 'zoom.us')>0){
    $icon='zoom.svg';
  };
  return $icon;
}


$wire->addHookBefore('Inputfield::render', function($event) {
  $inputfield = $event->object;
  
  if($inputfield instanceof InputfieldTextarea) {
    // textarea input
    $inputfield->addClass('w-full px-4 py-3 border border-gray-200 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium'); 
    
  } else if($inputfield instanceof InputfieldText) {
    // includes most single-line text types 
    $inputfield->addClass('w-full px-4 py-3 border border-gray-200 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium');
    
  } else if($inputfield instanceof InputfieldSubmit) {
    // submit button
    $inputfield->addClass('w-full focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-blue-500 hover:bg-blue-600 font-medium');
  }
}); 
