import 'package:flutter/material.dart';
import 'package:flutter_app/screens/android/despesas.dart';
import 'package:flutter_app/screens/android/grupos.dart';
import 'package:flutter_app/screens/android/lista.dart';

import '../../widgets/bordaredonda.dart';
import 'login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

int _selected = 0;

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> _lsita = [
      Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 20, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.80,
                      decoration: bordaRendonda(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text("0", style: TextStyle(fontSize: 34),),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Despesas!", style: TextStyle(fontSize: 22),),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Totalizando: ", style: TextStyle(fontSize: 22),),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text("R\$ 00.00", style: TextStyle(fontSize: 34),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _selected = 1;
                                    });
                                  },
                                  child: Text('Despesas'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.80,
                      decoration: bordaRendonda(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text("0", style: TextStyle(fontSize: 34),),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Despesas", style: TextStyle(fontSize: 22),),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("em", style: TextStyle(fontSize: 22),),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text("0", style: TextStyle(fontSize: 34),),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("grupos", style: TextStyle(fontSize: 22),),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Totalizando: ", style: TextStyle(fontSize: 22),),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text("R\$ 00.00", style: TextStyle(fontSize: 34),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _selected = 2;
                                    });
                                  },
                                  child: Text('Grupos'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
      despesas(),
      grupos(),
      lista()
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
            style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>login()));
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
              child: Icon(Icons.exit_to_app),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.blueAccent.shade200,
                Colors.blue.shade900,
                Colors.deepPurple,
                Colors.deepPurple.shade900,
                Colors.black
              ])),
          child: _lsita[_selected],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.lightGreenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: "Despesas",
              backgroundColor: Colors.lightGreenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Grupos",
              backgroundColor: Colors.lightGreenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Lista",
              backgroundColor: Colors.lightGreenAccent)
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        iconSize: 40,
        selectedFontSize: 18,
        currentIndex: _selected,
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },
      ),
    );
  }
}
