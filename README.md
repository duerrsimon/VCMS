# Virtual Conference Managment System

To mitigate effects of the outbreak of COVID-19 worldwide many scientific conferences have been cancelled. A small number of those conferences has gone virtual. 

In light of the climate crisis virtual conferences should take a bigger foothold in the academic world. In order to help researchers set up virtual conferences I developed a  software solution named Virtual Conference Management System which allows you to host a virtual conference on almost any webserver. See benefits for virtual conferences in [this document](ProsOfAVirtualConference.md)

Note that for large conferences you need a strong server.

# Features of the proposed solution: VCMS

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



# Demonstration
The current Frontend User Interface can be viewed here: 

[Link to Demo page](https://vcms.simonduerr.eu)

The backend can be previewed here: 

- https://vcms.simonduerr.eu/processwire
- Name: editor
- Password vcmstest2020

# Installation

Download the latest Processwire [here](https://processwire.com/download/core/) and copy to a compatible web server (see Requirements below). 
Download this repository and copy the site-vcms folder to the root directory where the processwire `ìndex.php` file resides. 
Load the location that you unzipped (or uploaded) the files to in your web browser. This will initiate the ProcessWire installer. The installer will guide you through the rest of the installation. 
Choose the VCMS profile when prompted. 

After the installation, navigate to the admin interface and populate the settings under VCMS-settings to customize the page. 
The default entries for posters and talks can be deleted in the page tree by selecting and then deleting them. 
Any page in the page tree can be edited on its own. The Scheduler tab will help you batch edit the pages in order to make a schedule. As the scheduler creates a static json file you need to create the schedule via this tool. 

# Requirements

- A Unix or Windows-based web server running Apache or compatible
- PHP version 7+ 
- MySQL or MariaDB, 5.0.15 or greater (5.5+ preferable)
- Apache must have mod_rewrite enabled
- Apache must support .htaccess files
- PHP's bundled GD 2 library or ImageMagick library

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
