/* A Prolog program for finding the possible conflicts in the famous map coloring problem. */
/* Problem courtsey http://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_1.html */

adjacent(1,2).         adjacent(2,1). 
adjacent(1,3).         adjacent(3,1). 
adjacent(1,4).         adjacent(4,1). 
adjacent(1,5).         adjacent(5,1). 
adjacent(2,3).         adjacent(3,2). 
adjacent(2,4).         adjacent(4,2). 
adjacent(3,4).         adjacent(4,3). 
adjacent(4,5).         adjacent(5,4). 

color(1,red,a).    color(1,red,b). 
color(2,blue,a).   color(2,blue,b). 
color(3,green,a).  color(3,green,b). 
color(4,yellow,a). color(4,blue,b). 
color(5,blue,a).   color(5,green,b). 

conflict(X, Y, Color, Graph) :-  adjacent(X, Y), color(X, Color, Graph), color(Y, Color, Graph).