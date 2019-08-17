import 'package:flutter/material.dart';
import 'package:my_app/Vacinas/vaccineMock.dart';
import 'package:my_app/menu.dart';
import 'package:my_app/vaccineClass.dart';

import 'Vacinas/myvaccinepage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _biggerFont = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    var menu = Menu();
    menu.context = context;
    //todo mock de vacines

    
    Future<List<Vaccine>> _getVaccine(){
      VaccineMock mock = new VaccineMock();
      mock.setProperty();
      return Future.value(mock.vacinas);
    }
    
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Stack(children: [
            ListView(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Minhas Vacinas",
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
            ]),
              Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: FutureBuilder(
                  future: _getVaccine(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            snapshot.data[index].name+" - "+snapshot.data[index].date+" - "+snapshot.data[index].upa,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MyVaccinePage(snapshot.data[index]);
                              },
                            ));
                          },
                        );
                      },
                    );
                  }),
            ),
            ],
          ),
        ),
        drawer: menu.getMenu());
  }
}
