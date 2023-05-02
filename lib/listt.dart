import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Myapp()));
}
class Myapp extends StatelessWidget{
  var datas=["1","2","3","4","5"];
  var colors=[800,700,600,500,400,300];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("HOME"),centerTitle: true,),
   body: ListView.builder(
       itemCount: datas.length,
       itemBuilder: (BuildContext context,index){
     return Container(
       color: Colors.blue[colors[index]],
       child: Center(child: Text(datas[index])),
     );
   }),
 );
  }

}