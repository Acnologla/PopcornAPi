
import "package:popcorn_api/src/Popcorn.dart";
int main(){
  // get a random movie
  Popcorn.random("movie").then((c)async{
     print(c.first.item);
  });
  // get animes with keyword ga, and get a random result
  Popcorn.animes.search({
    "keywords":"ga"
  }).then((c)async{
    print(c.random.item);
  });
  // the same process work with movies
  Popcorn.movies.search({
    "keywords":"ga"
  }).then((c)async{
    print(c.random.item);
  });
  //Get result of shows, and get it array
  Popcorn.shows.search({
    "keywords":"league"
  }).then((c)async{
    print(c.array);
  });
  //Params to search() function
  Popcorn.shows.search({
    "keywords":"keywords",
    "page":1,
    "sort":"rating",
    "genre":"all"
  });
  return 0;
}
