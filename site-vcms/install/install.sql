# --- WireDatabaseBackup {"time":"2020-06-21 13:06:26","user":"","dbName":"vcms","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_abstract`;
CREATE TABLE `field_abstract` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1076', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt arcu non sodales neque sodales ut. Amet porttitor eget dolor morbi non arcu risus quis varius. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Adipiscing enim eu turpis egestas pretium aenean. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. A cras semper auctor neque vitae. Auctor urna nunc id cursus metus aliquam eleifend. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Tincidunt ornare massa eget egestas. Etiam erat velit scelerisque in dictum non consectetur a. Nisl nunc mi ipsum faucibus vitae. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Feugiat in ante metus dictum at tempor commodo.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1078', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt arcu non sodales neque sodales ut. Amet porttitor eget dolor morbi non arcu risus quis varius. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Adipiscing enim eu turpis egestas pretium aenean. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. A cras semper auctor neque vitae. Auctor urna nunc id cursus metus aliquam eleifend. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Tincidunt ornare massa eget egestas. Etiam erat velit scelerisque in dictum non consectetur a. Nisl nunc mi ipsum faucibus vitae. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Feugiat in ante metus dictum at tempor commodo.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1079', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt arcu non sodales neque sodales ut. Amet porttitor eget dolor morbi non arcu risus quis varius. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Adipiscing enim eu turpis egestas pretium aenean. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. A cras semper auctor neque vitae. Auctor urna nunc id cursus metus aliquam eleifend. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Tincidunt ornare massa eget egestas. Etiam erat velit scelerisque in dictum non consectetur a. Nisl nunc mi ipsum faucibus vitae. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Feugiat in ante metus dictum at tempor commodo.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1080', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt arcu non sodales neque sodales ut. Amet porttitor eget dolor morbi non arcu risus quis varius. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Adipiscing enim eu turpis egestas pretium aenean. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. A cras semper auctor neque vitae. Auctor urna nunc id cursus metus aliquam eleifend. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Tincidunt ornare massa eget egestas. Etiam erat velit scelerisque in dictum non consectetur a. Nisl nunc mi ipsum faucibus vitae. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Feugiat in ante metus dictum at tempor commodo.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1082', '### 	This a title\n	\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aenean euismod elementum nisi quis eleifend. Sit amet aliquam id diam maecenas ultricies. Mus mauris vitae ultricies leo integer malesuada nunc. Quam nulla porttitor massa id neque. **Tempus iaculis** urna id volutpat lacus laoreet. Nisl purus in mollis nunc sed id semper. Lacus vel facilisis volutpat est. Iaculis eu non diam phasellus vestibulum lorem sed. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.\n\nSed arcu non odio euismod lacinia at quis. Consequat nisl vel pretium lectus quam id leo in. Sit amet est placerat in egestas erat imperdiet sed euismod. Dui id ornare arcu odio ut sem. Justo donec enim diam vulputate ut pharetra sit amet. Viverra orci sagittis eu volutpat odio facilisis. Elementum nibh tellus molestie nunc non. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Ut venenatis tellus in metus vulputate eu. Lectus mauris ultrices eros in cursus turpis massa tincidunt. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Vulputate mi sit amet mauris commodo quis. Nunc scelerisque viverra mauris in aliquam sem fringilla. Neque sodales ut etiam sit amet nisl purus in. Scelerisque varius morbi enim nunc. Iaculis urna id volutpat lacus laoreet. Facilisis sed odio morbi quis commodo.\n\n##### Test\n\nVel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. At consectetur lorem donec massa. Eu scelerisque felis imperdiet proin fermentum leo vel orci. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Tempor commodo ullamcorper a lacus vestibulum. Auctor eu augue ut lectus. Hac habitasse platea dictumst quisque sagittis purus. Urna cursus eget nunc scelerisque viverra mauris in aliquam. Amet mauris commodo quis imperdiet. Nisi lacus sed viverra tellus in hac habitasse platea. Nulla malesuada pellentesque elit eget gravida cum.\n\nSed libero enim sed faucibus. Amet tellus cras adipiscing enim eu turpis egestas pretium. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Suspendisse ultrices gravida dictum fusce ut. Vulputate dignissim suspendisse in est ante in nibh mauris. Sed nisi lacus sed viverra tellus in hac habitasse. Diam sit amet nisl suscipit adipiscing bibendum est. Feugiat nisl pretium fusce id. Enim ut tellus elementum sagittis vitae et leo duis ut. Sapien eget mi proin sed libero enim sed faucibus. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Ultrices eros in cursus turpis massa tincidunt dui ut. Amet consectetur adipiscing elit duis. Consequat id porta nibh venenatis cras sed.\n\nVolutpat est velit egestas dui. Mauris pharetra et ultrices neque ornare. At tempor commodo ullamcorper a lacus vestibulum. Sit amet est placerat in. Nunc mattis enim ut tellus elementum. Mi tempus imperdiet nulla malesuada pellentesque elit. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Mauris in aliquam sem fringilla. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Amet justo donec enim diam vulputate ut. Ullamcorper morbi tincidunt ornare massa. Nullam eget felis eget nunc lobortis mattis. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. Aliquet nibh praesent tristique magna. Nisl tincidunt eget nullam non nisi est sit. Tincidunt praesent semper feugiat nibh sed. Nibh cras pulvinar mattis nunc sed blandit. Lectus nulla at volutpat diam ut.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1083', '### A short title\n	\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. *Sed turpis tincidunt id aliquet risus.* Sed libero enim sed faucibus turpis in eu. Tortor at auctor urna nunc id. Facilisis sed odio morbi quis commodo. Enim diam vulputate ut pharetra sit. Et pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Diam sollicitudin tempor id eu. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Nulla aliquet enim tortor at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Ut enim blandit volutpat maecenas volutpat.\n\n### References \n\n* Author, A. A., Author, B. B., & Author, C. C. (year). Title of article. Title of Periodical, Volume number, pages. https://doi.org/xx.xxxxxxxx\n* Author, A. A., Author, B. B., & Author, C. C. (year). Title of article. Title of Periodical, Volume number, pages. https://doi.org/xx.xxxxxxxx\n* Author, A. A., Author, B. B., & Author, C. C. (year). Title of article. Title of Periodical, Volume number, pages. https://doi.org/xx.xxxxxxxx');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1116', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt arcu non sodales neque sodales ut. Amet porttitor eget dolor morbi non arcu risus quis varius. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Adipiscing enim eu turpis egestas pretium aenean. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer. A cras semper auctor neque vitae. Auctor urna nunc id cursus metus aliquam eleifend. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Tincidunt ornare massa eget egestas. Etiam erat velit scelerisque in dictum non consectetur a. Nisl nunc mi ipsum faucibus vitae. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Feugiat in ante metus dictum at tempor commodo.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1117', 'Test Poster');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1124', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. Sed turpis tincidunt id aliquet risus. Sed libero enim sed faucibus turpis in eu. Tortor at auctor urna nunc id. Facilisis sed odio morbi quis commodo. Enim diam vulputate ut pharetra sit. Et pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Diam sollicitudin tempor id eu. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Nulla aliquet enim tortor at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Ut enim blandit volutpat maecenas volutpat.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1125', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. Sed turpis tincidunt id aliquet risus. Sed libero enim sed faucibus turpis in eu. Tortor at auctor urna nunc id. Facilisis sed odio morbi quis commodo. Enim diam vulputate ut pharetra sit. Et pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Diam sollicitudin tempor id eu. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Nulla aliquet enim tortor at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Ut enim blandit volutpat maecenas volutpat.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1129', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');
INSERT INTO `field_abstract` (`pages_id`, `data`) VALUES('1130', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

DROP TABLE IF EXISTS `field_acceptance`;
CREATE TABLE `field_acceptance` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_acceptance` (`pages_id`, `data`) VALUES('1020', 'We are happy to notify you of acceptance of the submitted work');

DROP TABLE IF EXISTS `field_access_control`;
CREATE TABLE `field_access_control` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_access_control` (`pages_id`, `data`, `sort`) VALUES('1020', '2', '0');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_affiliation`;
CREATE TABLE `field_affiliation` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_affiliation` (`pages_id`, `data`) VALUES('41', 'Open University Copenhagen');

DROP TABLE IF EXISTS `field_authors`;
CREATE TABLE `field_authors` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1076', '[{\"fullname\":\"Jane Doi\",\"twitter\":\"simonduerr\",\"affiliation\":\"EPFL\",\"hyperlink\":\"github.com\",\"orcid\":\"0000-1234-4034-2342\",\"open\":false,\"presenting\":true}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1078', '[{\"fullname\":\"Jane Doe\",\"twitter\":\"simonduerr\",\"affiliation\":\"EPFL\",\"hyperlink\":\"github.com\",\"orcid\":\"0000-1234-4034-2342\",\"open\":false,\"presenting\":true}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1079', '[{\"fullname\":\"Max Mustermann\",\"twitter\":\"maxim\",\"affiliation\":\"Open University\",\"hyperlink\":\"https://github.com/okasod\",\"orcid\":\"0000-1234-4034-2342\",\"open\":false,\"presenting\":true},{\"fullname\":\"Angie Merkel\",\"twitter\":\"simonduerr\",\"affiliation\":\"Deutscher Bundestag\",\"hyperlink\":\"https://github.com/angie\",\"orcid\":\"0000-1234-4034-2342\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1080', '[{\"fullname\":\"John Doe\",\"twitter\":\"simonduerr\",\"affiliation\":\"Open University\",\"hyperlink\":\"github.com\",\"orcid\":\"0000-1234-4034-2342\",\"open\":false,\"presenting\":true},{\"fullname\":\"Jane Doe\",\"twitter\":\"\",\"affiliation\":\"Open University\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1082', '[{\"fullname\":\"Franz Ferdinand\",\"twitter\":\"fferdi\",\"affiliation\":\"Open University\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true},{\"fullname\":\"Ringo Starr\",\"twitter\":\"\",\"affiliation\":\"The Beatles Trust\",\"hyperlink\":\"\",\"orcid\":\"12312411232\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1083', '[{\"fullname\":\"Harriet Tubman\",\"twitter\":\"htubman\",\"affiliation\":\"Open University\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true},{\"fullname\":\"Erna Musterfrau\",\"twitter\":\"\",\"affiliation\":\"Universität Bielefield\",\"hyperlink\":\"\",\"orcid\":\"12312411232\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1116', '[{\"fullname\":\"Yasmina Burgogne\",\"twitter\":\"yb\",\"affiliation\":\"Open University\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1117', '[{\"fullname\":\"Simon D\\u00fcrr\",\"twitter\":\"simonduerr\",\"affiliation\":\"Ecole Polytechnique Federale de Lausanne\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1124', '[{\"fullname\":\"Rudolf Reindeer\",\"twitter\":\"\",\"affiliation\":\"Lapland University\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":true},{\"fullname\":\"Ruprecht Schwarz\",\"twitter\":\"\",\"affiliation\":\"Lapland University\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1125', '[{\"fullname\":\"Meghan Markle\",\"twitter\":\"\",\"affiliation\":\"Buckingham Palace\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":false},{\"fullname\":\"Phoebe Buffet\",\"twitter\":\"simonduerr\",\"affiliation\":\"Central Perk\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true},{\"fullname\":\"Queen Elisabeth\",\"twitter\":\"\",\"affiliation\":\"Buckingham Palace\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":false}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1129', '[{\"fullname\":\"Max Bernasconi\",\"twitter\":\"yb\",\"affiliation\":\"Open University\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true}]');
INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1130', '[{\"fullname\":\"Max Bernasconi\",\"twitter\":\"\",\"affiliation\":\"ETH Zurich\",\"hyperlink\":\"\",\"orcid\":\"\",\"open\":false,\"presenting\":false},{\"fullname\":\"Erna Musterfrau\",\"twitter\":\"simonduerr\",\"affiliation\":\"Ecole Polytechnique Federale de Lausanne\",\"hyperlink\":\"\",\"orcid\":\"0000-0000-1234-5675\",\"open\":false,\"presenting\":true}]');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1038', '<p>A content managment system to easily set up an online conference! Simply install on a webhost and enter information and you have a completly free conference system.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1039', '<p>Currently there is not. But it should be easy to use stripe or paypal to add payment.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1042', '<p>Each user gets a certain number of votes (configurable in the VCMS-settings).</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1043', '<p>Refer to the instructions on Github.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1044', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1111', '<h3>Purpose</h3>\n\n<p>A primary goal of all the conferences and user groups that refer to this Code of Conduct is to be inclusive to the largest number of contributors, with the most varied and diverse backgrounds possible. As such, we are committed to providing a friendly, safe and welcoming environment for all, regardless of gender, sexual orientation, ability, ethnicity, socioeconomic status and religion (or lack thereof).</p>\n\n<p>This Code of Conduct outlines our expectations for all those who participate in our community, as well as the consequences for unacceptable behavior.</p>\n\n<p>We invite all those who participate in our events to help us create safe and positive experiences for everyone.</p>\n\n<h3>Expected Behavior</h3>\n\n<ul><li>Participate in an authentic and active way. In doing so, you contribute to the health and longevity of this community.</li>\n	<li>Exercise consideration and respect in your speech and actions.</li>\n	<li>Attempt collaboration before conflict.</li>\n	<li>Refrain from demeaning, discriminatory, or harassing behavior and speech.</li>\n	<li>Be mindful of your surroundings and of your fellow participants. Alert community leaders if you notice a dangerous situation, someone in distress, or violations of this Code of Conduct, even if they seem inconsequential.</li>\n</ul><h3>Unacceptable Behavior</h3>\n\n<p>Unacceptable behaviors include: intimidating, harassing, abusive, discriminatory, derogatory or demeaning speech or actions by any participant in our community online, at all related events and in one-on-one communications carried out in the context of community business. Community event venues may be shared with members of the public; please be respectful to all patrons of these locations.</p>\n\n<p>Harassment includes: harmful or prejudicial verbal or written comments related to gender, sexual orientation, race, religion, disability; inappropriate use of nudity and/or sexual images (including presentation slides); inappropriate depictions of violence (including presentation slides); deliberate intimidation, stalking or following; harassing photography or recording; sustained disruption of talks or other events; and unwelcome sexual attention.</p>\n\n<h3>Consequences of Unacceptable Behavior</h3>\n\n<p>Unacceptable behavior from any community member, including sponsors and those with decision-making authority, will not be tolerated. Anyone asked to stop unacceptable behavior is expected to comply immediately.</p>\n\n<p>If a community member engages in unacceptable behavior, the community organizers may take any action they deem appropriate, up to and including a temporary ban or permanent expulsion from the community without warning (and without refund in the case of a paid event).</p>\n\n<h3>If You Witness or Are Subject to Unacceptable Behavior</h3>\n\n<p>If you are subject to or witness unacceptable behavior, or have any other concerns, please notify a community organizer as soon as possible. Use the contact form on the <a	data-pwid=1044	href=\"/about/\">About</a> page to contact the organziers.. Additionally, community organizers are available to help community members engage with local law enforcement or to otherwise help those experiencing unacceptable behavior feel safe. </p>\n\n<h3>Addressing Grievances</h3>\n\n<p>If you feel you have been falsely or unfairly accused of violating this Code of Conduct, you should notify one of the event organizers with a concise description of your grievance. Your grievance will be handled in accordance with our existing governing policies.</p>\n\n<h3>Scope</h3>\n\n<p>We expect all community participants (contributors, paid or otherwise; sponsors; and other guests) to abide by this Code of Conduct in all community venues—online and in-person—as well as in all one-on-one communications pertaining to community business.</p>\n\n<h3>License and attribution</h3>\n\n<p>The VCMS  Code of Conduct is distributed under a <a href=\"https://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)</a> license. It is based on the <a href=\"https://berlincodeofconduct.org/\">Berlin Code of Conduct </a>and the <a href=\"https://pdxruby.org/CONDUCT\">pdx.rb Code of Conduct</a>.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1112', '<p>This privacy policy will explain how this website processes the personal data we collect from you when you use our website.</p>\n\n<p>Topics:</p>\n\n<ul><li>What data do we collect?</li>\n	<li>How do we collect your data?</li>\n	<li>How will we use your data?</li>\n	<li>How do we store your data?</li>\n	<li>Marketing</li>\n	<li>What are your data protection rights?</li>\n	<li>What are cookies?</li>\n	<li>How do we use cookies?</li>\n	<li>What types of cookies do we use?</li>\n	<li>How to manage your cookies</li>\n	<li>Privacy policies of other websites</li>\n	<li>Changes to our privacy policy</li>\n	<li>How to contact us</li>\n	<li>How to contact the appropriate authorities</li>\n</ul><h3>What data do we collect?</h3>\n\n<p>This website collects the following data upon signup:</p>\n\n<ul><li>Personal identification information (Name, email address, Affiliation, Twitter account, ORCID, Website)</li>\n	<li>The material you upload to this site like posters, PDFs of presentations etc.</li>\n</ul><h3>How do we collect your data?</h3>\n\n<p>You directly provide this website with most of the data we collect. We collect data and process data when you:</p>\n\n<ul><li>Register online for the site</li>\n	<li>Signup to our Newsletter that is delivered by Mailchimp Services</li>\n	<li>Voluntarily complete an evaluation survey or provide feedback on any of our message boards or via email.</li>\n	<li>Use or view our website via your browser’s cookies.</li>\n	<li> </li>\n</ul><p>Our Company may also receive your data indirectly from the following sources:</p>\n\n<ul><li>If you opted in to the Newsletter Mailchimp collects some information, whether you opened our Emails (anonymously) </li>\n</ul><h3>How will we use your data?</h3>\n\n<p>Our Company collects your data so that we can:</p>\n\n<ul><li>Process your submission and manage your account.</li>\n	<li>Email you with up to date information about the event.</li>\n	<li>Email you follow up information after the event about new successions</li>\n</ul><p>If you sign up to the Newsletter, Our Company will share your data with our partner companies so that they may offer you their products and services.</p>\n\n<ul><li>Mailchimp</li>\n</ul><p> </p>\n\n<h3>How do we store your data?</h3>\n\n<p>Our website securely stores your data in a mysql database. All passwords are hashed and salted. </p>\n\n<p>Our Company will keep your login data until the conference website is deleted.  </p>\n\n<h3>Marketing</h3>\n\n<p>We would like to send you information about upcoming events of the same type. You can opt out of our Mailchimp Newsletter at any time.</p>\n\n<p>You have the right at any time to stop this website from contacting you for marketing purposes.</p>\n\n<p>If you no longer wish to be contacted for marketing purposes, please find one of our emails and click the unsubscribe button.</p>\n\n<h3>What are your data protection rights?</h3>\n\n<p>Our website would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\n\n<p><strong>The right to access</strong> – You have the right to request the website for copies of your personal data. </p>\n\n<p><strong>The right to rectification</strong> – You have the right to request that this websites correct any information you believe is inaccurate. You also have the right to request this website to complete the information you believe is incomplete.</p>\n\n<p><strong>The right to erasure</strong> – You have the right to request that this website erase your personal data, under certain conditions.</p>\n\n<p><strong>The right to restrict processing</strong> – You have the right to request that this website restrict the processing of your personal data, under certain conditions.</p>\n\n<p><strong>The right to object to processing</strong> – You have the right to object to this websites processing of your personal data, under certain conditions.</p>\n\n<p><strong>The right to data portability</strong> – You have the right to request that this website transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\n\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us via the <a	data-pwid=1044	href=\"/about/\">contact form</a> or via one of the organizers listed below. </p>\n\n<h3>Cookies</h3>\n\n<p>Cookies are text files placed on your computer to collect standard Internet log information and visitor behavior information. When you visit our websites, we may collect information from you automatically through cookies or similar technology</p>\n\n<p>For further information, visit allaboutcookies.org.</p>\n\n<h3>How do we use cookies?</h3>\n\n<p>Our Company uses cookies in a range of ways to improve your experience on our website, including:</p>\n\n<ul><li>Keeping you signed in</li>\n</ul><h3>What types of cookies do we use?</h3>\n\n<p>There are a number of different types of cookies, however, our website uses:</p>\n\n<ul><li>Functionality – Our Company uses these cookies so that we recognize you on our website and remember your previously selected preferences. These could include what language you prefer and location you are in. Only first-party cookies are used.</li>\n</ul><h3>How to manage cookies</h3>\n\n<p>You can set your browser not to accept cookies, and the above website tells you how to remove cookies from your browser. However, in a few cases, some of our website features may not function as a result.</p>\n\n<h3>Privacy policies of other websites</h3>\n\n<p>This website contains links to other websites. Our privacy policy applies only to our website, so if you click on a link to another website, you should read their privacy policy.</p>\n\n<h3>Changes to our privacy policy</h3>\n\n<p>Our Company keeps its privacy policy under regular review and places any updates on this web page. </p>\n\n<h3>How to contact us</h3>\n\n<p>If you have any questions about this websites privacy policy, the data we hold on you, or you would like to exercise one of your data protection rights, please do not hesitate to contact us.</p>');

DROP TABLE IF EXISTS `field_category`;
CREATE TABLE `field_category` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_category` (`pages_id`, `data`) VALUES('1082', 'Invited Talk');
INSERT INTO `field_category` (`pages_id`, `data`) VALUES('1083', 'Webinar');
INSERT INTO `field_category` (`pages_id`, `data`) VALUES('1117', 'Webinar');
INSERT INTO `field_category` (`pages_id`, `data`) VALUES('1129', 'Plenary');
INSERT INTO `field_category` (`pages_id`, `data`) VALUES('1130', 'Invited Talk');

DROP TABLE IF EXISTS `field_clockend`;
CREATE TABLE `field_clockend` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_clockend` (`pages_id`, `data`) VALUES('1082', '2020-06-08 15:00:08');
INSERT INTO `field_clockend` (`pages_id`, `data`) VALUES('1083', '2020-06-09 09:00:41');
INSERT INTO `field_clockend` (`pages_id`, `data`) VALUES('1117', '2020-06-09 10:00:41');
INSERT INTO `field_clockend` (`pages_id`, `data`) VALUES('1129', '2020-06-08 12:00:08');
INSERT INTO `field_clockend` (`pages_id`, `data`) VALUES('1130', '2020-06-08 14:00:08');

DROP TABLE IF EXISTS `field_clockstart`;
CREATE TABLE `field_clockstart` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_clockstart` (`pages_id`, `data`) VALUES('1082', '2020-06-08 14:00:08');
INSERT INTO `field_clockstart` (`pages_id`, `data`) VALUES('1083', '2020-06-09 08:00:41');
INSERT INTO `field_clockstart` (`pages_id`, `data`) VALUES('1117', '2020-06-09 09:00:41');
INSERT INTO `field_clockstart` (`pages_id`, `data`) VALUES('1129', '2020-06-08 11:00:08');
INSERT INTO `field_clockstart` (`pages_id`, `data`) VALUES('1130', '2020-06-08 13:00:08');

DROP TABLE IF EXISTS `field_colors`;
CREATE TABLE `field_colors` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_colors_end`;
CREATE TABLE `field_colors_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1124', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. Sed turpis tincidunt id aliquet risus. Sed libero enim sed faucibus turpis in eu. .', '2', '36', '1', 'Bill Jurgens', 'hello@simonduerr.eu', '1591290556', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '0', '0', 'MorgSm0DR91SdYUlbOV3kEAIXh9eiwJ0Pw396rNxQgSbAh__LfLnYrCVD1fg1AVdRAxvQiBUs7Ugar7x4KjhLXLn1U_A_7w5xdM7ebxYtvrCQrOugod4w0PeWK3mkEPs', 'hHz0Zgs5LFgV6B5YlXSlXFvn_VAzZbcvZDiK8koA', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1078', 'This is very interesting work. Can we chat about it in the break?', '2', '35', '1', 'John Doe', 'test@simonduerr.eu', '1591290468', '40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '0', '0', 'o0z_HZK8_wMRuu_jAAlnOhyMFCB8s_WAQjsev0zdn4NlhOoZsfYH5rGDAy_eh33VJCQE9nnm4bUMb0DQ9xBVm1mis_5pe1EIpC_3xdaFnm6DOaV66uaaXMv_HgndAYtj', 'qD71kM5H6flFGU9gwTIlRYpTj3KIO3HCnrx4QhFc', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1125', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. Sed turpis tincidunt id aliquet risus. Sed libero enim sed faucibus turpis in eu.', '3', '34', '1', 'Mercedes Mercer', 'tp@simonduerr.eu', '1591050046', '40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '33', '0', 'cb2U3A7dDSFD_V_HKjRYFNM1E8t_82t_dM_Iyw891Xeg6lAMDEpW6R63D8bSyUwk3xBxBrl40bFZCTxJeztBvO9zJ9pyOoHBT_JWMT5lfhoL1A2Ks3VcBr_jbBoeFR7d', 'Ms_zGP_bfS_Esoa1cyQE0EMPwccnxHWuIZM2JNKY', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1125', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Hac habitasse platea dictumst quisque sagittis purus sit. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. At consectetur lorem donec massa sapien. In mollis nunc sed id semper risus in hendrerit. Volutpat maecenas volutpat blandit aliquam etiam erat. Faucibus scelerisque eleifend donec pretium. Sed turpis tincidunt id aliquet risus. Sed libero enim sed faucibus turpis in eu. Tortor at auctor urna nunc id. Facilisis sed odio morbi quis commodo. Enim diam vulputate ut pharetra sit. Et pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Diam sollicitudin tempor id eu. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Nulla aliquet enim tortor at. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Ut enim blandit volutpat maecenas volutpat.', '2', '33', '1', 'Mr.T', 'tp@simonduerr.eu', '1591050037', '40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '0', '0', 'WW61mN4nD6mIOvOmmB1rJ7tZquCQ2hOb8DguBM7TR4mIFsSj6TjXFvjXWgUxJ0IbN8D1QmFHBmsQtkVXzgrvqnkwuD58QpclUA22MogaVvTpC9Y5KKuM54zPXRaja0fI', 'b6Jltf1ku4g_blHBEKT7gQgw1HvKJTpWJ3Rf4wsy', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1116', 'A test comment.', '2', '32', '1', 'Maren Chu', 'test@simonduerr.eu', '1591048508', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '0', '0', 'Ob9ZIE4cSCZfFJ5bmRS7FI_WOpfAFMSwVlVdKLy3RyWOd_Fm1_OW891d6ncGQb6L_qIb1lyPgfM3DnIOy8LYbbC7ISs7hzMgs5rX91v4kDWw1WBjvQ2vLb7iQAThEWBf', 'VvEXAZBykW1SodMi5cOjbC6Mm9nwWQz8Hw29l1n_', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1125', 'TestComment', '5', '38', '1', 'Simon', 'test@simonduerr.eu', '1592423301', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', '33', '4', '1DqdmF_e6bJDDFIzaHBN0U5JkYPJQ3s3xBWrwKDZbgct9QxudKHSJhyqPLABrMxdYUc1O2pEXysDgPxQYXnTI3DZZfJhiKjtu_gMN_DJa7OlJWbF3ynlaAMmtXJ8Mhcq', 'bemQtNGkcHnofJTyxApeFQrXt5uYwd5GqbljfVv8', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1082', 'Could you elaborate on what you mean on slide 5 with \"Lorem ipsum dolor sit amet\"?', '2', '31', '1', 'Kendra Williams', 'test@simonduerr.eu', '1590686529', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '0', '0', 'RryDdSv0adTLcLV67H4LF7URgo77b89PdyzcW4OEaMA3A2C_ceW0BR1KChL1C5tRjpvHVV7MNPVEk5PZ1ubvg7xynPOnxUvd7djbaQeJjH3g5bCpP_lMGzD_aI_1tjg4', 'Bf3HkiOi4bTnQtmo_3wOyymoMQndDrOw2Bt_LVWE', '1', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1125', 'This should trigger an Email Alert.', '6', '39', '1', 'Simon', 'test@simonduerr.eu', '1592423343', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '', '33', '4', 'c6hNxw7_PWtOBf8dZgjEpxaOHMZWqHonSPhXto5c2Cot1yitOJBy6dDMX4WuwSb_ZADGYAFxRR7CNJm3PfjQbiwMI9NDm4cdeC9nJVMJhhkYsI6ABT0POhaAY3YSH6sw', 'JP5TxMzF6TwojXuYhcjcFWk6In_8WCy_NncZ3GEk', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1125', 'I like this work too!', '4', '37', '1', 'Jane Doe', 'janedoe@simonduerr.eu', '1591363175', '41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', '33', '0', 'a0THHC6eqaWswo4GotBfWWpoUhCED8SHdmqnSy_TU71JWgcmBYtNGO0JsJBPDoMsaPy9r_HHHH0VzsTYTfOZb_STif7EuV_Z4nvb_26woRhZ0TtYgVHmOEON1LDzb5LG', 'zKRWdpXM_9IPgkFf5QxG5aQTgzNWssttoYuASjKT', '0', '0', NULL);

DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('1', '1', '2020-04-19 17:13:44', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('2', '1', '2020-04-19 17:13:46', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('5', '1', '2020-04-19 17:21:07', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('4', '1', '2020-04-19 17:21:09', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('3', '1', '2020-04-27 13:09:22', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('31', '1', '2020-05-28 19:35:18', '0.0.0.0', '41');

DROP TABLE IF EXISTS `field_conference_title`;
CREATE TABLE `field_conference_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_conference_title` (`pages_id`, `data`) VALUES('1020', 'Virtual Conference');

DROP TABLE IF EXISTS `field_contributions`;
CREATE TABLE `field_contributions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1027', '2020-04-16 08:23:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1028', '2020-04-23 07:00:00');

DROP TABLE IF EXISTS `field_daydate`;
CREATE TABLE `field_daydate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_deadline`;
CREATE TABLE `field_deadline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_deadline` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1020', '1027,1028', '2', '1026');

DROP TABLE IF EXISTS `field_decline`;
CREATE TABLE `field_decline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_decline` (`pages_id`, `data`) VALUES('1020', 'Unfortunately, we have decied to decline your submission');

DROP TABLE IF EXISTS `field_doi`;
CREATE TABLE `field_doi` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_doi` (`pages_id`, `data`) VALUES('1079', 'https://dx.doi.org/2012123456789');
INSERT INTO `field_doi` (`pages_id`, `data`) VALUES('1083', 'https://dx.doi.org/930293049203');
INSERT INTO `field_doi` (`pages_id`, `data`) VALUES('1076', 'https://dx.doi.org/1230123.213012');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_emailaddress`;
CREATE TABLE `field_emailaddress` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_enddate`;
CREATE TABLE `field_enddate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_enddate` (`pages_id`, `data`) VALUES('1020', '2020-04-24 00:00:00');

DROP TABLE IF EXISTS `field_faq`;
CREATE TABLE `field_faq` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_faq` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1034', '1036,1040', '2', '1035');

DROP TABLE IF EXISTS `field_faq_section`;
CREATE TABLE `field_faq_section` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_faq_section` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1036', '1038,1039,1043', '3', '1037');
INSERT INTO `field_faq_section` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1040', '1042', '1', '1041');

DROP TABLE IF EXISTS `field_footer`;
CREATE TABLE `field_footer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_footer_end`;
CREATE TABLE `field_footer_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fullname`;
CREATE TABLE `field_fullname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_fullname` (`pages_id`, `data`) VALUES('41', 'John Doe');

DROP TABLE IF EXISTS `field_general`;
CREATE TABLE `field_general` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_general_end`;
CREATE TABLE `field_general_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_hyperlink`;
CREATE TABLE `field_hyperlink` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hyperlink` (`pages_id`, `data`) VALUES('1031', 'http://duerrsimon.github.io/VCMS/');

DROP TABLE IF EXISTS `field_iframe`;
CREATE TABLE `field_iframe` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_iframe` (`pages_id`, `data`) VALUES('1079', '<iframe width=\"1353\" height=\"511\" src=\"https://www.youtube.com/embed/fQDL8r3r_d4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `field_iframe` (`pages_id`, `data`) VALUES('1125', '<iframe src=\"https://slides.com/simonduerr/an-interactive-html-presentation/embed?style=light\" width=\"576\" height=\"420\" scrolling=\"no\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>');
INSERT INTO `field_iframe` (`pages_id`, `data`) VALUES('1124', '<iframe src=\"https://slides.com/simonduerr/an-interactive-html-presentation/embed?style=light\" width=\"576\" height=\"420\" scrolling=\"no\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>');
INSERT INTO `field_iframe` (`pages_id`, `data`) VALUES('1116', '<iframe src=\"https://slides.com/simonduerr/an-interactive-html-presentation/embed?style=light\" width=\"576\" height=\"420\" scrolling=\"no\" frameborder=\"0\"></iframe>');
INSERT INTO `field_iframe` (`pages_id`, `data`) VALUES('1080', '<iframe src=\"https://slides.com/simonduerr/an-interactive-html-presentation/embed?style=light\" width=\"576\" height=\"420\" scrolling=\"no\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `hyperlink` varchar(2048) DEFAULT '',
  `orientation` varchar(2048) DEFAULT '',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `hyperlink`, `orientation`) VALUES('1044', 'logoipsum2-1.svg', '1', '', '2020-04-19 15:45:53', '2020-04-19 15:45:53', '{\"_98\":\"\",\"_116\":\"\"}', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `hyperlink`, `orientation`) VALUES('1044', 'logoipsum3-1.svg', '2', '', '2020-04-19 15:45:53', '2020-04-19 15:45:53', '{\"_98\":\"\",\"_116\":\"\"}', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `hyperlink`, `orientation`) VALUES('1044', 'logoipsum-2.svg', '0', '', '2020-04-19 15:25:51', '2020-04-19 15:25:51', '{\"_98\":\"Logoipsum\",\"_116\":\"http:\\/\\/test.com\",\"ix\":\"98_Logoipsum\"}', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `hyperlink`, `orientation`) VALUES('1044', 'logoipsum1-1.svg', '3', '', '2020-04-19 15:45:53', '2020-04-19 15:45:53', '{\"_98\":\"\",\"_116\":\"\"}', '', '');

DROP TABLE IF EXISTS `field_img`;
CREATE TABLE `field_img` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'photo-1573497019940-1c28c88b4f3e.jpg', '0', '', '2020-06-05 16:12:56', '2020-06-05 16:12:56', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1129', 'photo-1560250097-0b93528c311a.jpg', '0', '', '2020-06-05 16:13:26', '2020-06-05 16:13:26', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'logo.svg', '0', '', '2020-05-19 23:19:38', '2020-05-19 23:19:38', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'header.jfif', '0', '', '2020-05-19 23:20:28', '2020-05-19 23:20:28', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1125', 'interactive.png', '0', '', '2020-05-28 20:34:21', '2020-05-28 20:34:21', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1124', 'interactive.png', '0', '', '2020-05-28 20:34:54', '2020-05-28 20:34:54', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1116', 'interactive.png', '0', '', '2020-05-28 20:36:08', '2020-05-28 20:36:08', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1080', 'interactive.png', '0', '', '2020-05-28 20:37:04', '2020-05-28 20:37:04', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1079', 'interactive.png', '0', '', '2020-05-28 20:37:49', '2020-05-28 20:37:49', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1078', 'interactive.png', '0', '', '2020-05-28 20:38:42', '2020-05-28 20:38:42', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1076', 'slidespresentation.png', '0', '', '2020-05-28 20:39:29', '2020-05-28 20:39:29', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1130', 'another-talk-on-this-topic.uploadimage_0_another_talk_on_this_topic', '0', '', '2020-06-05 14:39:38', '2020-06-05 14:39:38', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1117', 'photo-1573496359142-b8d87734a5a2.jpg', '0', '', '2020-06-05 16:12:37', '2020-06-05 16:12:37', '');
INSERT INTO `field_img` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1082', 'photo-1573497019418-b400bb3ab074.jpg', '0', '', '2020-06-05 16:13:11', '2020-06-05 16:13:11', '');

DROP TABLE IF EXISTS `field_license`;
CREATE TABLE `field_license` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1076', 'by-nc-nd');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1079', 'by-sa');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1083', 'by-nc');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1125', 'by');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1082', 'test');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1124', 'by-sa');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1080', 'by-sa');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1078', 'by-sa');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1129', 'r');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1116', 'by');
INSERT INTO `field_license` (`pages_id`, `data`) VALUES('1130', 'by-sa');

DROP TABLE IF EXISTS `field_liked_posters`;
CREATE TABLE `field_liked_posters` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1076', '2');
INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1079', '3');
INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1080', '4');
INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1116', '1');
INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1124', '6');
INSERT INTO `field_liked_posters` (`pages_id`, `data`, `sort`) VALUES('41', '1125', '5');

DROP TABLE IF EXISTS `field_mailchimp_url`;
CREATE TABLE `field_mailchimp_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mailchimp_url` (`pages_id`, `data`) VALUES('1020', 'https://simonduerr.us4.list-manage.com/subscribe?u=d1e94f74e48a48d1d60c70b88&id=a924e509dd');

DROP TABLE IF EXISTS `field_meetingpassword`;
CREATE TABLE `field_meetingpassword` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_meetingpassword` (`pages_id`, `data`) VALUES('1020', '123456');

DROP TABLE IF EXISTS `field_message_templates`;
CREATE TABLE `field_message_templates` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_message_templates_end`;
CREATE TABLE `field_message_templates_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_newsletter`;
CREATE TABLE `field_newsletter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_newsletter_end`;
CREATE TABLE `field_newsletter_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_number_of_votes`;
CREATE TABLE `field_number_of_votes` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1020', '5');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('41', '92');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1079', '1');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1080', '1');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1116', '8');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1124', '1');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1125', '1');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1078', '5');
INSERT INTO `field_number_of_votes` (`pages_id`, `data`) VALUES('1076', '6');

