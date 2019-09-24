import 'package:flutter/material.dart';
import 'package:my_app/custom/color.dart';
import 'package:my_app/menu.dart';

import '../vaccineClass.dart';

class MyVaccinePage extends StatelessWidget {
  Vaccine vac = new Vaccine();
  MyVaccinePage(this.vac);

  @override
  Widget build(BuildContext context) {

    CustomColor customColor = new CustomColor();
    customColor.setcolor();
  
    if (vac == null) {
      vac = new Vaccine();
      vac.name = "errou";
      vac.description = "infelizmente não deu";
    }

    var menu = Menu();
    menu.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(vac.name),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(vac.name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Text("\nData da vacina: " + vac.date + " \nLocal: " + vac.upa),
            // SizedBox(
            //   height: 10,
            // ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8),
            //   child: Image.asset("assets/rubeula.png", height: 150),
            // ),

            //
            Text(vac.description)
          ],
        ),
      ),
      drawer: menu.getMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.check, color: Colors.white,),
        backgroundColor: customColor.colorCustom,
      ),
    );
  }
}
