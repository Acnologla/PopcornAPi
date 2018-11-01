import "../lib/src/Popcorn.dart";
int main(){
  // get a random movie
  Popcorn.random("movie").then((c)async{
     print(c.first.item);
  });
  // get animes with keyword ga, and get a random result
  Popcorn.animes.search({
    "keywords":"ga"
  }).then((c)async{
    var a = c.random.item;
    print(a);
  });
  // the same process work with movies
  Popcorn.movies.search({
    "keywords":"ga"
  }).then((c)async{
    var a = c.random.item;
    print(a);
  });
  //Get result of shows, and get it array
  Popcorn.shows.search({
    "keywords":"league"
  }).then((c)async{
    var a = c.array;
    print(a);
  });
  return 0;
}