DROP TABLE IF EXISTS `field_orcid`;
CREATE TABLE `field_orcid` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_orcid` (`pages_id`, `data`) VALUES('41', '0000-0000-1234-5675');

DROP TABLE IF EXISTS `field_organizers`;
CREATE TABLE `field_organizers` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_organizers` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1020', '1031', '1', '1030');

DROP TABLE IF EXISTS `field_page_ref`;
CREATE TABLE `field_page_ref` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_ref` (`pages_id`, `data`, `sort`) VALUES('1020', '1111', '0');
INSERT INTO `field_page_ref` (`pages_id`, `data`, `sort`) VALUES('1020', '1112', '1');

DROP TABLE IF EXISTS `field_page_ref_hyperlink_url`;
CREATE TABLE `field_page_ref_hyperlink_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_ref_hyperlink_url` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1020', '1115', '1', '1114');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_pdf`;
CREATE TABLE `field_pdf` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pdf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1117', 'loss.pdf', '0', '', '2020-05-19 23:57:15', '2020-05-19 23:57:15', '');
INSERT INTO `field_pdf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1078', 'posterdown.pdf', '0', '', '2020-05-28 20:38:42', '2020-05-28 20:38:42', '');
INSERT INTO `field_pdf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1076', 'posterdown.pdf', '0', '', '2020-05-28 20:39:29', '2020-05-28 20:39:29', '');

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_primary_color`;
CREATE TABLE `field_primary_color` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1016', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '173');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1118', '182');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1132', '188');

DROP TABLE IF EXISTS `field_pronouns`;
CREATE TABLE `field_pronouns` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pronouns` (`pages_id`, `data`) VALUES('41', 'he/him/his');

