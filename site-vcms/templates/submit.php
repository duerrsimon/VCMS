<?php namespace ProcessWire;



// Get Page if saved, 
$p=$pages->get($sanitizer->int($input->urlSegment(1)));





?>





<pw-region pw-replace="headerscript">

<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
  
  

</pw-region>


<header class="bg-white" pw-replace="header">
        <div class="max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-6 lg:px-8 h-12">
        </div>
      </header>



<main pw-replace="main">
   <div class="bg-gray-200 mt-2 pb-8">
      <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8 flex flex-no-wrap">



        <div class="w-full">



          <div x-data="app()" x-cloak>
            <div class="max-w-3xl mx-auto px-4 py-10 bg-gray-100 border border-gray-200 rounded-lg"    >

              <div x-show.transition="step === 'submit'">
                <div class="bg-white rounded-lg p-10 flex items-center shadow justify-between">
                  <div>
                    <svg class="mb-4 h-20 w-20 text-green-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd"
                        d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                        clip-rule="evenodd" /></svg>

                    <h2 class="text-2xl mb-4 text-gray-800 text-center font-bold">Submission Success</h2>

                    <div class="text-gray-600 mb-8">
                      Thank you. We will verify your abstract and communicate to your email.
                    </div>

                    <a href="<?=$home->httpUrl?>"
                      class="w-40 block mx-auto focus:outline-none py-2 px-5 rounded-lg shadow-sm text-center text-gray-600 bg-white hover:bg-gray-100 font-medium border">Back
                      to home</a>
                  </div>
                </div>
              </div>

              <div x-show.transition="step === 'save'">
                <div class="bg-white rounded-lg p-10 flex items-center shadow justify-between">
                  <div>
                    <svg class="mb-4 h-20 w-20 text-green-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd"
                        d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                        clip-rule="evenodd" /></svg>

                    <h2 class="text-2xl mb-4 text-gray-800 text-center font-bold">Saved</h2>

                    <div class="text-gray-600 mb-8">
                   You can come back anytime before the <?= $settings->deadline->last()->date?> to edit your contribution. 
                    </div>

                    <button @click="step = 1"
                      class="w-40 block mx-auto focus:outline-none py-2 px-5 rounded-lg shadow-sm text-center text-gray-600 bg-white hover:bg-gray-100 font-medium border">Back
                      to your submissions</button>
                  </div>
                </div>
              </div>
             

              <div x-show.transition="step != 'save' && step != 'submit' ">
                <!-- Top Navigation -->
                <div class="border-b-2 py-4">
                  <div class="uppercase tracking-wide text-xs font-bold text-gray-500 mb-1 leading-tight"
                    x-text="`Step: ${step} of 3`"></div>
                  <div class="flex flex-col md:flex-row md:items-center md:justify-between">
                    <div class="flex-1">
                      <div x-show="step === 1">
                        <div class="text-lg font-bold text-gray-700 leading-tight">Accept Conditions</div>
                      </div>

                      <div x-show="step === 2">
                        <div class="text-lg font-bold text-gray-700 leading-tight">Type of contribution</div>
                      </div>

                      <div x-show="step === 3">
                        <div class="text-lg font-bold text-gray-700 leading-tight">Details</div>
                      </div>
                    </div>

                    <div class="flex items-center md:w-64">
                      <div class="w-full bg-white rounded-full mr-2">
                        <div class="rounded-full bg-green-500 text-xs leading-none h-2 text-center text-white"
                          :style="'width: '+ parseInt(step / 3 * 100) +'%'"></div>
                      </div>
                      <div class="text-xs w-10 text-gray-600" x-text="parseInt(step / 3 * 100) +'%'"></div>
                    </div>
                  </div>
                </div>
                <!-- /Top Navigation -->

                <!-- Step Content -->
                <div class="py-10">
                  <div x-show.transition.in="step === 1">



                    <div class="markdown">
                    <?=$settings->secondbody?>
                    </div>

                  </div>
                  <div x-show.transition.in="step === 2">

                    <h3 class="font-bold mb-1 text-gray-700 block">What do you want to submit?</h3>
                    <div class="flex">
                      <label
                        class="flex justify-start items-center text-truncate rounded-lg bg-white pl-4 pr-6 py-3 shadow-sm mr-4">
                        <div class="text-teal-600 mr-3">
                          <input type="radio" x-model="formContent.type" value="talk"
                            class="form-radio focus:outline-none focus:shadow-outline" />
                        </div>
                        <div class="select-none text-gray-700">Oral contribution</div>
                      </label>

                      <label
                        class="flex justify-start items-center text-truncate rounded-lg bg-white pl-4 pr-6 py-3 shadow-sm">
                        <div class="text-teal-600 mr-3">
                          <input type="radio" x-model="formContent.type" value="poster"
                            class="form-radio focus:outline-none focus:shadow-outline" selected />
                        </div>
                        <div class="select-none text-gray-700">Virtual Poster</div>
                      </label>

                    </div>

                    <div class="my-3 p-4 bg-cool-gray-200">
                      <h4 class="font-medium text-gray-600 mb-2 text-xl">Authors</h4>
                      <div class="flex flex-wrap">
                        
                          <button @click="editDialog(0)" class="focus:outline-none">
                            <svg
                              class="w-4 h-4 mr-2 text-gray-400 hover:text-blue-700 focus:text-blue-700 focus:outline-none stroke-current"
                              x-bind:class="{'text-blue-700' : positionToInsert==0}" viewBox="0 0 20 20">
                              <path fill="none" d="M13.68,9.448h-3.128V6.319c0-0.304-0.248-0.551-0.552-0.551S9.448,6.015,9.448,6.319v3.129H6.319
                c-0.304,0-0.551,0.247-0.551,0.551s0.247,0.551,0.551,0.551h3.129v3.129c0,0.305,0.248,0.551,0.552,0.551s0.552-0.246,0.552-0.551
                v-3.129h3.128c0.305,0,0.552-0.247,0.552-0.551S13.984,9.448,13.68,9.448z M10,0.968c-4.987,0-9.031,4.043-9.031,9.031
                c0,4.989,4.044,9.032,9.031,9.032c4.988,0,9.031-4.043,9.031-9.032C19.031,5.012,14.988,0.968,10,0.968z M10,17.902
                c-4.364,0-7.902-3.539-7.902-7.903c0-4.365,3.538-7.902,7.902-7.902S17.902,5.635,17.902,10C17.902,14.363,14.364,17.902,10,17.902
                z"></path>
                            </svg></button>
                        
                        <template x-for="(person, index) in formContent.persons" :key="index">
                          <div @click.away="person.open = false" class="mr-2 relative flex items-center">
                            

                            <div>
                              <div>
                                <button @click="person.open = !person.open"
                                  class="text-cool-gray-600 rounded-full hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700"
                                  x-bind:class="{'underline' : person.presenting}" aria-label="Details of person"
                                  aria-haspopup="true" x-bind:aria-expanded="person.open" x-text="person.fullname">
                                  
                                </button>

                              </div>
                              <div x-show="person.open" x-transition:enter="transition ease-out duration-100"
                                x-transition:enter-start="transform opacity-0 scale-95"
                                x-transition:enter-end="transform opacity-100 scale-100"
                                x-transition:leave="transition ease-in duration-75"
                                x-transition:leave-start="transform opacity-100 scale-100"
                                x-transition:leave-end="transform opacity-0 scale-95"
                                class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                <div class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                  <div class="flex content-center items-center" x-show="person.orcid!=''">
                                    <img src="<?=urls()->templates?>img/orcid.svg" class="h-4 w-4 mr-2" alt="ORCID icon">
                                    <a :href="'https://orcid.org/'+person.orcid" class="flex-1"
                                      x-text="person.orcid">0000-0001-1234-5678</a>
                                  </div>
                                  <div class="flex content-center items-center" x-show="person.twitter!=''">
                                    <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current"
                                      viewBox="0 0 20 20">

                                      <path fill="none"
                                        d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378">
                                      </path>
                                    </svg>
                                    <a :href="'https://github.com/'+person.hyperlink" class="flex-1"
                                      x-text="person.hyperlink"></a>
                                  </div>
                                  <div class="flex content-center items-center" x-show="person.hyperlink!=''">
                                    <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current"
                                      viewBox="0 0 20 20">
                                      <path 
                                        d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                      </path>
                                    </svg>
                                    <a x-bind:href="person.twitter" class="flex-1"
                                      x-text="person.twitter"></a><br>
                                  </div>
                                  <p class="mt-2" x-text="person.affiliation"> </p>
                                  <button class="text-blue-500 hover:text-blue-700 hover:underline focus:text-blue-700" @click="modifyDialog(index)">Edit</button>
                                </div>
                              </div>
                            </div>
                            <button @click="editDialog(index+1)" class="focus:outline-none">
                              <svg
                                class="w-4 h-4 ml-2 text-gray-400 hover:text-blue-700 focus:text-blue-700 focus:outline-none stroke-current"
                                x-bind:class="{'text-blue-700' : positionToInsert==index+1}" viewBox="0 0 20 20">
                                <path fill="none" d="M13.68,9.448h-3.128V6.319c0-0.304-0.248-0.551-0.552-0.551S9.448,6.015,9.448,6.319v3.129H6.319
                  c-0.304,0-0.551,0.247-0.551,0.551s0.247,0.551,0.551,0.551h3.129v3.129c0,0.305,0.248,0.551,0.552,0.551s0.552-0.246,0.552-0.551
                  v-3.129h3.128c0.305,0,0.552-0.247,0.552-0.551S13.984,9.448,13.68,9.448z M10,0.968c-4.987,0-9.031,4.043-9.031,9.031
                  c0,4.989,4.044,9.032,9.031,9.032c4.988,0,9.031-4.043,9.031-9.032C19.031,5.012,14.988,0.968,10,0.968z M10,17.902
                  c-4.364,0-7.902-3.539-7.902-7.903c0-4.365,3.538-7.902,7.902-7.902S17.902,5.635,17.902,10C17.902,14.363,14.364,17.902,10,17.902
                  z"></path>
                              </svg></button>
                          </div>
                        </template>
                      </div>
                    </div>


                    <div x-show="showAlertMessage" x-transition:enter="transition ease-out duration-300"
                      x-transition:enter-start="opacity-0 transform scale-90"
                      x-transition:enter-end="opacity-100 transform scale-100" x-transition:leave="transition ease-in"
                      x-transition:leave-start="opacity-100 transform scale-100"
                      x-transition:leave-end="opacity-0 transform scale-90">
                      <div class="bg-orange-100 border-l-4 border-orange-500 text-orange-700 p-4 my-4" role="alert">
                        <p>Please fix the error given below!</p>
                      </div>
                    </div>

                    <div class="mb-5" x-show="showEdit">

                      <h4  class="font-bold mb-1 text-gray-700 block">Add coauthor</h4>
                      <input type="text"
                        class="w-full px-4 py-3 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                        placeholder="Fullname" x-model="newPerson.fullname"
                        x-bind:class="{ 'border border-red-500 text-red-500': errors['fullname'] }">


                      <input type="text"
                        class="w-full px-4 py-3 mt-2 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                        x-bind:class="{ 'border border-red-500 text-red-500': errors['affiliation'] }"
                        placeholder="Affiliation" x-model="newPerson.affiliation">
                      <div class="flex mt-2"> <input type="text"
                          class="w-full px-4 py-3 mr-1 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                          placeholder="ORCID" x-model="newPerson.orcid">
                        <input type="text"
                          class="w-full px-4 py-3 mx-1  rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                          placeholder="Twitter" x-model="newPerson.twitter">
                        <input type="text"
                          class="w-full px-4 py-3 ml-1  rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                          placeholder="Github or Website" x-model="newPerson.hyperlink">
                      </div>
                      <div class="flex items-center mt-2">


                        <button x-show="modify==false" @click="addPerson"
                          class="focus:outline-none border border-transparent py-2 px-5  rounded-lg shadow-sm text-center text-white bg-indigo-500 hover:bg-indigo-600 font-medium">Add</button> <button @click="savePerson()" x-show="modify==true"
                          class="focus:outline-none border border-transparent py-2 px-5 mr-2 rounded-lg shadow-sm text-center text-white bg-green-500 hover:bg-green-600 font-medium">Save</button> <button @click="deletePerson()" x-show="modify==true"
                          class="focus:outline-none border border-transparent py-2 px-5 mr-2 rounded-lg shadow-sm text-center text-white bg-red-500 hover:bg-red-600 font-medium">Delete</button>
                          <button
                          @click="closeDialog()"
                          title="close"
                          class="px-2 mt-2 focus:outline-none border border-transparent  text-center "><svg
                            class="w-6 h-6 stroke-current text-gray-500 hover:text-gray-700 focus:text-gray-700 focus:outline-none"
                            viewBox="0 0 20 20">
                            <path fill="none" d="M13.864,6.136c-0.22-0.219-0.576-0.219-0.795,0L10,9.206l-3.07-3.07c-0.219-0.219-0.575-0.219-0.795,0
            c-0.219,0.22-0.219,0.576,0,0.795L9.205,10l-3.07,3.07c-0.219,0.219-0.219,0.574,0,0.794c0.22,0.22,0.576,0.22,0.795,0L10,10.795
            l3.069,3.069c0.219,0.22,0.575,0.22,0.795,0c0.219-0.22,0.219-0.575,0-0.794L10.794,10l3.07-3.07
            C14.083,6.711,14.083,6.355,13.864,6.136z M10,0.792c-5.086,0-9.208,4.123-9.208,9.208c0,5.085,4.123,9.208,9.208,9.208
            s9.208-4.122,9.208-9.208C19.208,4.915,15.086,0.792,10,0.792z M10,18.058c-4.451,0-8.057-3.607-8.057-8.057
            c0-4.451,3.606-8.057,8.057-8.057c4.449,0,8.058,3.606,8.058,8.057C18.058,14.45,14.449,18.058,10,18.058z">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="my-5">
                      <label for="title_of_talk" class="font-bold mb-1 text-gray-700 block">Title of your
                        contribution</label>
                      <input type="text" name="title_of_talk"
                        class="w-full px-4 py-3 rounded-lg shadow-sm focus:outline-none focus:shadow-outline text-gray-600 font-medium"
                        placeholder="Talk title" x-model="formContent.title" x-bind:class="{'border border-red-500': showWarning(formContent.title, showMissingError)}">
                    </div>

                    <h3 class="font-bold mb-1 mt-8 text-gray-700 block">Abstract & References</h3>
                    <label for="abstract" class="text-sm">This editor offers limited editing functionalites and formatting is done using Markdown. Abstracts cannot be more than 1000 words.
                    </label>
                    <div class="markdown " :class="{ 'border border-red-500': showWarning(simplemde.value(),showMissingError)}">
                      <textarea name="abstract" id="abstract" cols="30" rows="10"><?=$p->getUnformatted("abstract")?></textarea>
                       </div>


                       
                        

                       <div class="my-5">
                        <label class="block mt-4">
                        <h3 class="font-bold mb-1 mt-8 text-gray-700 block">License</h3>
                          <p>The content you upload will be visible on the net, we thus ask you to clarify under which license the material is available.</p>
                          <select class="form-select mt-1 block w-full" x-model="formContent.license">
                            <option value="by">Creative Commons Attribution (CC BY)</option>
                            <option value="by-sa">Creative Commons Attribution-ShareAlike (CC BY-SA)</option>
                            <option value="by-nd">Creative Commons Attribution-NoDerivs (CC BY-ND)</option>
                            <option value="by-nc">Creative Commons Attribution-NonCommercial (CC BY-NC)</option>
                            <option value="by-nc-sa">Creative Commons Attribution-NonCommercial-ShareAlike  (CC BY-NC-SA)</option>
                            <option value="by-nc-nd">Creative Commons Attribution-NonCommercial-NoDerivs
                              (CC BY-NC-ND)</option>
                              <option value="cc0">Public Domain (CC0)</option>
                              <option value="r">All rights reserved</option>
                               
                          </select>
                        </label>
                        
                        </div>
                  </div>
                  <div x-show.transition.in="step === 3">

                    <div class="mb-5 text-center" x-show="formContent.type==='talk'">
                      <div class="mb-5 markdown ">
                        <h3 class="text-left">Oral contribution</h3>
                        <div class="text-left">
                       <p> acceptance for an oral contribution you will be featured on our speaker wall with your affiliation. 
                       Please select a picture and if your presentation is already ready you can upload the PDF files immediately. 

                       <br> We ask that you make the slides available to the particpants the day of your talk for download. </p>
                        </div>
                      <h4 class="font-bold mb-1 mt-8 text-gray-700 block">Picture for speaker list</h4>
                      <div class="mx-auto w-36 h-32 mb-2 border rounded-full relative bg-gray-100 mb-4 shadow-inset">
                        <img id="image" class="object-cover w-full h-32 rounded-lg" :src="formContent.image" />
                      </div>
                      <label for="speaker_picture" type="button"
                        class="cursor-pointer inine-flex justify-between items-center focus:outline-none border py-2 px-4 rounded-lg shadow-sm text-center text-gray-600 bg-white hover:bg-gray-100 font-medium">
                        <svg xmlns="http://www.w3.org/2000/svg" class="inline-flex flex-shrink-0 w-6 h-6 -mt-1 mr-1"
                          viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                          stroke-linejoin="round">
                          <rect x="0" y="0" width="24" height="24" stroke="none"></rect>
                          <path
                            d="M5 7h1a2 2 0 0 0 2 -2a1 1 0 0 1 1 -1h6a1 1 0 0 1 1 1a2 2 0 0 0 2 2h1a2 2 0 0 1 2 2v9a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-9a2 2 0 0 1 2 -2" />
                          <circle cx="12" cy="13" r="3" />
                        </svg>
                        Browse Photo
                      </label>
                      <span class="text-xs block text-cool-gray-500">max 1.5 MB</span>

                      <div class="mx-auto text-gray-500 text-xs text-center mt-1">Click to add picture for speaker
                        view</div>

                      <input name="speaker_photo" id="speaker_picture" accept="image/*" class="hidden" type="file" @change="let file = document.getElementById('speaker_picture').files[0]; 
                              var reader = new FileReader();
                              reader.onload = (e) => formContent.image = e.target.result;
                              reader.readAsDataURL(file);">
                    </div>
                    
                  </div>

                    <div class="mb-5 text-center" x-show="formContent.type==='poster'">
                       <div class="mb-5 markdown text-left">
                        <?=$settings->thirdbody?>
                      </div>
                      
                      

                    </div>
                    
                                 





                  </div>
                </div>
                <!-- / Step Content -->
              </div>
            </div>

            <!-- Bottom Navigation -->
            <div class="py-5" x-show="step != 'complete'">
              <div class="max-w-3xl mx-auto px-4">
                <div class="flex justify-between">
                  <div class="w-1/2">
                    <button x-show="step > 1" @click="step--"
                      class="w-32 focus:outline-none py-2 px-5 rounded-lg shadow-sm text-center text-gray-600 bg-white hover:bg-gray-100 font-medium border">Previous</button>
                  </div>

                  <div class="w-1/2 text-right">
                    <button x-show="step < 3" @click="validate(step)"
                      class="w-32 focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-blue-500 hover:bg-blue-600 font-medium">Next</button>
                      <button  x-show="step === 3"
                      class="w-32 focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-cool-gray-500 hover:bg-cool-gray-600 font-medium" @click="sendFormToserver('save')">Save</button>
                    <button  x-show="step === 3"
                      class="w-32 focus:outline-none border border-transparent py-2 px-5 rounded-lg shadow-sm text-center text-white bg-blue-500 hover:bg-blue-600 font-medium" @click="sendFormToserver('submit')">Submit</button>
                  </div>
                </div>
              </div>
            </div>

          </div>
          <script type="text/javascript" src="<?=urls()->templates?>scripts/notify.min.js"></script>
          <script>
            var simplemde = new SimpleMDE({
              element: document.getElementById("abstract"),
              spellChecker: false,
              hideIcons: ["image"],
              autorefresh:true,
            });
          
            simplemde.codemirror.refresh();

          
           
          </script>
          <script>
            function app() {
              return {
                step: 1,
                passwordStrengthText: '',
                togglePassword: false,
                positionToInsert: null,
                modify:false,
                previewImage:'',
                showEdit: false,
                showAlertMessage: false,
                file:'',
                showMissingError:false,
                showIframe: false,
                errors: [{
                  affiliation: false,
                  fullname: false
                }],
                formContent: {
                  'type': '<?php  if ($input->urlSegment(1)){ echo $p->template->name;
                  }else{echo 'poster';}?>',
                  
                  'doi': '<?=$p->doi?>',
                  'twitter': '<?=$p->twitter?>',
                  'iframe': '<?=$p->iframe?>',
                  'abstract':'',
                  'image':<?php if ($input->urlSegment(1)==''): ?>'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAAAAAAAD/4QBCRXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAkAAAAMAAAABAAAAAEABAAEAAAABAAAAAAAAAAAAAP/bAEMACwkJBwkJBwkJCQkLCQkJCQkJCwkLCwwLCwsMDRAMEQ4NDgwSGRIlGh0lHRkfHCkpFiU3NTYaKjI+LSkwGTshE//bAEMBBwgICwkLFQsLFSwdGR0sLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLP/AABEIAdoB2gMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APTmZsnmk3N60N1NJTELub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lFAC7m9aNzetJRQAu5vWjc3rSUUALub1o3N60lJQA7c3rSbm9aSigBdzetG4+tJRQAZPrRuPrSUUALub1/lRub1pKSgBdzUbm9aSigBdzetG5vX+VJSUALub1/lUu5qhqXj1oAG6mkpW6mkoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooASiiigAooooAKSiigAooo+lACUZoooAKKKSgAo/rRSUALUlRVJz60AObqaSlbqaSgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACkoooAKKKKACiikoAKSlooASiiigA+lHpRQaACkoooATmilpPegBP/ANdS5HrUdSfL7UAObqaSlbqaSgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKSiigAooooAKKKKAEooooASij60UAFFFHpQAUmaKPxoAKSlpPWgA/wAmk/pS/Sk47dqADpUvPvUXrUn4H8qAHt1NJSt1NJQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFISFBJIAHUk4FAC0VTlv4EyEBc+3C/nVSS9uX6MEHonX8zQBrEqvLEAe5A/nUTXVqvWVfwyf5VjFmY5Ykn3JP86SmBrG/tB3c/RTTf7QtvST8hWXRQBqi/te+8f8AAc09by0b/loB/vAiseigDeV43+66t9CDTq5/p04+lTJdXMfSQkej/MP1oA2qKoR6gpwJUK/7Scj8utXEkjkG5GDD2P8AMUgH0UUUAFFFJQAUUUUAFFFJQAtJRRQAUlFFABR2oo+lAB1pKKP60AFFFFACUHjNH/66KAEpaSj/APVQAc0/I9KZUufpQA5uppKVuppKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACimsyopZiAo5JNZlxePLlI8rH0J/ib60AWp72KLKph3/wDHR9TWdLNNMcuxPoOij6Co6KYBRRRQAUUUUAFFFFABRRRQAUUUUAFKruhDIxUjuDikooA0IL/os4/4Gv8AUVfBVgCpBB6Ecg1gVLBcSwH5eUP3lPQ/SgDaoqOKaOZdyH/eB6qfepKQBRRRQAlFFFABSUUUAFFFFABRRSf5NABxR6e1FJQAcUUUnP6UALSf5/GjvRz+FAB06d6KT6UGgA96kyf8mo//ANdP59P1oAlbqaSlbqaSgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACmu6RqzucKvJNKSACScADJJ7Csi6uDO2BkRqflHr7mgBLi5edu4QH5V/qagoopgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFACUUUUAPjkkiYOhwR+RHoa14J0nTI4YffX0NYtPileJ1dDyOoPQj0NAG7SUyKVJkDr36juD6U+kAUhoooAKKKKACij/JpKACj/PNFFABScUelFACUdqP8mj+dABn9KMjij60d+tACf5FH5Uf59qOOlACfhUn40zmn4oAlbqaSlbqaSgAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKhuJhDEz/xfdQerGgCpfXGT5CHgf6w+/8AdqhQSSSScknJPqTRTAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACkoooAKKKKACiiigCe2nMEnP+rbhx6e9bHoQevT3zXP1p2M+9DE33k5X/AHf/AK1AF2koNFIAoopKAFpKKPSgApPX0pf8mkoAKKTPP1paAE+lFFIT/ntQAelHAoz0oz/hQAd6T155oooAKk2+wqLPt/8AWqTj1P5GgCZuppKVuppKACiiigAooooAKKKKACiiigAooooAKKKKACiiigArJvpd8uwH5Y+P+BHrWnK4jjkc/wAKkj69qwiSSSepJJ+ppgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABSUUUAFFFFABRRSUAFFFFABT4pDFIkg/hPPuO4plFAG8CGAYchgCD7HmlqpYy74dp6xnH4HkVapALSUUUAH+NFFJQAc0f5+tHFJQAUUUepoAP/r0nP/1sUH1ozQAUnOaPwo9OlAAcd6T60tJQAHn+lSZPotR/55qTJ/yKAJm6mkpW6mkoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAKWoPiNE/vtk/RazKt6g2Zgv9xB+Z5qpTAKKKKACiiigAooooAKKKKA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'
                    <?php endif;
                    if ($input->urlSegment(1)!='' and $p->img){
                      echo "'".$p->img->url."'";
                    }
                    if ($input->urlSegment(1)!='' and !$p->img){
                      echo "''";
                    }?>
                  ,
                  'title':'<?=$p->title?>',
                  'license':'<?=$p->license?>',
                  persons: <?php if ($input->urlSegment(1)==''): ?>[{
                    'fullname': '<?=$user->fullname?>',
                    'twitter': '<?=$user->twitter?>',
                    'affiliation': '<?=$user->affiliation?>',
                    'hyperlink': '<?=$user->hyperlink?>',
                    'orcid': '<?=$user->orcid?>',
                    'open': false,
                    'presenting': true
                  }],
                <?php endif;
                  
                  if ($input->urlSegment(1)!=''){

                    
                    echo $p->authors;
                  }
                  ?>
                },
                 newPerson: {
                    'fullname': '',
                    'twitter': '',
                    'affiliation': '',
                    'hyperlink': '',
                    'orcid': '',
                    'open': false,
                    'presenting': false
                },
                showWarning(name_of_field, warning){
                  if (name_of_field === '' && warning) {
                    return true;
                  }else{
                    return false;
                  }
                },
                validate(step){
                  if (step===1) {
                  
                    this.step++
                    
                  }
      
                  if (step===2) {
                  if (this.formContent.title!='' && simplemde.value()!='') {
                    this.step++
                    this.showMissingError==false
                  }else{

                    this.showMissingError=true;

                    ntfy.init()
                    ntfy.ntfy("error","bottom-right","Error","Please add a title and an abstract.");
                    
                  }
                  }
                  
                },
                sendFormToserver(goal){
                    this.formContent.abstract=simplemde.value();
                 
                    this.step=goal;
                    var formContent=JSON.stringify(this.formContent);
                    var formData = new FormData();
                    formData.append('goal', goal);
                    formData.append('data', formContent);
                    <?php if ($input->urlSegment(1)!=''){echo "formData.append('id', ".$p->id.")"; } ?>
                    
                    var xhr = new XMLHttpRequest();
                    xhr.addEventListener('readystatechange', this.onreadystatechangeHandler, false);
                    xhr.open('POST', '/VCMS/api/submission/', true);
                    xhr.send(formData);


               },
                onreadystatechangeHandler(evt) {
                    

                  if ( evt.target.status == '200') {
                    ntfy.ntfy("success","bottom-right","Success",evt.target.responseText);
                  }else{
                    ntfy.ntfy("error","bottom-right","Error",evt.target.responseText);
                  }
                  
                },
                addPerson() {
                  if (this.newPerson.fullname.length < 3) {
                    this.showAlertMessage = true;
                    this.errors['fullname'] = true;
                  } else {
                    this.errors['fullname'] = false;
                  }
                  if (this.newPerson.affiliation.length < 3) {
                    this.showAlertMessage = true;
                    this.errors['affiliation'] = true;
                  } else {
                    this.errors['affiliation'] = false;
                  }
                  if (this.newPerson.fullname != '' && this.newPerson.affiliation != '') {
                    this.formContent.persons.splice(this.positionToInsert, 0, this.newPerson);
                    this.newPerson = {
                      fullname: '',
                      twitter: '',
                      affiliation: '',
                      hyperlink: '',
                      orcid: '',
                      open: false,
                      presenting: false
                    };
                    this.showEdit = false;
                    this.showAlertMessage = false;
                  }

                },
                savePerson(){
                  this.formContent.persons[this.positionToInsert]=this.newPerson;

                  this.modify=false;
                  this.showEdit=false;
                  this.newPerson = {
                      fullname: '',
                      twitter: '',
                      affiliation: '',
                      hyperlink: '',
                      orcid: '',
                      open: false,
                      presenting: false
                    };
                },
                editDialog(index) {
                  this.positionToInsert = index;
                  this.showEdit = true;

                },
                deletePerson(){
                  var deleted = this.formContent.persons.splice(this.positionToInsert,1)
                  this.modify=false;
                  this.showEdit=false;
                  this.newPerson = {
                      fullname: '',
                      twitter: '',
                      affiliation: '',
                      hyperlink: '',
                      orcid: '',
                      open: false,
                      presenting: false
                    };
                },
                modifyDialog(index) {
                  this.positionToInsert = index;
                  this.showEdit = true;
                  this.modify=true;
                  this.formContent.persons[index].open=false;
                  this.newPerson=this.formContent.persons[index]

                },
                closeDialog() {
                  this.showAlertMessage = false;
                  this.showEdit = false;
                  this.errors['affiliation'] = false;
                  this.errors['fullname'] = false;
                  this.positionToInsert = null;
                }
              }
            }
          </script>


        </div>
      </div>
    </div>

</main>


<script type="text/javascript" pw-replace="script">

        
</script>
        