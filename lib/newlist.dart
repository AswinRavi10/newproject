import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: contact()));
}
class contact extends StatelessWidget{
  var name=["Aswin","Abhinish","Jithin","OC","Arun"];
  var clas=["EC","EC","EC","CT","EC"];
  var colors=[800,700,600,500,400,300,200];
  var image=["assetimage/contact.png","assetimage/contact.png","assetimage/contact.png","assetimage/contact.png","assetimage/contact.png","assetimage/contact.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount:name.length ,
          itemBuilder: (BuildContext context,index){
        return Card(
          color: Colors.green[colors[index]],
          child: ListTile(
            title: Text(name[index]),
            subtitle:Text(clas[index]),
            leading: Image(image:AssetImage(image[index]),),




          ),
        );
      }),
    );
  }

}
