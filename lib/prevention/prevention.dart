import 'package:flutter/material.dart';
import 'package:my_app/custom/color.dart';
import 'package:my_app/prevention/preventionClass.dart';
import 'package:my_app/menu.dart';

class MyPreventionPage extends StatelessWidget {
Prevention vac = new Prevention();
MyPreventionPage(this.vac);

  @override
  Widget build(BuildContext context) {
  
  CustomColor customColor = new CustomColor();
  customColor.setcolor();

    var menu = Menu();
    menu.context = context;
        return Scaffold(
          appBar: AppBar(
            title: Text(vac.name),
          ),
          body: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(
              
              children: <Widget>[
                
                Text(vac.name, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                
                //
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(vac.description),
                ),
                
              ],
            ), 
            
          ),
            
    
          drawer: menu.getMenu(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
             Navigator.pop(context);
              
           },
           
            child: Icon(Icons.check, color: Colors.white),
           backgroundColor: customColor.colorCustom,
          ),
     
      
    );
    
  }
}
