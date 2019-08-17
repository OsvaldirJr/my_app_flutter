import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

import 'diseases/diseasesHome.dart';

class Menu {
   
  BuildContext context;
getMenu(){
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
  return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/logo.jpeg"),
              decoration: BoxDecoration(
                color: colorCustom,
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               // Navigator.pop(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
              },
            ),
            ListTile(
              title: Text('Doenças'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyDiseasesHomePage();
          }));
              },
            ),
          ],
        ),
      );
 }  
      
}