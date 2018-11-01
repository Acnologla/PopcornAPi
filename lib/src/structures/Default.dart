import "../utils/request.dart";
import 'dart:async';
import "dart:math"; 
var request = new Requests();
final _random = new Random();
class DefaultList {
  var item=[];
  DefaultList(req) {
    if (req["item"].length == 0) throw new Error();
    for (int i=0;i < req["item"].length;i++){
      item.add(new Default(req["item"][i],req["type"]));
    }
  }
  get first {
    return this.item[0];
  }
  get array {
    return this.item;
  }
  get random{
    return this.item[_random.nextInt(this.item.length)];
  }
}
class Default {
  var item,type;
  Default(this.item,this.type); 
  fetch() async{
    final ret = await request.get("https://tv-v2.api-fetch.website/${this.type.substring(0,this.type.length-1)}/${this.item["_id"]}");
    return ret.json();
  }
  get info{
    return this.item;
  }
}