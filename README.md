###CODE_2015 CSTMC

####Notes
please refers **[previously to my helper code](https://github.com/guinslym/cstmc_helper_to_parse_the_dataset)** that helped me parse the datasets

The website are hosted on Heroku. [https://cstmc2015.herokuapp.com/](https://cstmc2015.herokuapp.com/). All the images are the original one, meaning that the  images can be up to 12 mb so that's why when we do a query, the page is slow to render, but the query is pretty fast.

###Code
**My code is Messy :)** but if it woks for 15 minutes, that's probably what I needed.

###update
on March 3rd I have reviewed my code so the commits after **e8480a63** are the updated version of the app and the one before are the one at the **#CODE2015** (Ottawa)

#Usage
	Mongodb (and Mongolabs add:on on heroku)
	rails 4.x

##installation
	bundle install
	rake db:create
	rake db:migrate
	rake db:seed #this might take a while...trust me!!!
	guard

##todo
Javascript; filtering the content.

licence MIT or 

Credits/or helpers that I use to help me build the app:--

[CSTMC Datasets](http://techno-science.ca/) --

[Bootstrap](http://www.bootstrapcdn.com/) for templating--

[Codyhouse](http://codyhouse.co/) for the [filter template](http://codyhouse.co/gem/content-filter/) --

[Loading Icon from SmallEnvelop](http://smallenvelop.com/display-loading-icon-page-loads-completely/)
	
