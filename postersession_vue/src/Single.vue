<!--
Template for Single pages, the poster is loaded based on id stored in vuex store. 
-->

<template>
<div>
    <main pw-replace="main">

        <div class="bg-gray-200 pb-8">
            <div class="mx-auto sm:px-6 lg:px-8 flex items-center justify-center flex-no-wrap align-top">
                <div class="flex-initial">
                    <div class="w-8 h-8">

                        <button @click="prevPage()" aria-label="Previous Poster" title="Previous Poster"
                            v-show="length">
                            <svg class="w-8 h-8 inline-block stroke-current text-gray-700 hover:text-cool-gray-400"
                                viewBox="0 0 20 20">
                                <path d="M18.271,9.212H3.615l4.184-4.184c0.306-0.306,0.306-0.801,0-1.107c-0.306-0.306-0.801-0.306-1.107,0
                    L1.21,9.403C1.194,9.417,1.174,9.421,1.158,9.437c-0.181,0.181-0.242,0.425-0.209,0.66c0.005,0.038,0.012,0.071,0.022,0.109
                    c0.028,0.098,0.075,0.188,0.142,0.271c0.021,0.026,0.021,0.061,0.045,0.085c0.015,0.016,0.034,0.02,0.05,0.033l5.484,5.483
                    c0.306,0.307,0.801,0.307,1.107,0c0.306-0.305,0.306-0.801,0-1.105l-4.184-4.185h14.656c0.436,0,0.788-0.353,0.788-0.788
                    S18.707,9.212,18.271,9.212z"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="px-4 flex-initial">
                    <button aria-label="Link back to Poster overview" title="Back to Poster overview"
                        @click="backToOverView()">
                        <svg class="w-8 h-8 text-gray-700 hover:text-cool-gray-400 fill-current" version="1.1"
                            viewBox="0 0 19.003 17.309">
                            <g transform="translate(-28.15 -124.87)">
                                <g transform="matrix(1.8245 0 0 1.8245 -130.71 -633.37)" aria-label="V">
                                    <circle cx="96.228" cy="416.85" r="1.2573" stroke-width="0" />
                                    <circle cx="96.228" cy="423.82" r="1.2573" />
                                    <circle cx="96.228" cy="420.34" r="1.2573" />
                                    <circle transform="translate(-6.1662e-7 3.0831e-6)" cx="88.327" cy="423.82"
                                        r="1.2573" />
                                    <circle cx="88.327" cy="416.85" r="1.2573" stroke-width="0" />
                                    <circle cx="88.327" cy="420.34" r="1.2573" stroke-width="0" />
                                    <g transform="translate(.055047)">
                                        <circle transform="translate(-6.1662e-7 3.0831e-6)" cx="92.223" cy="416.85"
                                            r="1.2573" stroke-width="0" />
                                        <circle cx="92.223" cy="423.82" r="1.2573" />
                                        <circle cx="92.223" cy="420.34" r="1.2573" />
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </button>
                </div>
                <div class="">
                    <div class="w-8 h-8">

                        <button @click="nextPage()" aria-label="Next Poster" title="Next Poster" v-show="length">
                            <svg class="w-8 h-8 inline-block fill-current stroke-current text-gray-700 hover:text-cool-gray-400"
                                viewBox="0 0 20 20">
                                <path d="M1.729,9.212h14.656l-4.184-4.184c-0.307-0.306-0.307-0.801,0-1.107c0.305-0.306,0.801-0.306,1.106,0
                    l5.481,5.482c0.018,0.014,0.037,0.019,0.053,0.034c0.181,0.181,0.242,0.425,0.209,0.66c-0.004,0.038-0.012,0.071-0.021,0.109
                    c-0.028,0.098-0.075,0.188-0.143,0.271c-0.021,0.026-0.021,0.061-0.045,0.085c-0.015,0.016-0.034,0.02-0.051,0.033l-5.483,5.483
                    c-0.306,0.307-0.802,0.307-1.106,0c-0.307-0.305-0.307-0.801,0-1.105l4.184-4.185H1.729c-0.436,0-0.788-0.353-0.788-0.788
                    S1.293,9.212,1.729,9.212z"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="mx-auto pb-6 sm:px-6 lg:px-8 flex flex-grow-0 flex-no-wrap align-top" v-if="item" key="item.id">
                <div class="w-full mx-auto  sm:px-8 flex-grow-0">
                    <div class="px-1 sm:px-4 py-4">

                        <div class=" sm:-mx-8 px-4 sm:px-8 py-4 ">
                            <div class=" shadow rounded-lg relative">
                                <span class="text-base text-gray-600 absolute top-2 right-2 font-bold">
                                    #{{item.id}}</span>
                                <div class="bg-white border flex  flex-wrap xl:flex-no-wrap align-top flex-grow-0">
                                    <div class="w-full xl:w-2/3 relative h-auto ">
                                        <div class="sticky top-2">
                                            <div class="video-responsive mb-4 sm:rounded-lg bg-loading mt-8 sm:mt-0"
                                                v-if="item.iframe!=''" v-html="item.iframe"
                                                v-bind:style="{background: 'url('+this.httpUrl+'site/templates/img/loading.svg) center center no-repeat'}">
                                            </div>
                                            <embed :src="item.pdf" type="application/pdf"
                                                class="sticky top-0 w-full px-5 py-5 h-screen" v-if="item.pdf!=''">
                                        </div>
                                    </div>
                                    <div class="w-full xl:w-1/3  py-5 border-gray-300 border-l">
                                        <h2 class="font-bold text-cool-gray-700 text-xl px-5">
                                            {{item.title}}
                                        </h2>
                                        <div class="text-base mt-2 flex flex-wrap flex-grow-0 px-5">
                                            <div v-for="(author,index) in item.authors" class="relative " ref="item">
                                                <div>
                                                    <div>
                                                        <button @click="author.open = !author.open"
                                                            class="text-cool-gray-600 rounded-full hover:text-cool-gray-700 focus:outline-none focus:text-cool-gray-700"
                                                            aria-label="Notifications" aria-haspopup="true"
                                                            v-bind:class="{'underline' : author.presenting}"
                                                            v-bind:aria-expanded="author.open">{{author.fullname}}</button>
                                                        <span class="-ml-1"
                                                            v-show="index+1!=item.authors.length">,</span>&nbsp;
                                                    </div>
                                                    <div v-show="author.open"
                                                        class="origin-top-left absolute left-0 mt-2 w-64 rounded-md shadow-xl">
                                                        <div
                                                            class="p-4 rounded-md bg-cool-gray-50 border border-cool-gray-200 shadow-xs">
                                                            <div class="flex content-center items-center"
                                                                v-show="author.orcid!=''">
                                                                <img :src="httpUrl+'site/templates/img/orcid.svg'"
                                                                    class="h-4 w-4 mr-2" alt="ORCID icon">
                                                                <a :href="'https://orcid.org/'+author.orcid"
                                                                    target="_blank" class="flex-1">{{author.orcid}}</a>
                                                            </div>
                                                            <div class="flex content-center items-center"
                                                                v-show="author.hyperlink!=''">
                                                                <svg class="w-4 h-4 mr-2 stroke-current text-cool-gray-500 fill-current"
                                                                    viewBox="0 0 20 20">
                                                                    <path fill="none"
                                                                        d="M10,2.531c-4.125,0-7.469,3.344-7.469,7.469c0,4.125,3.344,7.469,7.469,7.469c4.125,0,7.469-3.344,7.469-7.469C17.469,5.875,14.125,2.531,10,2.531 M10,3.776c1.48,0,2.84,0.519,3.908,1.384c-1.009,0.811-2.111,1.512-3.298,2.066C9.914,6.072,9.077,5.017,8.14,4.059C8.728,3.876,9.352,3.776,10,3.776 M6.903,4.606c0.962,0.93,1.82,1.969,2.53,3.112C7.707,8.364,5.849,8.734,3.902,8.75C4.264,6.976,5.382,5.481,6.903,4.606 M3.776,10c2.219,0,4.338-0.418,6.29-1.175c0.209,0.404,0.405,0.813,0.579,1.236c-2.147,0.805-3.953,2.294-5.177,4.195C4.421,13.143,3.776,11.648,3.776,10 M10,16.224c-1.337,0-2.572-0.426-3.586-1.143c1.079-1.748,2.709-3.119,4.659-3.853c0.483,1.488,0.755,3.071,0.784,4.714C11.271,16.125,10.646,16.224,10,16.224 M13.075,15.407c-0.072-1.577-0.342-3.103-0.806-4.542c0.673-0.154,1.369-0.243,2.087-0.243c0.621,0,1.22,0.085,1.807,0.203C15.902,12.791,14.728,14.465,13.075,15.407 M14.356,9.378c-0.868,0-1.708,0.116-2.515,0.313c-0.188-0.464-0.396-0.917-0.621-1.359c1.294-0.612,2.492-1.387,3.587-2.284c0.798,0.97,1.302,2.187,1.395,3.517C15.602,9.455,14.99,9.378,14.356,9.378">
                                                                    </path>
                                                                </svg>
                                                                <a :href="author.hyperlink" target="_blank"
                                                                    class="flex-1">Website</a>
                                                            </div>
                                                            <div class="flex content-center items-center"
                                                                v-show="author.twitter!=''">
                                                                <svg class="w-4 h-4 mr-2 stroke-current text-blue-500 fill-current"
                                                                    viewBox="0 0 20 20">
                                                                    <path
                                                                        d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                                                    </path>
                                                                </svg>
                                                                <a :href="'https://twitter.com/'+author.twitter"
                                                                    class="flex-1">{{author.twitter}}</a><br>
                                                            </div>
                                                            <p class="mt-2"> {{author.affiliation}} </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h5 class="font-bold text-cool-gray-500 text-sm mt-4 px-5"> Abstract</h5>
                                        <div class="text-sm px-5 abstract" v-html="item.abstract"></div>
                                        <div class="flex px-5">
                                            <div class="full lg:w-1/2">
                                                <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Metadata</h5>
                                                <div class="flex flex-wrap items-center text-sm">
                                                    <div class="w-full" v-show="item.doi!=''">
                                                        <span class="pr-1 font-medium text-xs">DOI</span>
                                                        <a class=" text-red-800 hover:text-gray-500" :href="item.doi">
                                                            {{item.doi}}
                                                        </a>
                                                    </div>
                                                    <div class="w-full flex items-center" v-show="item.twitter!=''">

                                                        <svg class="w-4 h-4 inline-block mr-2 stroke-current text-blue-500 fill-current"
                                                            viewBox="0 0 20 20">
                                                            <path
                                                                d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266">
                                                            </path>
                                                        </svg>
                                                        <a class=" text-red-800 hover:text-gray-500" :href="item.twitter">
                                                            View on Twitter
                                                        </a>
                                                    </div>
                                                    <div class="w-full flex items-center" v-show="item.license!=''">
                                                        <span class="w-4 mr-2">&copy;</span>
                                                        <img class="h-6 w-auto block"
                                                            :src="httpUrl+'site/templates/img/'+item.license+'.svg'"
                                                            :alt="item.license">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="full lg:w-1/2">
                                                <h5 class="font-bold text-cool-gray-500 text-sm mt-4"> Tags</h5>
                                                <div class="flex flex-wrap items-center text-sm">
                                                    <span  class="text-xs inline-flex items-center font-medium leading-sm mb-1 px-3 py-1 rounded-full bg-white text-gray-700 border"
                                                        v-for="tag in item.tags"
                                                        v-bind:class="{'bg-cool-gray-300' : tagChecked(tag)}">
                                                        {{tag.name}}
                                                    </span>
                                                    <span v-show="item.tags.length==0">No tags</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="py-2 px-5" v-show="item.pronouns!=''">
                                            <p class="text-xs text-gray-600">Pronouns of presenter: {{item.pronouns}}
                                            </p>
                                        </div>
                                        <div class="px-4 py-5 border-b border-gray-200 sm:px-6 flex items-center">
                                            <h3 class="flex-1 text-lg leading-6 font-medium text-gray-900">
                                                Comments
                                            </h3>
                                            <div class="block flex-1 w-full mx-auto flex items-center" v-if="voting">
                                                <button @click="vote(item.id)"
                                                    class="text-cool-gray-600 hover:text-red-600 focus:text-red-600"
                                                    v-bind:class="{'text-red-600' : alreadyVoted}"><svg
                                                        class="w-8 h-8 mx-6 stroke-current" viewBox="0 0 20 20">
                                                        <path
                                                            d="M9.719,17.073l-6.562-6.51c-0.27-0.268-0.504-0.567-0.696-0.888C1.385,7.89,1.67,5.613,3.155,4.14c0.864-0.856,2.012-1.329,3.233-1.329c1.924,0,3.115,1.12,3.612,1.752c0.499-0.634,1.689-1.752,3.612-1.752c1.221,0,2.369,0.472,3.233,1.329c1.484,1.473,1.771,3.75,0.693,5.537c-0.19,0.32-0.425,0.618-0.695,0.887l-6.562,6.51C10.125,17.229,9.875,17.229,9.719,17.073 M6.388,3.61C5.379,3.61,4.431,4,3.717,4.707C2.495,5.92,2.259,7.794,3.145,9.265c0.158,0.265,0.351,0.51,0.574,0.731L10,16.228l6.281-6.232c0.224-0.221,0.416-0.466,0.573-0.729c0.887-1.472,0.651-3.346-0.571-4.56C15.57,4,14.621,3.61,13.612,3.61c-1.43,0-2.639,0.786-3.268,1.863c-0.154,0.264-0.536,0.264-0.69,0C9.029,4.397,7.82,3.61,6.388,3.61">
                                                        </path>
                                                    </svg></button><span id="no_votes">{{item.votes}}</span>&nbsp;Votes
                                            </div>
                                        </div>
                                        <div class="mt-4 bg-red-100 border-l-2 border-r-2 border-red-500 text-xs mb-2 text-red-800 p-4"
                                            role="alert" v-show="commentsError">
                                            <p>Comments could not be loaded.</p>
                                        </div>
                                        <div class="mt-4 bg-blue-100 border-l-2 border-r-2 border-blue-500 text-xs mb-2 text-blue-800 p-4"
                                            role="alert" v-show="comments.length==0 && loading!=true">
                                            <p>No Comments yet. Be the first to comment.</p>
                                        </div>

                                        <div class="text-center block" v-show="loading">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                                class="w-12 h-12 mt-10 inline-block" viewBox="0 0 100 100"
                                                preserveAspectRatio="xMidYMid">
                                                <circle cx="50" cy="50" r="32" stroke-width="5" stroke="#32495c"
                                                    stroke-dasharray="50.26548245743669 50.26548245743669" fill="none"
                                                    stroke-linecap="round" transform="rotate(43.1996 50 50)">
                                                    <animateTransform attributeName="transform" type="rotate"
                                                        repeatCount="indefinite" dur="1s" keyTimes="0;1"
                                                        values="0 50 50;360 50 50"></animateTransform>
                                                </circle>
                                                </svg>
                                            </div>
                                        <div class="p-4">
                                            <!-- Comments -->
                                            <ul class='CommentList CommentListThread'>
                                                <li id='Comment6' class='CommentListItem CommentHasReplies'
                                                    data-comment='6' v-for="c in comments">
                                                    <p class='CommentHeader'><span
                                                            class='CommentCite'>{{c.author}}</span> <small
                                                            class='CommentCreated'>{{relativeTime(c.date)}}</small> </p>
                                                    <div class='CommentText'>
                                                        <p>{{c.text}}</p>
                                                    </div>
                                                    <ul class='CommentList CommentListThread CommentListReplies'
                                                        v-for="subcomment in c.comments">
                                                        <li id='Comment7' class='CommentListItem CommentHasReplies'>
                                                            <p class='CommentHeader'>
                                                                <span class='CommentCite'>{{subcomment.author}}</span>
                                                                <small class='CommentCreated'>{{relativeTime(subcomment.date)}}</small>
                                                            </p>
                                                            <div class='CommentText'>
                                                                <p>{{subcomment.text}}</p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <div class='CommentFooter'>
                                                        <p class='CommentAction'>
                                                            <a class='CommentActionReply cursor-pointer'
                                                                @click="toggleComment(c)">
                                                                <svg class="svg-icon w-4 h-4 inline"
                                                                    viewBox="0 0 20 20">
                                                                    <path
                                                                        d="M3.24,7.51c-0.146,0.142-0.146,0.381,0,0.523l5.199,5.193c0.234,0.238,0.633,0.064,0.633-0.262v-2.634c0.105-0.007,0.212-0.011,0.321-0.011c2.373,0,4.302,1.91,4.302,4.258c0,0.957-0.33,1.809-1.008,2.602c-0.259,0.307,0.084,0.762,0.451,0.572c2.336-1.195,3.73-3.408,3.73-5.924c0-3.741-3.103-6.783-6.916-6.783c-0.307,0-0.615,0.028-0.881,0.063V2.575c0-0.327-0.398-0.5-0.633-0.261L3.24,7.51 M4.027,7.771l4.301-4.3v2.073c0,0.232,0.21,0.409,0.441,0.366c0.298-0.056,0.746-0.123,1.184-0.123c3.402,0,6.172,2.709,6.172,6.041c0,1.695-0.718,3.24-1.979,4.352c0.193-0.51,0.293-1.045,0.293-1.602c0-2.76-2.266-5-5.046-5c-0.256,0-0.528,0.018-0.747,0.05C8.465,9.653,8.328,9.81,8.328,9.995v2.074L4.027,7.771z">
                                                                    </path>
                                                                </svg>
                                                                Reply</a>
                                                        </p>
                                                        <transition name="fade">
                                                            <comment-form v-bind:comment="comment"
                                                                @processForm="processForm" v-if="commentForm===c">
                                                            </comment-form>
                                                        </transition>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div id='CommentForm' class='CommentForm_new'>
                                            <div class="py-4">
                                                <div id='CommentForm' class='CommentForm_new'>
                                                    <div class="px-4 py-5 border-b border-gray-200 sm:px-6">
                                                        <h3 class="text-lg leading-6 font-medium text-gray-900">Post
                                                            Comment</h3>
                                                    </div>
                                                    <comment-form v-bind:comment="comment" @processForm="processForm">
                                                    </comment-form>
                                                </div>
                                                <!--/CommentForm-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
            </div>
        </div>
    </main>
