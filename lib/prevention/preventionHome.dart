import 'package:flutter/material.dart';
import 'package:my_app/prevention/preventionClass.dart';
import 'package:my_app/menu.dart';

import 'prevention.dart';
import 'preventionMock.dart';

class MyPreventionHomePage extends StatelessWidget {
  final _biggerFont =
      const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    var menu = Menu();
    menu.context = context;
    //todo mock de vacines

    Future<List<Prevention>> _getDisease() {
      PreventionMock mock = new PreventionMock();
      mock.setProperty();
      return Future.value(mock.preventivemethods);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Prevenção"),
        ),
        body: Center(
          child: Stack(children: [
            ListView(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Métodos de prevenção",
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
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            snapshot.data[index].name,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MyPreventionPage(snapshot.data[index]);
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
