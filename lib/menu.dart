import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/prevention/preventionHome.dart';

import 'diseases/diseasesHome.dart';

class Menu {
   
  BuildContext context;
getMenu(){
  
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
                color: Colors.white,
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
            ListTile(
              title: Text('Prevenção'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyPreventionHomePage();
          }));
              },
            ),
          ],
        ),
      );
 }  
      
}