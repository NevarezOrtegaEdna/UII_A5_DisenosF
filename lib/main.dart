import 'package:flutter/material.dart';
import 'package:nevarezDisenos/all_containers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mis contenedores",
              style: TextStyle(color: Color(0xffffffff))),
          backgroundColor: const Color(0xff214f93),
        ),
        body: const AllContainers(),
      ),
    );
  }
}
