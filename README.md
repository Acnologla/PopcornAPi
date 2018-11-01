
<h1>PopcornApi</h1><br><br>
<p>
Easy way to get data from the Popcorn Time API
# PopcornApi
 An easy way to get data from the Popcorn Time API.
Documentation is available at https://popcorn-api.js.org/
</p><br>
<h1>Usage</h1><br><br>
<p>
Popcorn-API comes with 4 routes you can use: anime, shows,movies random<br>
 ## Usage
 `import "popcorn_api";`
Popcorn-API comes with 4 routes you can use: Anime, Shows, Movies Random
To acess a route, you can use: Popcorn.route
</p><br>
<h1>Examples</h1><br><br>
<pre>
 ## Examples
 ```dart
 import "package:popcorn_api/src/Popcorn.dart";
 Popcorn.random("movie").then((c)async{
     print(c.first.item);
  });
  // get animes with keyword ga, and get a random result
  Popcorn.animes.search({
    "keywords":"ga"
  }).then((c)async{
    print(c.random.item);
  });
Popcorn.random("movie").then((c)async{
 print(c.first.item);
});
  
// get animes with keyword ga, and get a random result
Popcorn.animes.search({
  "keywords":"ga"
}).then((c)async{
  print(c.random.item);
});
 //Params to search() function
Popcorn.shows.search({
    "keywords":"keywords",
    "page":1,
    "sort":"rating",
    "genre":"all"
  "keywords":"keywords",
  "page":1,
  "sort":"rating",
  "genre":"all"
});
```
</pre>
<br>
<p>You can found more examples in https://github.com/Acnologla/PopcornAPi/tree/master/examples</p>
 `You can found more examples in https://github.com/Acnologla/PopcornAPi/tree/master/examples`