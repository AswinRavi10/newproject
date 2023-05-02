import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:myshow()));
}
class myshow extends StatelessWidget{
  var data=["aa","bb","cc","dd"];
  var number=["1","3","2","4"];
  var colors=[500,400,300,200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: data.length,
        itemBuilder: (BuildContext context,index){
        return Card(color: Colors.green,
          child: ListTile(

            title: Text(data[index]),
            subtitle: Text(number[index]),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness:1 ,
          color: Colors.blue[colors[index]],
        );
      },),
    );
  }

}