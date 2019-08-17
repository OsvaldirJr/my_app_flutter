import 'package:flutter/material.dart';
import 'package:my_app/home.dart';


void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color =
{
50:Color.fromRGBO(124,244,211, .1),
100:Color.fromRGBO(124,244,211, .2),
200:Color.fromRGBO(124,244,211, .3),
300:Color.fromRGBO(124,244,211, .4),
400:Color.fromRGBO(124,244,211, .5),
500:Color.fromRGBO(124,244,211, .6),
600:Color.fromRGBO(124,244,211, .7),
700:Color.fromRGBO(124,244,211, .8),
800:Color.fromRGBO(124,244,211, .9),
900:Color.fromRGBO(124,244,211, 1),
};
   MaterialColor colorCustom = MaterialColor(0xFF4DB6AC, color);
    
    return MaterialApp(
      title: 'Vacina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: colorCustom
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}