</div>
</template>

<script>

import axios from 'axios';
import CommentForm from './CommentForm.vue';
import moment from 'moment/moment';

export default {
    name: 'single',
    components: {
        CommentForm
    },
    props: ['id', 'uid', 'checkedTags', 'httpUrl', 'votedPosters', 'voting'],
    data() {
        return {
            loading: true,
            comments: [],
            commentForm: null,
            commentsError: false,
            comment: {
                cite: '',
                email: '',
                text: '',
                CommentForm_submit: "1",
                notify: "0",
                page_id: this.id,
                parent_id: "0",


            },
        }
    },
    methods: {
        toggleComment(c) {
            if (this.commentForm === c) {
                this.commentForm = null;
            } else {
                this.commentForm = c;
            }
            this.comment.parent_id = c.parent_id;

        },

        relativeTime(timestamp) {
            return moment.unix(timestamp).startOf("minute").fromNow()

        },
        vote: function (id) {
            var VoteData = new FormData();
            VoteData.set('userid', this.uid);

            VoteData.set('entry', id);
            VoteData.set('purpose', "vote");
            var that = this;
            axios.post(that.httpUrl + "api/vote", VoteData)
                .then(function (response) {
                    that.$notify({
                        group: 'foo',
                        title: response.data.title,
                        text: response.data.msg,
                        type: response.data.status

                    });
                    if (response.data.success) {
                        let currentIndex = that.$store.state.displayedPosters.findIndex(element => element.id == that.id);
                        that.$store.state.displayedPosters[currentIndex].votes++;
                        that.votedPosters.push(that.id.toString())
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        },
        loadComments: function () {
            var that = this;
           that.comments=[];
            that.loading = true;
            if (this.item) {
                console.log(this.item.url)
                axios.get(this.item.url + "comments")
                    .then(function (response) {
                        that.comments = response.data;
                        that.loading = false;
                        that.commentsError = false;
                    })
                    .catch(function (error) {
                        that.commentsError = true;
                        that.loading = false;
                    })
            }
        },
        processForm: function () {
            var CommentData = new FormData();
            CommentData.set('cite', this.comment.cite);
            CommentData.set('email', this.comment.email);
            CommentData.set('text', this.comment.text);
            CommentData.set('CommentForm_submit', this.comment.CommentForm_submit);
            CommentData.set('notify', this.comment.notify);
            CommentData.set('page_id', this.id);
            CommentData.set('parent_id', this.comment.parent_id);
            var that = this;
            console.log(this.comment);
            axios.post(that.item.url, CommentData)
                .then(function (response) {
                    console.log(response);
                    that.loadComments();
                })
                .catch(function (error) {
                    console.log(error);
                });

        },
        tagChecked: function (currentTag) {
            for (var i = 0; i < this.item.tags.length; i++) {
                if (this.item.tags[i] == currentTag.id) {

                    return true
                }
            }
            return false
        },
        backToOverView() {
            this.$router.push({
                name: 'list',
                query: {
                    q: this.$route.query.q,
                    tags: this.$route.query.tags,
                    limit: parseInt(this.$route.query.limit)
                }
            });
        },
        nextPage() {
            this.comments = [];
            let currentIndex = this.$store.state.displayedPosters.findIndex(element => element.id == this.id);
            let elementId = "";
            this.commentsError = false;
            if (currentIndex == this.$store.state.displayedPosters.length - 1) {
                elementId = this.$store.state.displayedPosters[0].id;
            } else {
                elementId = this.$store.state.displayedPosters[currentIndex + 1].id;
            }
            
            this.$router.push({
                name: 'single',
                params: {
                    "id": elementId
                },
                query: {
                    q: this.$route.query.q,
                    tags: this.$route.query.tags,
                    limit: parseInt(this.$route.query.limit)
                }
            });
            

        },
        prevPage() {
            this.comments = [];
            let currentIndex = this.$store.state.displayedPosters.findIndex(element => element.id == this.id);
            let elementId = "";
            this.commentsError = false;
            if (currentIndex == 0) {
                elementId = this.$store.state.displayedPosters[this.$store.state.displayedPosters.length - 1].id;
            } else {
                elementId = this.$store.state.displayedPosters[currentIndex - 1].id;
            }
            this.$router.push({
                name: 'single',
                params: {
                    "id": elementId
                },
                query: {
                    q: this.$route.query.q,
                    tags: this.$route.query.tags,
                    limit: parseInt(this.$route.query.limit)
                }
            });
            
            
        },
        moment
    },
    watch: {
        item() {
         this.loadComments();
        },
    },
    computed: {
        alreadyVoted() {
            return this.votedPosters.includes(this.id.toString())
        },
        item() {
            this.$store.state.currentPoster = this.$store.state.displayedPosters.find(element => element.id == this.id);
            return this.$store.state.currentPoster
        },
        length() {
            return this.$store.state.displayedPosters.length != 1
        },
        loadingUrl() {
            return "url(" + this.httpUrl + 'site/templates/img/loading.svg)'
        }
    },
    created() {
        this.loadComments();
        var that = this;
        window.addEventListener('keydown', function (event) {

            if (event.target.tagName == 'BODY') {
                switch (event.key) {
                    case "ArrowLeft":
                        that.prevPage()
                        break;
                    case "ArrowRight":
                        that.nextPage()
                        break;
                }
            }



        });
    }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.fade-enter-active, .fade-leave-active {
  transition: opacity .2s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  opacity: 0;
}

</style>