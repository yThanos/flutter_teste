import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class despesas extends StatefulWidget {
  const despesas({Key? key}) : super(key: key);

  @override
  State<despesas> createState() => _despesasState();
}

class _despesasState extends State<despesas> {

  TextEditingController nome = TextEditingController();
  TextEditingController preco = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(15)
            ),
            width: screenWidth,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                      controller: nome,
                      decoration: InputDecoration(
                          label: Text("Nome"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                  SizedBox(height: 7,),
                  TextField(
                      controller: preco,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          label: Text("Preço"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _listaProdutos.add(
                              Container(
                                margin: EdgeInsets.all(5),
                                width: screenWidth * 0.7,
                                height: screenHeight * 0.08,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(nome.text),
                                    Row(
                                      children: [
                                        VerticalDivider(
                                          thickness: 2,
                                          color: Colors.green,

                                        ),
                                        Text("R\$ "+double.parse(preco.text).toStringAsFixed(2))
                                      ],
                                    )
                                  ],
                                ),
                              )
                          );
                          nome.clear();
                          preco.clear();
                        });
                      },
                      child: Text("Add despesa")
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _listaProdutos,
          )
        ],
      ),
    );
  }
}

List<Widget> _listaProdutos = [

];