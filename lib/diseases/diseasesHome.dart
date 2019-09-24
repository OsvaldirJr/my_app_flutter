import 'package:flutter/material.dart';
import 'package:my_app/diseases/diseasesClass.dart';
import 'package:my_app/menu.dart';

import 'diseases.dart';
import 'diseasesMock.dart';

class MyDiseasesHomePage extends StatelessWidget {
  final _biggerFont =
      const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    var menu = Menu();
    menu.context = context;
    //todo mock de vacines

    Future<List<Disease>> _getDisease() {
      DiseasesMock mock = new DiseasesMock();
      mock.setProperty();
      return Future.value(mock.doencas);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Doenças"),
        ),
        body: Center(
          child: Stack(children: [
            ListView(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Doenças Evitáveis",
                    style: _biggerFont,
                    textAlign: TextAlign.center,
                  )),
            ]),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: FutureBuilder(
                  future: _getDisease(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return ListView.builder(
                      itemCount: snapshot.data != null ? snapshot.data.length : 0,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            snapshot.data[index].name,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MyDiseasesPage(snapshot.data[index]);
                              },
                            ));
                          },
                        );
                      },
                    );
                  }),
            ),
          ]),
        ),
        drawer: menu.getMenu());
  }
}
