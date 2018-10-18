# Project 1: Current Conflicts in the World

### Link
https://conflicts.herokuapp.com/

## Description

Project 1 of WDI 29.

Although its pretty peaceful here in Australia, there are still many conflicts going on around the world.  See where fighting is still going on, and why?

Using a Ruby on Rails and Bootstrap, this is a simple database representing selected conflicts around the world.  Using the Google Maps API, a world map is generated with corresponding conflict markers.

* Gems used Cloudinary, Bootstrap, gmaps4rails.

* Uses Google map API.


Listed Conflicts:
![all conflicts](/images/conflicts_index.png)

Continents page:
![all continents](/images/continents_index.png)




### Issues

CSS/Bootstrap not being applied to static home page.

All users can delete conflicts.  Possibly require a user_id field in conflicts table to only allow the creator to delete a conflict.

When creating a new conflict, Cloudinary mutates path so not usable by infoWindow on conflicts_index page.  Image does show on conflict_show page.

When creating a new conflict, user enters latitude, longitude and continent.  Even if these parameters do not correspond, conflict still created.  Possibly remove continents field, auto populate using coordinates.

CSS unfinished.


### Credits

Big credits to Luke and Linna for code help.