DROP TABLE IF EXISTS `field_references`;
CREATE TABLE `field_references` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_required_checkbox`;
CREATE TABLE `field_required_checkbox` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_required_checkbox` (`pages_id`, `data`) VALUES('41', '1');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_scf_message`;
CREATE TABLE `field_scf_message` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_scheduled`;
CREATE TABLE `field_scheduled` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_scheduled` (`pages_id`, `data`) VALUES('1129', '1');
INSERT INTO `field_scheduled` (`pages_id`, `data`) VALUES('1083', '1');
INSERT INTO `field_scheduled` (`pages_id`, `data`) VALUES('1117', '1');
INSERT INTO `field_scheduled` (`pages_id`, `data`) VALUES('1130', '1');
INSERT INTO `field_scheduled` (`pages_id`, `data`) VALUES('1082', '1');

DROP TABLE IF EXISTS `field_secondary_color`;
CREATE TABLE `field_secondary_color` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_secondbody`;
CREATE TABLE `field_secondbody` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_secondbody` (`pages_id`, `data`) VALUES('1044', '<p>We thank our sponsors for supporting this meeting financially.</p>');
INSERT INTO `field_secondbody` (`pages_id`, `data`) VALUES('1020', '<h4><strong>Abstract Submitter’s Declaration</strong></h4>\n\n<p>By submitting an abstract you declare that you agree with the following terms:</p>\n\n<ol><li>I confirm that I previewed this abstract and that all information is correct. I accept that the content of this abstract <strong>cannot be modified or corrected after final submission</strong> and I am aware that it will be published exactly as submitted.</li>\n	<li>Submission of the abstract constitutes <strong>the consent of all authors</strong> to publication (e.g. Congress website, programmes, Journal, other promotions, etc.)</li>\n	<li>The abstract submitter warrants and represents that no part of the information and content provided by him/her/them (Hereafter: the “<strong>Content</strong>“) to the <strong>Organizers</strong> nor the publication of any such Content by the Organizers, on the internet or otherwise infringes any third party rights, including but not limited to privacy rights and/or intellectual property rights.</li>\n	<li>The Abstract Submitter grants the Organizers a license to reproduce, publish, translate, distribute, and display the text  and uploaded files of the Content on a royalty-free, perpetual, irrevocable nonexclusive basis within the limits of this event.</li>\n	<li>I herewith confirm that the contact details saved in this system are those of the presenting author, who will be notified about the status of the abstract. The presenting author is responsible for informing the other authors about the status of the abstract. </li>\n	<li>I understand that the presenting author must be a registered participant.</li>\n	<li>The Organisers reserve the right to remove from publication and/or presentation an abstract which does not comply with the above.</li>\n</ol>');

DROP TABLE IF EXISTS `field_secondsubtitle`;
CREATE TABLE `field_secondsubtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_secondsubtitle` (`pages_id`, `data`) VALUES('1044', 'Financial contributors');

DROP TABLE IF EXISTS `field_secondtitle`;
CREATE TABLE `field_secondtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_secondtitle` (`pages_id`, `data`) VALUES('1044', 'Sponsors');

DROP TABLE IF EXISTS `field_signup_deadline`;
CREATE TABLE `field_signup_deadline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_signup_deadline` (`pages_id`, `data`) VALUES('1020', '2020-06-22 00:00:00');

DROP TABLE IF EXISTS `field_single_page`;
CREATE TABLE `field_single_page` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_single_page` (`pages_id`, `data`, `sort`) VALUES('1115', '1044', '0');

