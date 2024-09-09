import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Plaban's App",
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget{
  @override
  Counter createState() => Counter();
}

class Counter extends State<HomeScreen>{
  int number = 0;
  String name = "";
  void increment(){
    setState(() {
      number += 1;
    });
  }
  void decrement(){
    setState(() {
      number -= 1;
    });
  }
  void changeName(input){
    setState(() {
      name = input;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Number Counter App"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Item Counter present value"),
        Text(number.toString()),
        TextButton(onPressed: decrement, child: const Text("Decrease count")),
        TextButton(onPressed: increment, child: const Text("Increase count")),
        const Text("Name update field"),
        Text(name),
        TextField(onChanged: (input) => changeName(input),)
      ],),),
    );
  }
}
