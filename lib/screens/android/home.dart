import 'package:flutter/material.dart';
import 'package:flutter_app/screens/android/despesas.dart';
import 'package:flutter_app/screens/android/grupos.dart';
import 'package:flutter_app/screens/android/inicio.dart';
import 'package:flutter_app/screens/android/lista.dart';

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

    List<Widget> _lsita = [
      inicio(),
      grupos(),
      despesas(),
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
              icon: Icon(Icons.group),
              label: "Despesas",
              backgroundColor: Colors.lightGreenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
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