DROP TABLE IF EXISTS `field_speaker`;
CREATE TABLE `field_speaker` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1076', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1078', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1079', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1080', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1083', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1116', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1117', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1124', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1125', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1130', '41', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1082', '1022', '0');
INSERT INTO `field_speaker` (`pages_id`, `data`, `sort`) VALUES('1129', '1022', '0');

DROP TABLE IF EXISTS `field_sponsorsfrontpage`;
CREATE TABLE `field_sponsorsfrontpage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sponsorsfrontpage` (`pages_id`, `data`) VALUES('1044', '0');

DROP TABLE IF EXISTS `field_startdate`;
CREATE TABLE `field_startdate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_startdate` (`pages_id`, `data`) VALUES('1020', '2020-04-21 00:00:00');

DROP TABLE IF EXISTS `field_subject`;
CREATE TABLE `field_subject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_subtitle`;
CREATE TABLE `field_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_subtitle` (`pages_id`, `data`) VALUES('1034', 'Frequently asked questions');
INSERT INTO `field_subtitle` (`pages_id`, `data`) VALUES('1044', 'Information about this meeting');
INSERT INTO `field_subtitle` (`pages_id`, `data`) VALUES('1111', 'What we expect from participants');
INSERT INTO `field_subtitle` (`pages_id`, `data`) VALUES('1', 'Computational Chemistry');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'Lorem ipsum dolor sit amet.');

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1079', '1088', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1116', '1088', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1124', '1088', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1079', '1089', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1116', '1089', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1116', '1092', '2');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1124', '1092', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1080', '1096', '0');

DROP TABLE IF EXISTS `field_thirdbody`;
CREATE TABLE `field_thirdbody` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_thirdbody` (`pages_id`, `data`) VALUES('1020', '<h3>Virtual Poster</h3>\n\n<p>Virtual Posters can be uploaded up until 2 days before the conference in the My Submissions tab.<br /><br />\nVirtual Posters are presented either using a classical PDF file with maximum 4 pages in 16:9 format or using 4 interactive slides that can be created using online software such as</p>\n\n<ul><li><a href=\"https://slides.new\">Google Docs</a></li>\n	<li><a href=\"https://slides.com\">Slides.com</a></li>\n	<li>directly using <a href=\"\">Reveal.js</a></li>\n	<li><a href=\"https://medium.com/@mjspeck/presenting-code-using-jupyter-notebook-slides-a8a3c3b59d67\">by exporting a Jupyter Notebook as HTML Presentation</a></li>\n	<li><a href=\"https://rmarkdown.rstudio.com/lesson-11.html\">using Rmarkdown</a></li>\n</ul><p>You then either copy the embed code which starts with an <code>&lt;iframe&gt;</code> tag or upload on your own server or to github pages and define an iframe like below <code>&lt;iframe src=\"THEURLYOUWANTTOEMBED\" width=\"1600\" height=\"900\"&gt;&lt;/iframe&gt;</code>.<br />\nA preview image as jpg, png or svg needs to be uploaded for both formats.</p>\n\n<p> </p>');
INSERT INTO `field_thirdbody` (`pages_id`, `data`) VALUES('1044', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

DROP TABLE IF EXISTS `field_thirdsubtitle`;
CREATE TABLE `field_thirdsubtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_thirdtitle`;
CREATE TABLE `field_thirdtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_thirdtitle` (`pages_id`, `data`) VALUES('1044', 'Contact us');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Use the front-end page editor');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Adminer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Configuration');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'VCMS-Settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'deadline');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Abstract Submission');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Registration');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'organizers');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Virtual Conference Team');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'faq');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'faq_section');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'FAQ');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'faq');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', '1587287804-3552-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', '1587287829-7986-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'What is VCMS?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Is there a method to add payment?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'What is voting for virtual posters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Questions about the Meeting');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Poster Session');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'How to install');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'Schedule');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'Posters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'API');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Sign in');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'JSON API');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'Submit Contribution');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Contributions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'Saved');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Submitted');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Declined');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'A short slide poster presentation');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'A poster which displays a PDF');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'My work on the fluffy properties of our feline friends.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', 'An awesome poster on quantum tunneling and enzyme energy barriers');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'Edit contribution');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'A long title for a talk on Quantum Interference Modelling');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'VIrtual Conferncing in the 21st century');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'Accepted');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'computational');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1089', 'experimental');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1090', 'QM');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1091', 'Long tag');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1092', 'Quantum Mechanics');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1093', 'Molecular Mechanics');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Molecular Dynamics');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'Metadynamics');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', 'Enhanced Sampling');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1133', 'Schedule');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1110', 'Footer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1111', 'Code of Conduct');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1112', 'Privacy Policy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1113', 'page_ref_hyperlink_url');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1114', 'settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1115', 'Contact the organizers');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1116', 'An interactive Poster');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1117', 'A virtual talk');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1118', 'Manage Submissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1119', 'Approve submissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1125', 'Poster on Machine Learning');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1132', 'Schedule');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1124', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1127', 'Comments JSON');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1128', 'Speakers');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1129', 'A talk on something I want to present at a virtual conference');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1130', 'Another talk on this topic');

DROP TABLE IF EXISTS `field_twitter`;
CREATE TABLE `field_twitter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('1020', 'simonduerr');
INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('41', 'johndoe');
INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('1079', 'twitter.com/status1293');
INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('1117', 'twitter.comTest');
INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('1083', 'https://twitter.com/90920312');
INSERT INTO `field_twitter` (`pages_id`, `data`) VALUES('1116', 'https://twitter.com/status/1923091203');

