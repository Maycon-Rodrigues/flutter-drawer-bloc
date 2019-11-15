import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:drawer_bloc/src/pages/home/HomeController.dart';
import 'package:drawer_bloc/src/pages/home/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        blocs: [Bloc((i) => HomeController())],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ));
  }
}
