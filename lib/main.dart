import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

import 'custom/color.dart';


void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
CustomColor customColor = new CustomColor();
  customColor.setcolor();
    
    return MaterialApp(
      title: 'Vacina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: customColor.colorCustom
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}
