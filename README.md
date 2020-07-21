# Virtual Conference Managment System

To mitigate effects of the outbreak of COVID-19 worldwide many scientific conferences have been cancelled. A small number of those conferences has gone virtual and virtual conferences can have many [positive aspects](ProsOfAVirtualConference.md) contributing to the well-being of the scientific community.

The Virtual Conference Management System (VCMS) is here to help you organize a virtual conference with poster sessions across timezones. 





# Features of VCMS

- User Registration with online abstract submission and timezone managment
- Output of Schedule in user selected time zones and automatic conversion between timezones. Organizers can arrange schedule in the management interface.
- Access control for Webinar links, passwords to prevent e.g zoombombing, posters and schedule
- Commenting function for talks and posters that allows to browse posters and interact with the poster presenters at the same time as browsing
- Indexing of the talks with schema.org metadata for search engines
- Linking with open science repositories such as [zenodo](http://zenodo.org) or [osf.io](http://osf.io) 
- Easy install on almost any webhosting platform worldwide that provides an Apache or NGINX webserver and a MySQL Database
- Based on the very extensible Processwire CMF and the Tailwind CSS framework with alpine.js and vue.js for interactivity. 
- Voting system for poster presentation. Organizers can limit amount of votes per user. .
- Support for interactive poster presentations as embedded HTML presentations, prerecorded Youtube posters etc. via iframes.
- FrontEnd editing enabled for the conference mangers for convenient editing of content.
- Newsletter Sign Up with Mailchimp. Mailchimp handles GDPR compliance and Double Opt-in requirements for you (You need a mailchimp account for this and you need to retrieve your audience id. )
- Static caching of the resource heavy poster and schedule files

Note that for large conferences you need a strong server.


# Demonstration
The current Frontend User Interface can be viewed here: 

[Link to Demo page](https://vcms.simonduerr.eu)

The backend can be previewed here: 

- https://vcms.simonduerr.eu/processwire
- Name: editor
- Password vcmstest2020

The demonstration page is locked for saving, so you can view the backend but you cannot edit content. 

# Installation

1. Download the latest Processwire [here](https://processwire.com/download/core/) and copy to a compatible web server (see Requirements below). 
2. Download this repository and copy the site-vcms folder to the root directory where the processwire `ìndex.php` file resides. 
3. Load the location that you unzipped (or uploaded) the files to in your web browser. This will initiate the ProcessWire installer. The installer will guide you through the rest of the installation. 
4. Choose the VCMS profile when prompted. 

After the installation, navigate to the admin interface and populate the settings under VCMS-settings to make the installation suit to your needs. Here you enter things such as registration deadlines, default texts and here you can setup the newsletter.


### Setup of Newsletter
1. Log into your [Mailchimp](https://mailchimp.com) account and go to Profile > Extras > API Keys.
2. If you don't have an API Key, create a new one.
3. Copy your API Key and paste it in the module settings (Processwire > Modules > Site > SubscribeToMailchimp).
4. Back in Mailchimp, go to the Audience, where you want your new subscribers. If you have a free account you can use the default audience.
5. Go to Settings > `audience name and defaults`. Copy the Audience ID and paste it into the module settings (Processwire > Modules > Site > SubscribeToMailchimp).
6. Test your settings with the provided checkbox.


The default entries for posters and talks can be deleted in the page tree by selecting and then deleting them. 

![How to delete the prefilled content](https://i.imgur.com/LrBaK9R.png)

### How to edit pages and disable the (poster session/schedule/speaker) page
Any page in the page tree can be edited on its own. For this click on it and then select `Edit`. 
If you want to only use part of the functionality you can disable pages by editing them, navigating to the settings tab. Then select unpublished. 

![Unpublish a page](https://i.imgur.com/2AC3p84.png)

### How to schedule events? 

Ask particpants to submit their abstracts once they have registered. The text detailing the submission criteria can be edited in the settings. 

After the deadline is over (also a setting), abstracts can no longer be submitted. Users will be notified of the deadline when signing up. Then you can use the `Manage Submissions` Tab in the admin to view the submissions. You then have to go through all submissions and either accept or decline them. Message templates can be prefilled in the settings for quick and convenient processing of the abstracts. The particpants are sent an email upon acceptance/decline. 

![Manage Submissions](https://i.imgur.com/smo2WED.png)

All accepted abstracts that are talks then show up in the scheduler tab. Simply drag the abstract to the respective days and/or create new days if you need them. 
Breaks can be created directly in the scheduler and will show up in orange in the schedule. 

![Scheduling events](https://i.imgur.com/R3DwA2i.png)

If you need to create extra talks you can create them in the backend by clicking on Contributions > Accepted in the page tree, then selecting New and as the template of this page you use talk. These talks will then also show up in the scheduler tab. 

The Scheduler tab will help you batch edit the pages in order to make a schedule. Note, that all times are entered in the local timezone of your computer (displayed at the top of the scheduler), the scheduler will convert those times to UTC and save them as UTC to the database. You can preview the schedule in any other timezone with the button at the bottom. Users will see the schedule in their timezone as determined from their browser and can alternatively change timezone. 

The scheduler creates a static json file for optimal caching of the schedule. 

# Requirements

- A Unix or Windows-based web server running Apache or compatible
- PHP version 7+ 
- MySQL or MariaDB, 5.0.15 or greater (5.5+ preferable)
- Apache must have mod_rewrite enabled
- Apache must support .htaccess files
- PHP's bundled GD 2 library or ImageMagick library

# FAQ

Q: I am getting a 500 internal server error after installation, only the homepage is accesible. 

A: This is most likely due to your server config. Open the .htaccess file in the root directory and read the comments. Possible fixes could be to uncomment the line with `RewriteBase /`. Most likely you need to do this if you install VCMS in a sub directory.

Q: What about security?

A: Processwire is a very secure system by design. The VCMS site profile sanitizes all user input against malicous code, it does not perform content moderation. Users with malicous intent could still link to phishing sites, upload malicious pdfs or link to other harmful websites. As a site operator this is your responsibility, so carefully screen submissions. 

# Changelog

Release 0.1b

First release. 

 I am happy to provide support and check your installation and accompany your event in order to fix eventual bugs while the event is running. This service I will provide until the software has been battle tested in a few events. Just drop me an email at virtualconference@simonduerr.eu.

# License 

The code is available under Mozilla Public License 2.0. See `License.md` file. 

# Dependencies and code structure
For a list of dependencies check the package.json files. 
If you want to develop your own features it is recommended that you are familiar with PHP, Vue.js and the tailwind css framework. 
The content management system Processwire has excellent documentation and with basic PHP knowledge you can get pretty far in terms of customization. 
The code is structured in 4 directories, 3 of which contain raw HTML source files and one contains the Processwire Site Profile. 
