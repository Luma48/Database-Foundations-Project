SET search_path TO "df_project_group_110";


-- multivalued attribute table
CREATE TABLE EmailAddress (
    Email VARCHAR(50) PRIMARY KEY,
    Student_Id SERIAL,  -- Assuming Student_Id is a foreign key referencing STUDENT table
    Employee_Id SMALLINT,    -- Assuming Employee_Id is a foreign key referencing Employee table
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
) ;
INSERT INTO EmailAddress (Email, Student_Id, Employee_Id) values
  ('hcuffin0@engadget.com', 1, 1) , 
  ('lpreuvost1@wufoo.com', 2, 2) , 
  ('egiorgeschi2@shop-pro.jp', 3, 3) , 
  ('ehoggan3@booking.com', 4, 4) , 
  ('kvasovic4@sciencedirect.com', 5, 5) , 
  ('lovey5@bing.com', 6, 6) , 
  ('rhuson6@tinyurl.com', 7, 7) , 
  ('ibeasant7@microsoft.com', 8, 8) , 
  ('mmattheis8@mediafire.com', 9, 9) , 
  ('agurling9@google.com.hk', 10, 10) , 
  ('dcarringtona@gravatar.com', 11, 11) , 
  ('lnarupb@wikia.com', 12, 12) , 
  ('mcameranac@ocn.ne.jp', 13, 13) , 
  ('csindelld@so-net.ne.jp', 14, 14) , 
  ('mjolliee@epa.gov', 15, 15) , 
  ('kgahaganf@pbs.org', 16, 16) , 
  ('omouldingg@webmd.com', 17, 17) , 
  ('bstatersfieldh@slate.com', 18, 18) , 
  ('temsdeni@cisco.com', 19, 19) , 
  ('skensyj@imageshack.us', 20, 20) , 
  ('hadamek@gravatar.com', 21, 21) , 
  ('dmartschikl@wix.com', 22, 22) , 
  ('jtollettm@hibu.com', 23, 23) , 
  ('epaddefieldn@skyrock.com', 24, 24) , 
  ('fwallero@naver.com', 25, 25) , 
  ('pshevlanp@google.co.jp', 26, 26) , 
  ('mmatthewsq@webeden.co.uk', 27, 27) , 
  ('imocquerr@technorati.com', 28, 28) , 
  ('cchecos@prweb.com', 29, 29) , 
  ('sbauldreyt@vimeo.com', 30, 30) , 
  ('mbuckstonu@purevolume.com', 31, 31) , 
  ('osailev@europa.eu', 32, 32) , 
  ('kmoffatw@nytimes.com', 33, 33) , 
  ('ahurtx@census.gov', 34, 34) , 
  ('tmatterseyy@java.com', 35, 35) , 
  ('rhardenz@goo.gl', 36, 36) , 
  ('aquartermaine10@networkadvertising.org', 37, 37) , 
  ('agoacher11@dropbox.com', 38, 38) , 
  ('tlanchbery12@google.es', 39, 39) , 
  ('djoutapavicius13@gravatar.com', 40, 40) , 
  ('clebarr14@barnesandnoble.com', 41, 41) , 
  ('cbeine15@cornell.edu', 42, 42) , 
  ('erubinowicz16@creativecommons.org', 43, 43) , 
  ('ebrameld17@issuu.com', 44, 44) , 
  ('farlott18@prnewswire.com', 45, 45) , 
  ('onarramor19@webs.com', 46, 46) , 
  ('bwherry1a@flickr.com', 47, 47) , 
  ('fasher1b@naver.com', 48, 48) , 
  ('mtowey1c@mashable.com', 49, 49) , 
  ('zconring1d@latimes.com', 50, 50) , 
  ('fpoltun1e@miitbeian.gov.cn', 51, 51) , 
  ('imoston1f@privacy.gov.au', 52, 52) , 
  ('amcgahy1g@europa.eu', 53, 53) , 
  ('amckevany1h@acquirethisname.com', 54, 54) , 
  ('doshee1i@youku.com', 55, 55) , 
  ('cespadate1j@lulu.com', 56, 56) , 
  ('mwingar1k@techcrunch.com', 57, 57) , 
  ('akirton1l@flickr.com', 58, 58) , 
  ('randrioni1m@cornell.edu', 59, 59) , 
  ('gavann1n@msn.com', 60, 60) , 
  ('dchinnock1o@webs.com', 61, 61) , 
  ('khansford1p@altervista.org', 62, 62) , 
  ('epolly1q@utexas.edu', 63, 63) , 
  ('spoad1r@friendfeed.com', 64, 64) , 
  ('hsaipy1s@msu.edu', 65, 65) , 
  ('obrittle1t@woothemes.com', 66, 66) , 
  ('lbauckham1u@bluehost.com', 67, 67) , 
  ('mballston1v@yale.edu', 68, 68) , 
  ('smetterick1w@ustream.tv', 69, 69) , 
  ('gmorde1x@oakley.com', 70, 70) , 
  ('mcavey1y@aol.com', 71, 71) , 
  ('atakle1z@devhub.com', 72, 72) , 
  ('abullough20@cbc.ca', 73, 73) , 
  ('mrembrandt21@amazonaws.com', 74, 74) , 
  ('nmoorrud22@google.co.jp', 75, 75) , 
  ('lemanson23@bloglovin.com', 76, 76) , 
  ('neloy24@csmonitor.com', 77, 77) , 
  ('cdorward25@ask.com', 78, 78) , 
  ('klouche26@acquirethisname.com', 79, 79) , 
  ('nrubrow27@etsy.com', 80, 80) , 
  ('breuther28@youtube.com', 81, 81) , 
  ('cegre29@123-reg.co.uk', 82, 82) , 
  ('acolkett2a@sitemeter.com', 83, 83) , 
  ('tpaolinelli2b@goodreads.com', 84, 84) , 
  ('lwitton2c@joomla.org', 85, 85) , 
  ('gsangra2d@unblog.fr', 86, 86) , 
  ('apendle2e@bandcamp.com', 87, 87) , 
  ('lshoute2f@paginegialle.it', 88, 88) , 
  ('jvertey2g@tiny.cc', 89, 89) , 
  ('sluce2h@ft.com', 90, 90) , 
  ('sdielhenn2i@thetimes.co.uk', 91, 91) , 
  ('fcurnick2j@e-recht24.de', 92, 92) , 
  ('bfiloniere2k@biglobe.ne.jp', 93, 93) , 
  ('jaarons2l@behance.net', 94, 94) , 
  ('jbasillon2m@unesco.org', 95, 95) , 
  ('clewsy2n@163.com', 96, 96) , 
  ('kwhatford2o@bluehost.com', 97, 97) , 
  ('ctaillard2p@smh.com.au', 98, 98) , 
  ('dgration2q@elegantthemes.com', 99, 99) , 
  ('mrastall2r@bigcartel.com', 100, 100) , 
  ('mohrtmann2s@github.com', 101, 101) , 
  ('vrainsdon2t@tuttocitta.it', 102, 102) , 
  ('cjedrzejczak2u@sciencedaily.com', 103, 103) , 
  ('mjilliss2v@yelp.com', 104, 104) , 
  ('cbehan2w@vkontakte.ru', 105, 105) , 
  ('clenham2x@google.com.hk', 106, 106) , 
  ('lmcneill2y@zimbio.com', 107, 107) , 
  ('faylin2z@vistaprint.com', 108, 108) , 
  ('acrosier30@alexa.com', 109, 109) , 
  ('lpheasey31@hostgator.com', 110, 110) , 
  ('cpinnell32@spotify.com', 111, 111) , 
  ('cstillgoe33@gizmodo.com', 112, 112) , 
  ('efairlie34@paypal.com', 113, 113) , 
  ('jgarlee35@usgs.gov', 114, 114) , 
  ('cbwye36@spiegel.de', 115, 115) , 
  ('arimbault37@businessinsider.com', 116, 116) , 
  ('cbruggeman38@deliciousdays.com', 117, 117) , 
  ('jauckland39@list-manage.com', 118, 118) , 
  ('jbrosoli3a@marketwatch.com', 119, 119) , 
  ('ndubock3b@com.com', 120, 120) , 
  ('hstockau3c@uol.com.br', 121, 121) , 
  ('vbroggini3d@arstechnica.com', 122, 122) , 
  ('ehumbee3e@php.net', 123, 123) , 
  ('kskirlin3f@free.fr', 124, 124) , 
  ('vovery3g@nih.gov', 125, 125) , 
  ('areaman3h@bluehost.com', 126, 126) , 
  ('cpallin3i@angelfire.com', 127, 127) , 
  ('cmcfie3j@qq.com', 128, 128) , 
  ('psimpole3k@pbs.org', 129, 129) , 
  ('sjentle3l@instagram.com', 130, 130) , 
  ('vhubbis3m@newyorker.com', 131, 131) , 
  ('mmargarson3n@go.com', 132, 132) , 
  ('dmaasz3o@seesaa.net', 133, 133) , 
  ('dvallender3p@ox.ac.uk', 134, 134) , 
  ('wseawell3q@pinterest.com', 135, 135) , 
  ('fmulliss3r@homestead.com', 136, 136) , 
  ('mbendel3s@uol.com.br', 137, 137) , 
  ('fcrome3t@google.fr', 138, 138) , 
  ('tbrownill3u@yelp.com', 139, 139) , 
  ('afordham3v@redcross.org', 140, 140) , 
  ('bsampey3w@exblog.jp', 141, 141) , 
  ('eboice3x@aboutads.info', 142, 142) , 
  ('ctiler3y@skype.com', 143, 143) , 
  ('btyrie3z@china.com.cn', 144, 144) , 
  ('pastin40@apple.com', 145, 145) , 
  ('khuntingford41@chron.com', 146, 146) , 
  ('aaddionizio42@gravatar.com', 147, 147) , 
  ('tszachniewicz43@livejournal.com', 148, 148) , 
  ('sjeskin44@pinterest.com', 149, 149) , 
  ('ggoudy45@chronoengine.com', 150, 150) , 
  ('mosuaird46@bloglovin.com', 151, 151) , 
  ('kcourtenay47@drupal.org', 152, 152) , 
  ('dbyfield48@dot.gov', 153, 153) , 
  ('mlee49@marketwatch.com', 154, 154) , 
  ('alennarde4a@lulu.com', 155, 155) , 
  ('clegg4b@rambler.ru', 156, 156) , 
  ('cturvie4c@home.pl', 157, 157) , 
  ('radamik4d@wp.com', 158, 158) , 
  ('lhainge4e@nydailynews.com', 159, 159) , 
  ('hglander4f@addthis.com', 160, 160) , 
  ('jbrisley4g@hugedomains.com', 161, 161) , 
  ('amaughan4h@bbb.org', 162, 162) , 
  ('dbickerton4i@alibaba.com', 163, 163) , 
  ('sfrankum4j@smugmug.com', 164, 164) , 
  ('laxup4k@state.gov', 165, 165) , 
  ('gbourgourd4l@purevolume.com', 166, 166) , 
  ('jpoltun4m@techcrunch.com', 167, 167) , 
  ('abarhams4n@sohu.com', 168, 168) , 
  ('vmathouse4o@accuweather.com', 169, 169) , 
  ('twratten4p@nsw.gov.au', 170, 170) , 
  ('kranahan4q@histats.com', 171, 171) , 
  ('bwooler4r@feedburner.com', 172, 172) , 
  ('lsieb4s@usgs.gov', 173, 173) , 
  ('hkauffman4t@ca.gov', 174, 174) , 
  ('hbelderson4u@themeforest.net', 175, 175) , 
  ('gtregien4v@bing.com', 176, 176) , 
  ('pryton4w@themeforest.net', 177, 177) , 
  ('rfinessy4x@desdev.cn', 178, 178) , 
  ('ljosey4y@smugmug.com', 179, 179) , 
  ('sfearney4z@walmart.com', 180, 180) , 
  ('lswin50@1688.com', 181, 181) , 
  ('srowet51@delicious.com', 182, 182) , 
  ('ewickrath52@loc.gov', 183, 183) , 
  ('askatcher53@goo.gl', 184, 184) , 
  ('ofake54@who.int', 185, 185) , 
  ('eswaine55@ow.ly', 186, 186) , 
  ('msuggett56@nymag.com', 187, 187) , 
  ('ffalkner57@indiegogo.com', 188, 188) , 
  ('bsmeall58@blogtalkradio.com', 189, 189) , 
  ('dpesic59@geocities.jp', 190, 190) , 
  ('ashipsey5a@businessweek.com', 191, 191) , 
  ('fchessill5b@amazon.de', 192, 192) , 
  ('kmaudling5c@rakuten.co.jp', 193, 193) , 
  ('fmuress5d@jalbum.net', 194, 194) , 
  ('bgrimstead5e@google.com', 195, 195) , 
  ('eollington5f@chicagotribune.com', 196, 196) , 
  ('uannable5g@technorati.com', 197, 197) , 
  ('cmatias5h@mac.com', 198, 198) , 
  ('ndunkerley5i@plala.or.jp', 199, 199) , 
  ('sabdon5j@ucla.edu', 200, 200) , 
  ('bcolby5k@creativecommons.org', 201, 201) , 
  ('pleacy5l@printfriendly.com', 202, 202) , 
  ('dthackston5m@digg.com', 203, 203) , 
  ('nmatyushkin5n@acquirethisname.com', 204, 204) , 
  ('ncressy5o@photobucket.com', 205, 205) , 
  ('sbispham5p@mail.ru', 206, 206) , 
  ('mstanislaw5q@shinystat.com', 207, 207) , 
  ('njosefer5r@bing.com', 208, 208) , 
  ('movenell5s@sina.com.cn', 209, 209) , 
  ('asand5t@unblog.fr', 210, 210) , 
  ('jmelan5u@typepad.com', 211, 211) , 
  ('mbickford5v@google.com.au', 212, 212) , 
  ('rsotheron5w@ft.com', 213, 213) , 
  ('eshire5x@abc.net.au', 214, 214) , 
  ('aperassi5y@mozilla.org', 215, 215) , 
  ('plimeburn5z@discuz.net', 216, 216) , 
  ('aquainton60@google.ru', 217, 217) , 
  ('edohmer61@instagram.com', 218, 218) , 
  ('cturfs62@desdev.cn', 219, 219) , 
  ('nkerbler63@engadget.com', 220, 220) , 
  ('fcosans64@bbc.co.uk', 221, 221) , 
  ('aconcannon65@cisco.com', 222, 222) , 
  ('tbrokenshire66@economist.com', 223, 223) , 
  ('rbeenham67@friendfeed.com', 224, 224) , 
  ('vtriner68@msu.edu', 225, 225) , 
  ('aswanbourne69@linkedin.com', 226, 226) , 
  ('hwylam6a@jigsy.com', 227, 227) , 
  ('ktomkys6b@goo.ne.jp', 228, 228) , 
  ('zhurring6c@sitemeter.com', 229, 229) , 
  ('vrobken6d@netscape.com', 230, 230) , 
  ('zbatters6e@wsj.com', 231, 231) , 
  ('pmicka6f@pbs.org', 232, 232) , 
  ('trenals6g@skyrock.com', 233, 233) , 
  ('lstibbs6h@virginia.edu', 234, 234) , 
  ('odukes6i@mail.ru', 235, 235) , 
  ('wdudderidge6j@aol.com', 236, 236) , 
  ('ptoy6k@newsvine.com', 237, 237) , 
  ('cheasman6l@tripod.com', 238, 238);