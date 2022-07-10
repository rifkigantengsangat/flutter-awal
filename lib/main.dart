import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int number = 0;
  void tambah() {
   setState((){
   number = number + 1;
   });
  }
  void kurang (){
    setState((){
  if(number == 0){
   number == 0;
  }else{
number = number - 1;
  }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("stateFul dan Stateless"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(number.toString(),style:TextStyle(fontSize: 10+number.toDouble(),color:Colors.amber)),
          RaisedButton(
            child: Text("tambah"),
            onPressed: tambah,
          ),
          RaisedButton(
            child: Text("kurang"),
            onPressed: kurang,
          )
        ],
      )),
    ));
  }
}
