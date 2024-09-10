import 'package:flutter/material.dart';
import 'action.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(Scaffold(appBar: AppBar(title: const Text("Home Screen"),),
    body: Center(child: TextButton(onPressed: (){
      Navigator.pushNamed(context, "/action");
    }, child: const Text("Go to Actions"),),),));
  }
}