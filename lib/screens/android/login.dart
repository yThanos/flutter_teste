import 'package:flutter/material.dart';
import 'package:flutter_app/screens/android/home.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: loginful()
        ),
    );
  }
}

class loginful extends StatefulWidget {
  const loginful({Key? key}) : super(key: key);

  @override
  State<loginful> createState() => _loginfulState();
}

class _loginfulState extends State<loginful> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
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
            ]),
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                  onChanged: (text){

                  },
                  decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: TextStyle(
                        color: Colors.grey[600], // sets the color of the label text
                        fontSize: 16.0, // sets the font size of the label text
                        fontWeight: FontWeight.bold, // sets the font weight of the label text
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1,color: Colors.black)
                      )
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                onChanged: (text){

                },
                decoration: InputDecoration(
                    hintText: 'senha',
                    hintStyle: TextStyle(
                      color: Colors.grey[600], // sets the color of the label text
                      fontSize: 16.0, // sets the font size of the label text
                      fontWeight: FontWeight.bold, // sets the font weight of the label text
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1,color: Colors.black)
                    )
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>home()));
              },
              child: Text("Logar", style: TextStyle(color: Colors.white, fontSize: 24),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
