import "./Default.dart";
import 'dart:async';
import "../../utils/request.dart";
var request = new Requests();
const String base = "https://tv-v2.api-fetch.website/";
class Routers {
  String query;
  Routers(this.query); 
  Future<DefaultList> search([obj])async {
    if (obj is !Map){
       var item = await  request.get("$base${this.query}");
       return new DefaultList({"item":[item.json()],"type":this.query.split("/")[this.query.split("/").length-1]+"s"});
    }
    String keywords = obj.containsKey("keywords") ? obj["keywords"] : "";int page = obj.containsKey("page")  ? obj["page"] : 1;String sort = obj.containsKey("sort") ? obj["sort"] : "rating"; int order = -1; String genre = obj.containsKey("genre") ? obj["genre"]:"all";
    var item = await  request.get("$base${this.query}/${page.toString()}?sort=$sort&order=${order.toString()}&genre=$genre&keywords=$keywords");
     return new DefaultList({"item":item.json(),"type":this.query});
  }
}