import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as hp;
var http = new hp.Client();
class Item {
  var item;
 Item(this.item);
 String string(){
   return item.toString();
 }
 get http{
   return item;
 }
  json(){
   try{
    return jsonDecode(item);}
    catch(err){
      try{
      return jsonDecode(item.body);
    }
    catch(err2){
      return item;
    }
  }
 }
}
class Requests {
 Future<Item> get(url) async {
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    final future = await response.transform(Utf8Decoder());
    var ror="";
    await for (var string in future) {
      if (string != "" && string != null && string != "null") {
        ror += string;
      }
    }
    HttpClient().close();
    return new Item(ror);
  }
 Future<Item>  post(url,[bodyP,headersP])async{
    if (bodyP == null) bodyP ={};
    if (headersP == null) headersP={};
  final response = await  http.post(url,body:bodyP);
    return new Item(response);
   }

}