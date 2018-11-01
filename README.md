# PopcornApi

An easy way to get data from the Popcorn Time API.
Documentation is available at https://popcorn-api.js.org/

## Usage

Popcorn-API comes with 4 routes you can use: Anime, Shows, Movies Random
To acess a route, you can use: Popcorn.route

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

//Params to search() function
Popcorn.shows.search({
  "keywords":"keywords",
  "page":1,
  "sort":"rating",
  "genre":"all"
});
```

You can found more examples in [Here](https://github.com/Acnologla/PopcornAPi/tree/master/examples)