DROP TABLE IF EXISTS `field_use_newsletter`;
CREATE TABLE `field_use_newsletter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_use_newsletter` (`pages_id`, `data`) VALUES('1020', '1');

DROP TABLE IF EXISTS `field_videoconferenceurl`;
CREATE TABLE `field_videoconferenceurl` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_videoconferenceurl` (`pages_id`, `data`) VALUES('1129', 'http://zoom.us/test');

DROP TABLE IF EXISTS `field_videotofollow`;
CREATE TABLE `field_videotofollow` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_videotofollow` (`pages_id`, `data`) VALUES('1020', '1');
INSERT INTO `field_videotofollow` (`pages_id`, `data`) VALUES('1117', '0');
INSERT INTO `field_videotofollow` (`pages_id`, `data`) VALUES('1129', '0');
INSERT INTO `field_videotofollow` (`pages_id`, `data`) VALUES('1130', '0');

DROP TABLE IF EXISTS `field_voting`;
CREATE TABLE `field_voting` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_voting_end`;
CREATE TABLE `field_voting_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_votingenable`;
CREATE TABLE `field_votingenable` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_votingenable` (`pages_id`, `data`) VALUES('1020', '1');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'settings');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'repeater_deadline');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'repeater_organizers');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'repeater_faq');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_faq_section');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'faq');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'talk');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'schedule');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'poster');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'poster-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'api');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'signin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'json');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'submit');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'edit');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('116', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('117', 'repeater_page_ref_hyperlink_url');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('118', '404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('119', 'poster-comments');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('120', 'speakers');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '148', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '141', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '114', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '116', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '162', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '120', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '118', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '137', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '135', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '150', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '140', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '149', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '118', '3', '{\"label\":\"Body About Section\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '122', '4', '{\"label\":\"Title for Sponsors section\",\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '127', '5', '{\"label\":\"Subtitle for Sponsor section\",\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '123', '6', '{\"label\":\"Body for Sponsor section\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '125', '7', '{\"notes\":\"Check this toggle if you want the logos of the sponsors to appear centered below the signup links and deadline on the home page.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '129', '8', '{\"label\":\"Sponsors logos\",\"notes\":\"For all sponsors enter a url in the hyperlink field to have them linked to their website.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '126', '9', '{\"label\":\"Title for Contact section\",\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '128', '10', '{\"label\":\"Subtitle for Contact section\",\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '124', '11', '{\"label\":\"Body Contact\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '92', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '140', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '149', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '135', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '108', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '133', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '134', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '164', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '165', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '107', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '137', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '141', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '121', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '133', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '134', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '117', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '143', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '144', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '107', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '146', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '163', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '118', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '121', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '145', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '147', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '151', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '121', '9', '{\"description\":\"\",\"label\":\"Link to tweet\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '150', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '124', '27', '{\"label\":\"Poster instructions\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '123', '28', '{\"description\":\"This text will be shown when people register their submissions. Edit to your liking.\",\"label\":\"Submission Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '159', '29', '{\"description\":\"Enter the default message for accepting a submission. You can edit it per submission on the submission page should you wish to do so.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '160', '30', '{\"description\":\"Enter the default message for declining a submission. You can edit it per submission on the submission page should you wish to do so.\",\"label\":\"Decline Submission Message\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '171', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '172', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('117', '158', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('117', '116', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('117', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '139', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '142', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '152', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '153', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '167', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '168', '22', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '110', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '104', '14', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '106', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '107', '16', '{\"description\":\"Enter the amount of votes that every user is allocated at the beginning.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '105', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '108', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '98', '1', '{\"description\":\"Long title. The name of the Tab\\/Window will be the title, the headline of the page on the page itself will be the Long title if not empty.\",\"label\":\"Long title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '119', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '170', '26', '{\"collapsed\":\"1\",\"description\":\"For accepting contributions you can preenter a default message that you then can modify for each submission. \\n\\nAlso you can modify the default texts for the submission requirements and poster requirements.\",\"label\":\"Templates and Conditions for Submission\\/Acceptance\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '169', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '155', '24', '{\"label\":\"Legal information Links\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '157', '23', '{\"label\":\"Support in Footer\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '166', '18', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '121', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '139', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '161', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '109', '2', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '111', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '173', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '175', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '108', '7', '{\"label\":\"Logo\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '113', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '115', '9', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeText', 'subtitle', '0', 'Subtitle', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"collapsed\":0,\"description\":\"This field is used as the Meta Description and will be shown e.g in Google Search results.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFieldsetOpen', 'colors', '0', 'Colors', '{\"closeFieldID\":101,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFieldsetClose', 'colors_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'colors\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":100,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'primary_color', '0', 'Primary Color', '{\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'secondary_color', '0', 'Secondary color', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeFieldsetOpen', 'Voting', '0', 'Voting', '{\"closeFieldID\":105,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeFieldsetClose', 'Voting_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'Voting\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":104,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeToggle', 'votingenable', '0', 'Enable Voting?', '{\"formatType\":0,\"labelType\":0,\"inputfieldClass\":\"InputfieldRadios\",\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"yes\",\"collapsed\":0,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeInteger', 'number_of_votes', '0', 'Number of votes', '{\"zeroNotEmpty\":0,\"defaultValue\":5,\"inputType\":\"text\",\"size\":10,\"tags\":\"settings\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'img', '0', 'Image', '{\"extensions\":\"gif jpg jpeg png jfif svg\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeFieldsetOpen', 'general', '0', 'General Settings', '{\"closeFieldID\":110}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeFieldsetClose', 'general_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'general\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":109}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeDatetime', 'startdate', '0', 'Start date', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"icon\":\"calendar\",\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeDatetime', 'enddate', '0', 'Enddate', '{\"collapsed\":0,\"columnWidth\":50,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"d.m.y\",\"icon\":\"calendar\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeRepeater', 'deadline', '0', 'Deadlines', '{\"template_id\":44,\"parent_id\":1025,\"repeaterFields\":[1,114],\"repeaterTitle\":\"#n: {title}\",\"repeaterAddLabel\":\"Add new deadline\",\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeDatetime', 'date', '0', 'Date', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"timeInputFormat\":\"H:i\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeRepeater', 'organizers', '0', 'Organizers', '{\"template_id\":45,\"parent_id\":1029,\"repeaterFields\":[1,116],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeURL', 'hyperlink', '0', 'URL', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeText', 'fullname', '0', 'Full Name', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeRepeater', 'faq', '0', 'Frequently asked questions', '{\"template_id\":46,\"parent_id\":1032,\"repeaterFields\":[1,120],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"{title}\",\"repeaterAddLabel\":\"New section\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeRepeater', 'faq_section', '0', 'FAQ Section', '{\"template_id\":47,\"parent_id\":1033,\"repeaterFields\":[1,118],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"{title}\",\"repeaterAddLabel\":\"Add new FAQ entry\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeText', 'twitter', '0', 'Twitter account', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"twitter\",\"description\":\"Enter without @\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'secondtitle', '0', 'Second Title', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeTextarea', 'secondbody', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeTextarea', 'thirdbody', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeToggle', 'sponsorsfrontpage', '0', 'Show sponsors on front page?', '{\"formatType\":0,\"labelType\":0,\"inputfieldClass\":\"InputfieldRadios\",\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"no\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeText', 'thirdtitle', '0', 'Third title', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeText', 'secondsubtitle', '0', 'Subtitle', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeText', 'thirdsubtitle', '0', 'Subtitle', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png jfif svg\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"otherField\":\"hyperlink\",\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":{\\\"hyperlink\\\":\\\"TextformatterEntities\\\"},\\\"cf_label\\\":{\\\"cf_label__hyperlink\\\":\\\"Hyperlink\\\"}}\",\"fileSchema\":6,\"collapsed\":0,\"orientationField\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeEmail', 'emailaddress', '0', 'Emailadress', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeText', 'subject', '0', 'Subject', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeText', 'scf_message', '0', 'SCF - Message', '{\"tags\":\"scf\",\"columnWidth\":25}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeText', 'iframe', '0', 'Iframe', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeFile', 'pdf', '0', 'PDF', '{\"extensions\":\"pdf\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"icon\":\"sticky-note-o\",\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":0,\"quietSave\":1,\"useNotify\":4,\"deleteSpamDays\":3,\"depth\":2,\"dateFormat\":\"relative\",\"useVotes\":1,\"useStars\":0,\"schemaVersion\":6,\"collapsed\":0,\"redirectAfterPost\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeTextarea', 'references', '0', 'References', '{\"textformatters\":[\"TextformatterEntities\",\"TextformatterMarkdownExtra\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeTextarea', 'abstract', '0', 'Abstract', '{\"textformatters\":[\"TextformatterEntities\",\"TextformatterMarkdownExtra\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"description\":\"You can use Markdown to format the text.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeDatetime', 'daydate', '0', '', '{\"dateOutputFormat\":\"l, j F Y\",\"collapsed\":0,\"size\":25,\"datepicker\":0,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeToggle', 'videotofollow', '0', 'Display video to follow when video is not available yet?', '{\"formatType\":0,\"labelType\":0,\"inputfieldClass\":\"InputfieldRadios\",\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"no\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypePage', 'speaker', '0', 'Speaker', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":29,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeText', 'doi', '0', 'DOI', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('142', 'FieldtypeURL', 'videoconferenceurl', '0', 'Video conference URL', '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('143', 'FieldtypeText', 'affiliation', '0', 'Affiliation', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('144', 'FieldtypeText', 'orcid', '0', 'ORCID', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('145', 'FieldtypePage', 'contributions', '0', 'Contributions', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('146', 'FieldtypeText', 'pronouns', '0', 'Pronouns', '{\"description\":\"If left blank will not be shown. - *[What are pronouns?](https:\\/\\/www.ccsu.edu\\/lgbt\\/files\\/PreferredGenderPronounsForFaculty.pdf)*\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('147', 'FieldtypePage', 'liked_posters', '0', 'Liked Posters', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1,\"labelFieldName\":\"title\",\"collapsed\":0,\"size\":10,\"allowUnpub\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('148', 'FieldtypeCheckbox', 'required_checkbox', '0', 'Code of Conduct', '{\"description\":\"Code of conduct in footer.\",\"collapsed\":0,\"required\":1,\"checkboxLabel\":\"I agree with the conference code of conduct\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('149', 'FieldtypeTextarea', 'authors', '0', 'Authors', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('150', 'FieldtypeText', 'license', '0', 'License', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('151', 'FieldtypePage', 'tags', '0', 'Tags', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1087,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('152', 'FieldtypeToggle', 'use_newsletter', '0', 'Use Mailchimp Newsletter', '{\"description\":\"By default no newsletter will be available. As managing a conference with many attendees can get difficult for email communication integration with mailchimp is provided that is GDPR compliant with Double OptIn. \\nIf you select YES on this toogle you need to setup Audience ID and your API ID. See instructions below.\",\"notes\":\"Log into your Mailchimp account and go to Profile > Extras > API Keys.\\nIf you don\'t have an API Key, create a new one.\\nCopy your API Key and paste it in the module settings (Processwire > Modules > Site > SubscribeToMailchimp).\\nBack in Mailchimp, go to the Audience, where you want your new subscribers.\\nGo to Settings > audience name and defaults. Copy the Audience ID and paste it into the module settings.\\nTest your settings with the provided checkbox.\",\"formatType\":0,\"labelType\":0,\"inputfieldClass\":\"InputfieldRadios\",\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"no\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('153', 'FieldtypeURL', 'Mailchimp_URL', '0', 'Mailchimp URL', '{\"description\":\"In order for the mailchimp signup form in the footer to work you need to provide the URL to your mailchimpsignup form.\\nIf left blank, the signup form will not be shown and only users that register will be put on the mailinglist if you have checked the toggle above and added your mailchimp audience in the Module Settings for Subscribe to mailchimp.\",\"notes\":\"1. Navigate to the Audience tab.\\n2. If you have more than one audience, click the Current audience drop-down and choose the one you want to work with. Click the Manage Audience drop-down and choose Signup forms.\\n3. Select Form builder.\\n4. Copy signupform url that starts with eepurl.com\\/XXXXXX and paste in your browser. The URL will resolve to the full mailchimp url. The URL looks like this: https:\\/\\/username.us4.list-manage.com\\/subscribe?u=d1e94asddfasdas0b88&id=a9asdsadf9dd \\n5. Paste this URL in this field.\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('155', 'FieldtypePage', 'page_ref', '0', 'Page Reference', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('159', 'FieldtypeTextarea', 'acceptance', '0', 'Acceptance message', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('157', 'FieldtypeRepeater', 'page_ref_hyperlink_url', '0', 'Hyperlink or Page reference', '{\"template_id\":63,\"parent_id\":1113,\"repeaterFields\":[1,116,158],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"notes\":\"If the Page Reference is defined it has priority over the url. The title will always be used.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('158', 'FieldtypePage', 'single_page', '0', 'Select Single Page', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('160', 'FieldtypeTextarea', 'decline', '0', 'Acceptance message (copy)', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('161', 'FieldtypeText', 'conference_title', '0', 'Conference title', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('162', 'FieldtypeDatetime', 'clockstart', '0', 'Start', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"timeInputFormat\":\"H:i\",\"description\":\"Time is given in UTC time\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('163', 'FieldtypeDatetime', 'clockend', '0', 'Clockend', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"timeInputFormat\":\"H:i\",\"description\":\"Time is given in UTC.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('164', 'FieldtypeCheckbox', 'scheduled', '0', 'scheduled', '{\"formatType\":0,\"labelType\":1,\"inputfieldClass\":0,\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"no\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('165', 'FieldtypeText', 'category', '0', 'Category', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('166', 'FieldtypeFieldsetOpen', 'newsletter', '0', 'Newsletter', '{\"closeFieldID\":167}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('167', 'FieldtypeFieldsetClose', 'newsletter_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'newsletter\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":166}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('168', 'FieldtypeFieldsetOpen', 'footer', '0', 'Footer', '{\"closeFieldID\":169,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('169', 'FieldtypeFieldsetClose', 'footer_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'footer\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":168}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('170', 'FieldtypeFieldsetOpen', 'message_templates', '0', 'Message templates', '{\"closeFieldID\":171,\"description\":\"For accepting contributions you can preenter a default message that you then can modify for each submission.\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('171', 'FieldtypeFieldsetClose', 'message_templates_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'message_templates\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":170}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('172', 'FieldtypeText', 'meetingpassword', '0', 'Meeting Password', '{\"description\":\"If you want to secure e.g Zoom Meetings with a password. If set the password will be displayed below the video conference url on each scheduled talk page.\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('173', 'FieldtypeDatetime', 'signup_deadline', '0', 'Block all sign-ups after deadline', '{\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"timeInputFormat\":\"H:i\",\"description\":\"If you want to prevent sign-ups after a deadline enter a date here. The date will be shown on the sign-up page as Registration Deadline. The time is in UTC time.\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('175', 'FieldtypeOptions', 'access_control', '0', 'Level of Access Control', '{\"inputfieldClass\":\"InputfieldRadios\",\"collapsed\":0,\"description\":\"Select the level of access control. There are light checks to prevent Spam for the comments and you can moderate comments in the admin in the Setup tab.\",\"initValue\":1,\"required\":1,\"defaultValue\":1,\"optionColumns\":0}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('175', '1', 'No Access control, Poster Session and individual talks are accessible to anyone. Commenting requires email but not registration, Videoconference URLs will be shown', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('175', '2', 'Light Access Control, Attached files and videoconference URLs are not visible. Commenting is possible for anyone with an email.', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('175', '3', 'Closed Access, The poster session and individual talk pages are not accessible without registration. The schedule is available without registration. No commenting for outsiders.', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('175', '4', 'Private Access, All of the above + schedule are not visible without registration', '', '3');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '{\"collapsedTags\":[\"settings\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"affiliation\",\"contributions\",\"email\",\"fullname\",\"liked_posters\",\"number_of_votes\",\"orcid\",\"pass\",\"pronouns\",\"twitter\"]}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.148\"}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2020-04-18 11:07:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2020-04-18 11:08:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2020-04-18 11:08:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2020-04-18 11:08:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2020-04-18 11:08:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldToggle', '0', '', '2020-04-18 11:09:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeToggle', '1', '', '2020-04-18 11:09:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'PageFrontEdit', '2', '{\"inlineEditFields\":[],\"inlineLimitPage\":1,\"buttonLocation\":\"auto\",\"buttonType\":\"auto\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-18 11:09:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'FieldtypeComments', '1', '', '2020-04-18 11:10:18');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'InputfieldCommentsAdmin', '0', '', '2020-04-18 11:10:18');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessCommentsManager', '1', '', '2020-04-18 11:11:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessForgotPassword', '1', '{\"emailFrom\":\"test@simonduerr.eu\",\"askEmail\":1,\"maxPerIP\":3,\"useLog\":1,\"confirmFields\":[\"email:92\"],\"allowRoles\":[],\"blockRoles\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-18 11:11:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'LoginRegister', '0', '{\"features\":[\"login\",\"register\",\"profile\",\"login-email\",\"forgot\"],\"registerFields\":[\"fullname\",\"email\",\"pass\",\"affiliation\",\"twitter\",\"orcid\",\"pronouns\",\"required_checkbox\"],\"profileFields\":[\"fullname\",\"pass\",\"email\",\"affiliation\",\"twitter\",\"orcid\",\"pronouns\",\"required_checkbox\"],\"registerRoles\":[\"login-register:1018\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-18 11:14:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'TextformatterMarkdownExtra', '1', '', '2020-04-18 11:14:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'TracyDebugger', '3', '{\"enabled\":1,\"outputMode\":\"detect\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"collapse\":14,\"collapse_count\":7,\"maxAjaxRows\":3,\"reservedMemorySize\":500000,\"showFireLogger\":1,\"referencePageEdited\":1,\"linksNewTab\":\"\",\"logSeverity\":[],\"fromEmail\":\"\",\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[],\"hideDebugBarFrontendTemplates\":[],\"hideDebugBarBackendTemplates\":[],\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"barPosition\":\"bottom-right\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"nonToggleablePanels\":[],\"panelSelectorTracyTogglerButton\":1,\"editor\":\"vscode:\\/\\/file\\/%file:%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"snippetsPath\":\"templates\",\"consoleBackupLimit\":25,\"consoleCodePrefix\":\"\",\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, txt, log, htaccess\",\"fileEditorExcludedDirs\":\"site\\/assets\",\"aceTheme\":\"tomorrow_night_bright\",\"codeFontSize\":14,\"codeLineHeight\":24,\"codeShowInvisibles\":\"1\",\"codeTabSize\":4,\"codeUseSoftTabs\":\"1\",\"pwAutocompletions\":1,\"codeShowDescription\":1,\"customSnippetsUrl\":\"\",\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/processwire\\/setup\\/template\\/\",\"\\/processwire\\/setup\\/field\\/\",\"\\/processwire\\/setup\\/\",\"\\/processwire\\/module\\/\",\"\\/processwire\\/access\\/users\\/\",\"\\/processwire\\/access\\/roles\\/\",\"\\/processwire\\/access\\/permissions\\/\",\"\\/processwire\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"apiExplorerShowDescription\":1,\"apiExplorerToggleDocComment\":\"\",\"apiExplorerModuleClasses\":[],\"captainHookShowDescription\":1,\"captainHookToggleDocComment\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"pagePermissions\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":\"\",\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"dumpPanelTabs\":[\"debugInfo\",\"fullObject\"],\"validatorUrl\":\"https:\\/\\/html5.validator.nu\\/\",\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"customPhpCode\":\"\",\"userSwitcherSelector\":\"\",\"userSwitcherRestricted\":[],\"userSwitcherIncluded\":[],\"requestMethods\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\"],\"requestLoggerMaxLogs\":10,\"requestLoggerReturnType\":\"array\",\"styleWhere\":[\"backend\",\"frontend\"],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\n*.dev|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":[\"favicon\"],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barDumpBig\",\"bdb\",\"debugAll\",\"da\",\"dump\",\"d\",\"dumpBig\",\"db\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"apiDataVersion\":\"3.0.148\"}', '2020-04-18 11:17:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessTracyAdminer', '1', '', '2020-04-18 11:17:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'MarkupCache', '3', '{\"noExpire\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-18 11:18:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1024,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-19 10:24:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'InputfieldRepeater', '0', '', '2020-04-19 10:24:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'SimpleContactForm', '3', '{\"sendEmails\":1,\"emailSubject\":\"New Web Contact Form Submission\",\"emailTo\":\"info@simonduerr.eu\",\"emailServer\":\"noreply@server.com\",\"emailReplyTo\":\"\",\"saveMessages\":\"\",\"saveMessagesParent\":false,\"saveMessagesTemplate\":null,\"saveMessagesScheme\":[\"\"],\"allFields\":[\"fullname\",\"subject\",\"emailaddress\",\"body\"],\"addFields\":\"\",\"redirectSamePage\":1,\"redirectPage\":0,\"emailMessage\":\"\",\"antiSpamTimeMin\":1,\"antiSpamTimeMax\":300,\"antiSpamPerDay\":3,\"antiSpamExcludeIps\":\"127.0.0.1\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-04-19 15:50:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'SubscribeToMailchimp', '0', '{\"api_key\":\"0cf25d3d482dab572084532b811691f2-us4\",\"default_list\":\"a924e509dd\",\"double_opt_in\":1,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-05-17 09:05:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'InputfieldPageAutocomplete', '0', '', '2020-05-19 22:13:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'DraftsOptIn', '1', '', '2020-05-20 08:55:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'AllInOneMinify', '3', '{\"stylesheet_prefix\":\"css_\",\"javascript_prefix\":\"js_\",\"max_cache_lifetime\":\"2419200\",\"html_minify\":1,\"development_mode\":1,\"directory_traversal\":\"\",\"empty_cache\":\"Empty cache\",\"domain_sharding\":\"\",\"domain_sharding_ssl\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-06-04 19:14:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'Schedule', '1', '', '2020-06-08 20:38:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'LazyCron', '3', '', '2020-06-05 17:48:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'FieldtypeOptions', '1', '', '2020-06-21 11:23:43');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1134 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2020-06-07 14:52:06', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2020-04-18 11:08:16', '40', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2020-04-18 11:08:40', '40', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2020-04-18 11:08:55', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2020-04-18 11:08:53', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '64', 'http404', '1035', '2020-05-19 23:11:15', '41', '2020-04-18 11:07:43', '3', '2020-04-18 11:07:43', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2020-06-21 10:53:03', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '2', '2020-04-18 11:07:43', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '41', '2020-04-18 11:07:43', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2020-04-18 11:07:43', '40', '2020-04-18 11:07:43', '40', '2020-04-18 11:07:43', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2020-04-18 11:07:43', '40', '2020-04-18 11:07:43', '40', '2020-04-18 11:07:43', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2020-04-18 11:08:12', '40', '2020-04-18 11:08:12', '40', '2020-04-18 11:08:12', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2020-04-18 11:08:12', '40', '2020-04-18 11:08:12', '40', '2020-04-18 11:08:12', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '40', '2020-04-18 11:08:34', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '31', '5', 'page-edit-front', '1', '2020-04-18 11:09:50', '41', '2020-04-18 11:09:50', '41', '2020-04-18 11:09:50', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '22', '2', 'comments', '1', '2020-04-18 11:11:03', '41', '2020-04-18 11:11:03', '41', '2020-04-18 11:11:03', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '31', '5', 'comments-manager', '1', '2020-04-18 11:11:03', '41', '2020-04-18 11:11:03', '41', '2020-04-18 11:11:03', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '30', '4', 'login-register', '1', '2020-04-18 11:14:23', '41', '2020-04-18 11:14:23', '41', '2020-04-18 11:14:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '22', '2', 'adminer', '1', '2020-04-18 11:17:14', '41', '2020-04-18 11:17:14', '41', '2020-04-18 11:17:14', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1', '43', 'settings', '1025', '2020-06-21 12:06:19', '41', '2020-04-18 18:11:15', '41', '2020-04-18 18:11:15', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '2', '2', 'settings', '1', '2020-04-18 18:22:18', '41', '2020-04-18 18:11:36', '41', '2020-04-18 18:11:59', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '30', '4', 'editor', '1', '2020-06-08 20:38:42', '41', '2020-04-18 19:27:12', '41', '2020-04-18 19:27:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '2', '2', 'repeaters', '1036', '2020-04-19 10:24:10', '41', '2020-04-19 10:24:10', '41', '2020-04-19 10:24:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1024', '2', 'for-field-113', '17', '2020-04-19 10:26:17', '41', '2020-04-19 10:26:17', '41', '2020-04-19 10:26:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1025', '2', 'for-page-1020', '17', '2020-04-19 10:32:02', '41', '2020-04-19 10:32:02', '41', '2020-04-19 10:32:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1026', '44', '1587285127-1179-1', '1', '2020-04-19 10:54:42', '41', '2020-04-19 10:32:07', '41', '2020-04-19 10:32:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1026', '44', '1587285145-6766-1', '1', '2020-04-19 10:54:42', '41', '2020-04-19 10:32:25', '41', '2020-04-19 10:32:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1024', '2', 'for-field-119', '17', '2020-04-19 11:14:39', '41', '2020-04-19 11:14:39', '41', '2020-04-19 11:14:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1024', '2', 'for-field-115', '17', '2020-04-19 10:42:24', '41', '2020-04-19 10:42:24', '41', '2020-04-19 10:42:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1029', '2', 'for-page-1020', '17', '2020-04-19 10:51:41', '41', '2020-04-19 10:51:41', '41', '2020-04-19 10:51:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1030', '45', '1587286460-968-1', '1', '2020-06-05 15:22:29', '41', '2020-04-19 10:54:20', '41', '2020-04-19 10:54:42', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1024', '2', 'for-field-120', '17', '2020-04-19 11:15:02', '41', '2020-04-19 11:15:02', '41', '2020-04-19 11:15:02', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1', '48', 'faq', '1', '2020-04-19 11:55:25', '41', '2020-04-19 11:16:40', '41', '2020-04-19 11:17:52', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1032', '2', 'for-page-1034', '17', '2020-04-19 11:16:40', '41', '2020-04-19 11:16:40', '41', '2020-04-19 11:16:40', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1035', '46', '1587287804-3552-1', '1', '2020-04-19 11:45:48', '41', '2020-04-19 11:16:44', '41', '2020-04-19 11:17:52', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1033', '2', 'for-page-1036', '17', '2020-04-19 11:16:44', '41', '2020-04-19 11:16:44', '41', '2020-04-19 11:16:44', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1037', '47', '1587287809-4103-1', '1', '2020-04-19 11:40:31', '41', '2020-04-19 11:16:49', '41', '2020-04-19 11:17:52', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1037', '47', '1587287820-6928-1', '1', '2020-04-19 11:40:31', '41', '2020-04-19 11:17:00', '41', '2020-04-19 11:17:52', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1035', '46', '1587287829-7986-1', '1', '2020-04-19 11:40:31', '41', '2020-04-19 11:17:09', '41', '2020-04-19 11:17:52', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1033', '2', 'for-page-1040', '17', '2020-04-19 11:17:09', '41', '2020-04-19 11:17:09', '41', '2020-04-19 11:17:09', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1041', '47', '1587287832-2211-1', '1', '2020-04-19 11:40:31', '41', '2020-04-19 11:17:12', '41', '2020-04-19 11:17:52', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1037', '47', '1587289531-9277-1', '1', '2020-04-19 11:45:48', '41', '2020-04-19 11:45:31', '41', '2020-04-19 11:45:48', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1', '29', 'about', '1', '2020-06-05 16:50:43', '41', '2020-04-19 12:20:09', '41', '2020-04-19 12:20:09', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1', '51', 'schedule', '1', '2020-06-04 19:17:49', '41', '2020-04-19 16:49:16', '41', '2020-04-19 16:49:16', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1', '55', 'posters', '1', '2020-06-04 19:17:44', '41', '2020-04-19 19:46:10', '41', '2020-04-19 19:46:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1', '56', 'api', '1061', '2020-06-04 19:11:09', '41', '2020-04-20 19:00:13', '41', '2020-04-20 19:00:13', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1', '57', 'sign-in', '1061', '2020-04-20 21:31:07', '41', '2020-04-20 21:30:59', '41', '2020-04-20 21:30:59', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '31', '5', 'schedule', '1', '2020-06-08 20:38:19', '41', '2020-06-08 20:38:19', '41', '2020-06-08 20:38:19', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1', '58', 'json', '1057', '2020-06-21 12:10:58', '41', '2020-04-28 14:45:59', '41', '2020-04-28 14:45:59', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1', '59', 'submit-contribution', '1057', '2020-05-19 22:10:04', '41', '2020-05-11 18:44:53', '41', '2020-05-11 18:44:53', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1', '54', 'contributions', '1057', '2020-06-04 19:10:48', '41', '2020-05-11 20:17:08', '41', '2020-05-11 20:17:08', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1058', '54', 'saved', '1', '2020-05-11 20:18:34', '41', '2020-05-11 20:18:34', '41', '2020-05-11 20:18:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1058', '54', 'submitted', '1', '2020-05-11 20:18:53', '41', '2020-05-11 20:18:53', '41', '2020-05-11 20:18:53', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1061', '1058', '54', 'declined', '1', '2020-06-04 19:10:21', '41', '2020-05-11 20:20:17', '41', '2020-05-11 20:20:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '1084', '52', 'test-1', '1', '2020-06-05 15:15:07', '41', '2020-05-11 21:21:35', '41', '2020-05-11 21:21:35', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1078', '1084', '52', 'speaker-test-1', '1', '2020-06-05 15:16:25', '41', '2020-05-15 18:11:21', '41', '2020-05-15 18:11:21', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1079', '1084', '52', 'submitted-test-new', '1', '2020-06-05 15:13:15', '41', '2020-05-15 18:13:25', '41', '2020-05-15 18:13:25', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1080', '1084', '52', 'i-saved-this-', '1', '2020-06-05 15:14:18', '41', '2020-05-15 18:18:06', '41', '2020-05-15 18:18:06', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1', '60', 'edit-contribution', '1057', '2020-05-19 22:09:37', '41', '2020-05-15 18:24:19', '41', '2020-05-15 18:24:19', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1084', '50', 'testname', '1', '2020-06-17 21:25:10', '41', '2020-05-16 11:09:17', '41', '2020-05-16 11:09:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1083', '1084', '50', 'testname-1', '1', '2020-06-17 21:25:10', '41', '2020-05-16 11:10:56', '41', '2020-05-16 11:10:56', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '1', '54', 'tags', '1057', '2020-05-19 22:08:57', '41', '2020-05-16 12:37:01', '41', '2020-05-16 12:37:01', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1084', '1058', '54', 'accepted', '1', '2020-05-21 12:57:34', '41', '2020-05-16 11:53:57', '41', '2020-05-16 11:54:24', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '1087', '54', 'computational', '1', '2020-05-16 12:37:17', '41', '2020-05-16 12:37:17', '41', '2020-05-16 12:37:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1089', '1087', '54', 'experimental', '1', '2020-05-16 12:37:24', '41', '2020-05-16 12:37:24', '41', '2020-05-16 12:37:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1090', '1087', '54', 'qm', '1', '2020-05-16 12:37:28', '41', '2020-05-16 12:37:28', '41', '2020-05-16 12:37:28', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1091', '1087', '54', 'long-tag', '1', '2020-05-16 13:45:22', '41', '2020-05-16 13:45:22', '41', '2020-05-16 13:45:22', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1092', '1087', '54', 'quantum-mechanics', '1', '2020-05-16 13:45:37', '41', '2020-05-16 13:45:37', '41', '2020-05-16 13:45:37', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1093', '1087', '54', 'molecular-mechanics', '1', '2020-05-16 13:45:49', '41', '2020-05-16 13:45:49', '41', '2020-05-16 13:45:49', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1087', '54', 'molecular-dynamics', '1', '2020-05-16 13:45:59', '41', '2020-05-16 13:45:59', '41', '2020-05-16 13:45:59', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1087', '54', 'metadynamics', '1', '2020-05-16 13:46:08', '41', '2020-05-16 13:46:08', '41', '2020-05-16 13:46:08', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1096', '1087', '54', 'enhanced-sampling', '1', '2020-05-16 13:46:17', '41', '2020-05-16 13:46:17', '41', '2020-05-16 13:46:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1110', '1', '54', 'footer', '1061', '2020-06-07 14:52:06', '41', '2020-05-19 22:10:18', '41', '2020-05-19 22:10:18', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1111', '1110', '62', 'code-of-conduct', '1', '2020-05-19 22:16:32', '41', '2020-05-19 22:10:41', '41', '2020-05-19 22:14:59', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1112', '1110', '62', 'privacy-policy', '1', '2020-05-19 22:32:58', '41', '2020-05-19 22:17:41', '41', '2020-05-19 22:20:07', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1113', '1024', '2', 'for-field-157', '17', '2020-05-19 22:35:13', '41', '2020-05-19 22:35:13', '41', '2020-05-19 22:35:13', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1114', '1113', '2', 'for-page-1020', '17', '2020-05-19 22:41:08', '41', '2020-05-19 22:41:08', '41', '2020-05-19 22:41:08', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1115', '1114', '63', '1589920873-6939-1', '1', '2020-05-19 23:19:38', '41', '2020-05-19 22:41:13', '41', '2020-05-19 22:41:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1116', '1084', '52', 'asdasd', '1', '2020-06-05 17:46:41', '41', '2020-05-19 23:34:22', '41', '2020-05-19 23:34:22', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1117', '1084', '50', 'my-poster', '1', '2020-06-17 21:25:10', '41', '2020-05-19 23:35:01', '41', '2020-05-19 23:35:01', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1118', '2', '2', 'manage-submissions', '1', '2020-05-20 08:55:28', '41', '2020-05-20 08:55:28', '41', '2020-05-20 08:55:28', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1119', '31', '5', 'manage-submissions', '1', '2020-05-20 08:55:28', '41', '2020-05-20 08:55:28', '41', '2020-05-20 08:55:28', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1125', '1084', '52', 'sadas', '1', '2020-06-05 15:02:10', '41', '2020-05-22 19:59:46', '41', '2020-05-22 19:59:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '2', '2', 'schedule', '1', '2020-06-08 20:38:19', '41', '2020-06-08 20:38:19', '41', '2020-06-08 20:38:19', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1124', '1084', '52', 'und-endlich-kam-der-tag-der-tage', '1', '2020-06-05 16:29:05', '41', '2020-05-21 22:32:03', '1123', '2020-05-21 22:32:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1127', '1', '65', 'comments', '1029', '2020-06-04 19:10:35', '41', '2020-06-01 20:12:37', '41', '2020-06-01 20:12:37', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1128', '1', '66', 'speakers', '1', '2020-06-05 16:47:46', '41', '2020-06-04 19:31:35', '41', '2020-06-04 19:31:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1129', '1084', '50', 'a-talk-on-something-i-want-to-present-at-a-virtual-conference', '1', '2020-06-17 21:25:10', '41', '2020-06-05 14:36:21', '41', '2020-06-05 14:36:21', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1130', '1084', '50', 'another-talk-on-this-topic', '1', '2020-06-17 21:25:10', '41', '2020-06-05 14:39:38', '41', '2020-06-05 14:39:38', '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2020-04-18 11:07:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2020-04-18 11:08:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2020-04-18 11:08:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2020-04-18 11:08:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '2', '2020-04-18 11:09:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '2', '2020-04-18 11:11:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2020-04-18 11:14:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2020-04-18 18:11:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2020-04-18 19:27:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '2', '2020-04-19 10:32:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2020-04-19 10:32:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2020-04-19 10:54:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '1', '2020-04-19 11:16:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2020-04-19 11:16:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2020-04-19 11:16:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '2', '2020-04-19 11:17:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2020-04-19 11:17:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '2', '2020-04-19 11:17:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '2', '2020-04-19 11:45:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '1', '2020-04-19 12:20:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '1', '2020-04-19 16:49:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '1', '2020-04-19 19:46:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '1', '2020-04-20 19:00:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2020-04-20 21:30:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2020-04-28 14:45:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2020-05-11 18:44:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2020-05-11 20:17:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2020-05-11 20:18:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2020-05-11 20:18:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '1', '2020-05-11 20:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1076', '1', '2020-05-11 21:21:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '1', '2020-05-15 18:11:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '1', '2020-05-15 18:13:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '1', '2020-05-15 18:18:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '1', '2020-05-15 18:24:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '1', '2020-05-16 11:09:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '1', '2020-05-16 11:10:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '1', '2020-05-16 11:53:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '1', '2020-05-16 12:37:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1088', '1', '2020-05-16 12:37:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1089', '1', '2020-05-16 12:37:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1090', '1', '2020-05-16 12:37:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1091', '1', '2020-05-16 13:45:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '1', '2020-05-16 13:45:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '1', '2020-05-16 13:45:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1094', '1', '2020-05-16 13:45:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '1', '2020-05-16 13:46:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1096', '1', '2020-05-16 13:46:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '2', '2020-06-08 20:38:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1110', '1', '2020-05-19 22:10:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1111', '1', '2020-05-19 22:10:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1112', '1', '2020-05-19 22:17:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1115', '2', '2020-05-19 22:41:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2020-05-19 23:11:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1116', '1', '2020-05-19 23:34:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1117', '1', '2020-05-19 23:35:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1119', '2', '2020-05-20 08:55:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '1', '2020-05-22 19:59:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1124', '1', '2020-05-21 22:32:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '1', '2020-06-01 20:12:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1128', '1', '2020-06-04 19:31:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1129', '1', '2020-06-05 14:36:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '1', '2020-06-05 14:39:38');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1025', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1026', '1025');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1029', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1029', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '1029');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1033');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1041', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1041', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1041', '1033');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1084', '1058');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1113', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1113', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1114', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1114', '1024');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1114', '1113');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1577984776,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1587502385}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '3600', '{\"useRoles\":1,\"editRoles\":[1023],\"addRoles\":[1023],\"createRoles\":[1023],\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"useCacheForUsers\":1,\"label\":\"Home\",\"modified\":1591533302,\"ns\":\"ProcessWire\",\"roles\":[37,1018,1023]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'about', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Generic Page with Contact Form and three boxes.\",\"modified\":1591534303,\"ns\":\"ProcessWire?>\\n\\n\\n\\n<header class=\\\"bg-white\\\" pw-replace=\\\"header\\\">\\n  <div class=\\\"max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8\\\">\\n    <h1 class=\\\"px-4 sm:px-6 text-2xl font-bold leading-tight text-gray-900\\\">\\n      <?=$settings->conference_title?>\\n    <\\/h1>\\n    <span class=\\\"px-4 sm:px-6 text-black font-bold mt-2 text-red-600 text-lg\\\" > <?=$home->subtitle?>\\n    \\n<\\/span>\\n  <\\/div>\\n<\\/header>\\n\\n\\n\\n<main pw-replace=\\\"main\\\">\\n  <div class=\\\"bg-gray-200 mt-2 pb-8\\\">\\n    <div class=\\\"max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-wrap lg:flex-no-wrap align-top\\\">\\n      <div class=\\\"w-full <?php if ($settings->twitter!=\'\'){echo \\\"lg:w-2\\/3\\\"\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'settings', '97', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"allowChangeUser\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"noMove\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"modified\":1591534122,\"tabContent\":\"General Configuration\",\"nameLabel\":\"Do not change me\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'repeater_deadline', '98', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1587284777}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'repeater_organizers', '99', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1587285744}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'repeater_faq', '100', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1587287679}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_faq_section', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1587287702}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'faq', '102', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"useCacheForUsers\":1,\"label\":\"FAQ\",\"modified\":1592726232,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'talk', '104', '0', '0', '{\"parentTemplates\":[54],\"slashUrls\":1,\"pageLabelField\":\"fa-users title\",\"compile\":3,\"label\":\"Oral\",\"modified\":1592734947,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'schedule', '105', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"useCacheForUsers\":1,\"label\":\"Schedule Vue Single Page App\",\"modified\":1592733549,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'poster', '106', '0', '0', '{\"parentTemplates\":[54],\"urlSegments\":1,\"slashUrls\":1,\"altFilename\":\"poster-comments\",\"pageLabelField\":\"fa-file-o title\",\"compile\":3,\"label\":\"Poster\",\"modified\":1591534235,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'category', '108', '0', '0', '{\"parentTemplates\":[54],\"slashUrls\":1,\"compile\":3,\"label\":\"Category\\/Tag\",\"modified\":1591533163}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'submit', '113', '0', '0', '{\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Submit Contribution\",\"modified\":1591291314,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'api', '110', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-cubes title\",\"compile\":3,\"modified\":1591204012,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'signin', '111', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"label\":\"Sign In\",\"modified\":1592729949,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'json', '112', '0', '600', '{\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"useCacheForUsers\":1,\"label\":\"JSON (Posters\\/Talk)\",\"modified\":1592734249,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"contentType\":\"json\",\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'edit', '114', '0', '0', '{\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Edit Contribution\",\"modified\":1592726775,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('62', 'basic-page', '116', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Generic Page\",\"modified\":1589921655,\"ns\":\"ProcessWire?>\\n\\n\\n\\n<header class=\\\"bg-white\\\" pw-replace=\\\"header\\\">\\n        <div class=\\\"max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-8 lg:px-10 h-12\\\">\\n        \\n        <\\/div>\\n      <\\/header>\\n\\n\\n\\n<main pw-replace=\\\"main\\\">\\n            <div class=\\\"bg-gray-200 mt-2 pb-8\\\">\\n\\n          <div class=\\\"max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-wrap lg:flex-no-wrap align-top\\\">\\n           \\n            \\n\\t\\t\\t<div class=\\\"w-full <?php if ($settings->twitter!=\'\'){echo \\\"lg:w-2\\/3\\\"\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('63', 'repeater_page_ref_hyperlink_url', '117', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1589920512}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('64', '404', '118', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"modified\":1591534274,\"ns\":\"ProcessWire?>\\n\\n\\n\\n<header class=\\\"bg-white\\\" pw-replace=\\\"header\\\">\\n        <div class=\\\"max-w-7xl mx-auto pt-4 px-4 mb-4 sm:px-8 lg:px-10 h-12\\\">\\n        \\n        <\\/div>\\n      <\\/header>\\n\\n\\n\\n<main pw-replace=\\\"main\\\">\\n            <div class=\\\"bg-gray-200 mt-2 pb-8\\\">\\n\\n          <div class=\\\"max-w-7xl mx-auto py-6 px-1 sm:px-6 lg:px-8 flex flex-wrap lg:flex-no-wrap align-top justify-center\\\">\\n           \\n            \\n\\t\\t\\t<div class=\\\"w-full sm:w-1\\/2 \\\">\\n             \\n              <div class=\\\"bg-white shadow overflow-hidden sm:rounded-lg relative flex-grow-0\\\">\\n                <div class=\\\"px-4 py-5 border-b border-gray-200 sm:px-6\\\">\\n                    <h3 class=\\\"text-lg leading-6 font-medium text-gray-900\\\">\\n\\t\\t\\t\\t\\t<?php echo $page->edit(\'title\')\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'poster-list', '109', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"label\":\"Poster Vue Single Page App\",\"modified\":1592733945,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('65', 'poster-comments', '119', '0', '0', '{\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Fetch Poster Comments\",\"modified\":1591533626,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('66', 'speakers', '120', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"label\":\"Speakers\",\"modified\":1592726513,\"ns\":\"ProcessWire?>\\r\\n\\r\\n<pw-region pw-replace=\\\"headerscript\\\">\\r\\n\\r\\n<\\/pw-region>\\r\\n\\r\\n<header class=\\\"bg-white\\\" pw-replace=\\\"header\\\">\\r\\n  <div class=\\\"max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8\\\">\\r\\n    <h1 class=\\\"px-0 sm:px-6 text-2xl font-bold leading-tight text-gray-900\\\">\\r\\n      Speakers\\r\\n    <\\/h1>\\r\\n    <span class=\\\"px-0 sm:px-6 text-red-600 font-bold mt-2 text-lg\\\"> <?=$settings->conference_title?>\\r\\n      <?=$home->subtitle?>\\r\\n  <\\/div>\\r\\n<\\/header>\\r\\n\\r\\n<main pw-replace=\\\"main\\\">\\r\\n  <div class=\\\"bg-gray-200 mt-2 pb-8\\\">\\r\\n    <div class=\\\"max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 flex flex-no-wrap align-top\\\">\\r\\n      <div class=\\\"grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-4 gap-4\\\">\\r\\n        <?php\\r\\n            $talks=$pages->find(\\\"template=talk, scheduled=1, sort=category\\\")\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":90,"numCreateTables":96,"numInserts":949,"numSeconds":0}