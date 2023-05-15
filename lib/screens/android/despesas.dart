import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bordaredonda.dart';

class despesas extends StatefulWidget {
  const despesas({Key? key}) : super(key: key);

  @override
  State<despesas> createState() => _despesasState();
}

class _despesasState extends State<despesas> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Padding(
        padding: EdgeInsets.all(100),
        child: Container(
            decoration: bordaRendonda(),
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Text("Despesas"),
            )
        ),
      ),
    );
  }
}