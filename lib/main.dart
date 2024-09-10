import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "home.dart";
import "action.dart";

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Plaban's App",
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/action": (context) => ActionScreen(),
      },
    );
  }
}
