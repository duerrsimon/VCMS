# Virtual Conference Managment System

To mitigate effects of the outbreak of COVID-19 worldwide many scientific conferences have been cancelled. A small number of those conferences has gone virtual. 

In light of the climate crisis virtual conferences should take a bigger foothold in the academic world. In order to help researchers set up virtual conferences a software solution named Virtual Conference Management System is proposed.

## Strategies for going virtual

Conferences that have gone virtual have mainly used a dedicated conference website and twitter to communicate information to particpants about how and when presentations are scheduled. Some Poster sessions have been held virtually and conference organizers have resorted to twitter poster conferences or poster conferences where the posters are available on a dedicated website for download and a messaging app like Slack is used to link poster presenter and audience for specific questions. 

## Major challenges in comparison to a non-virtual event
- Setting up a good conference website takes time especially when interactive elements such as virtual poster sessions are involved. Wordpress or University provided content management systems do not provide the required plugins to e.g host a virtual poster session. No commercial solutions exist.
- Coordination across time zones is not easy. Maintaining Text documents of the schedule in different timezones is cumbersome and presenters are most likely located on at least two different continents
- Poster sessions on Twitter are not well indexed and the twitter algorithm favors those that already have high follower counts. Due to governmental restrictions Twitter is not available everywhere in the world. 
- Should the material presented at the conference be available in the long term? How is it preserved? 

## Possible advantages
- Less carbon used because no travel required
- Potentially bigger audience because people that can't travel or that are only interested in part of the event attend
- Global equity as anybody with computer and decent internet can participate regardless of connections and funds
- Researchers with caring responsibilites can participate easily in the conference
- Technology opens new possibilites for interactive poster presentation with live code, interactive molecular visualization or other elements such as gifs, videos, maps etc. 
- Presented posters could directly be archived on [zenodo](http://zenodo.org) or [osf.io](http://osf.io) and linked with one's [ORCID](https://orcid.org) thus strengthening open sharing and long term preservation of knowledge. 


# Are there software solutions?
Based on my survey there is only a limited a amount of virtual conferences that have used a tailored system to manage the conference. None of those systems is open source. 

Examples are e.g the cold spring harbor laboratory virtual events ([Example CSHL Meeting](https://meetings.cshl.edu/meetings.aspx?meet=NUCLEUS&year=20)) or the NanoGE conferences ( [NanoGE](https://www.nanoge.org/MABP/instructions-for-authors)). NanoGE makes it possible to use their system for conferences but within the NanoGE domain. 
These platforms use a combination of their website, video conferencing software and chat apps for the poster sessions (Slack, RocketChat). 
For virtual poster sessions there is a basic online hosting of posters available here: [Virtualpostersession.org](http://virtualpostersession.org/) but there is no commenting function and interactivity is done using a link to video chat with the poster presenter during the poster session. 

The Photonics Online Meetup which is a big online meetup with over 1100 attendants has relied on Twitter and a simple Wordpress site for the meetup. [POM Website](https://sites.usc.edu/pom/)

There is no one-stop shop for hosting and facitliating virtual conferences and poster sessions on a single platform without manual labor to create e.g poster rooms in a message board and that does not rely on external closed platforms for all functions. 

Such software will be necessary to increase the amount of virtual conferences being held in the scientifc community as it will massively lower the barrier for organizing such an event.  

# Features of the proposed solution: VCMS

- User Registration with automatic abstract submission and timezone managment
- Output of Schedule in user selected time zones and automatic conversion between timezones
- Access control for video chat links to prevent e.g zoombombing
- Commenting function for talks and posters that allows to browse posters and interact with the poster presenters at the same time as browsing
- Indexing of the talks with schema.org metadata for search engines
- Linking with open science repositories such as [zenodo](http://zenodo.org) or [osf.io](http://osf.io) 
- Signup with ORCID (and possibly addition of presented talks and entries to ORCID profile upon click)
- Easy install on almost any webhosting platform worldwide that provides an Apache or NGINX webserver and a MySQL Database
- Based on the very extensible Processwire CMF and the tailwind CSS framework with alpine.js and vue.js for interactivity. 
- Voting system for poster presentation. Organizers can limit amount of votes per user.
- Support for interactive poster presentations as embedded HTML presentations 
# Demonstration
The current Frontend User Interface can be viewed here: 

- [Homepage]()
- [Schedule page]()
- [Speaker page]()
- [Poster sverview page]()
- [Poster singular view with embedded PDF]()
- [Poster singular view with interactive HTML content]()
- [Poster singular view with embedded Slides]()
- [Presentation singular view]()
- [FAQ Page]()
- [About page with Twitter feed and sponsors]()
- [Signup page]()


# Development timeline

- finish HTML templates based on Tailwind CSS with JS logic
- implement backend with Proceswire CMF
- implement custom interface to manage talks and posters in a tailored interface and not in the processwire backend. 

# License 

The code will be made available under Mozilla Public License 2.0. See `License.md` file. 