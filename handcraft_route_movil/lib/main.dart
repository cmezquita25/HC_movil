import 'package:flutter/material.dart';
import 'package:handcraft_route_movil/screens/layout.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //<---- Quitar la cinta Debug
      //home: LayoutInicio(),
      home: LayoutInicio(),
    );
  }
}