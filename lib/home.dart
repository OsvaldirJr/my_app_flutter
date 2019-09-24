import 'package:flutter/material.dart';
import 'package:my_app/Vacinas/vaccineMock.dart';
import 'package:my_app/menu.dart';
import 'package:my_app/surgery/mySurgeryMock.dart';
import 'package:my_app/vaccineClass.dart';
import 'package:my_app/custom/color.dart';
import 'Vacinas/myvaccinepage.dart';
import 'diseases/myDiseasesMock.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{ 

  final _biggerFont = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);


  
  @override
  Widget build(BuildContext context) {
    var menu = Menu();
    menu.context = context;
    //todo mock de vacines
  CustomColor customColor = new CustomColor();
    customColor.setcolor();
    
    Future<List<Vaccine>> _getVaccine(){
      VaccineMock mock = new VaccineMock();
      mock.setProperty();
      return Future.value(mock.vacinas);
    }

    Future<List<Vaccine>> _getDiseases(){
      MyDiseasesMock mock = new MyDiseasesMock();
       mock.setProperty();
      return Future.value(mock.vacinas);
    }
    Future<List<Vaccine>> _getSurgery(){
     MySurgeryMock mock = new MySurgeryMock();
       mock.setProperty();
      return Future.value(mock.vacinas);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              primarySwatch: customColor.colorCustom
            ),
            home: DefaultTabController(
            length: 3,
            
            child: Scaffold(
            appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
              tabs: [
                Tab(icon:Icon(Icons.colorize)),
                Tab(icon:Icon(Icons.healing)),
                Tab(icon:Icon(Icons.local_hospital)),
              ],
            ),
        ),
        body: TabBarView(
          children:[
            Center(
              child: Stack(
                children: [
                  ListView(
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        "Minhas Vacinas",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    )
                  ]
                  ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: FutureBuilder(
                    future: _getVaccine(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return ListView.builder(
                        itemCount: snapshot?.data?.length ?? 0,
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
                              )
                              );
                            },
                          );
                        },
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
           Center(
              child: Stack(
                children: [
                  ListView(
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        "Histórico de Cirurgia",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    )
                  ]
                  ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: FutureBuilder(
                    future: _getSurgery(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return ListView.builder(
                        itemCount: snapshot?.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                              snapshot.data[index].name+" - "+snapshot.data[index].date+" - "+snapshot.data[index].upa,
                            ),
                            
                          );
                        },
                      );
                    }
                  ),

                ),  
              ],
            ),
          ),
          Center(
              child: Stack(
                children: [
                  ListView(
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        "Histórico de Doenças",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    )
                  ]
                  ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: FutureBuilder(
                    future: _getDiseases(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return ListView.builder(
                        itemCount: snapshot?.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                              snapshot.data[index].name+" - "+snapshot.data[index].date,
                            ),
                            
                          );
                        },
                      );
                    }
                  ),

                ),
                 
                  
              ],
              
            ),
          )
          ]
      ),
        drawer: menu.getMenu()
      )
      )
      );

  }
}
