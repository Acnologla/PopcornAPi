library popcorn_api;
import "./structures/Routers.dart";
class Popcorn {
  static get movies {
   return new Routers("movies");
  }
  static get animes {
   return new Routers("animes");
  }
  static  get shows {
   return new Routers("shows");
  }
  static random(type){
   return new Routers("random/$type").search();
  }
}
