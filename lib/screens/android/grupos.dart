import 'package:flutter/material.dart';

import '../../widgets/bordaredonda.dart';

class grupos extends StatefulWidget {
  const grupos({Key? key}) : super(key: key);

  @override
  State<grupos> createState() => _gruposState();
}

class _gruposState extends State<grupos> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.8,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          width: screenWidth * 0.8,
          decoration: bordaRendonda(),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Text("Grupos"),
          )
        ),
      ),
    );
  }
}
