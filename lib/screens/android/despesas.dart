import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../banco.dart';
import '../../model/despesa.dart';

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
    load();

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
                          Despesa desp = new Despesa(Random().nextInt(99999), nome.text, preco.text);
                          Banco().addDespesa(desp);
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
          Container(
            width: screenWidth * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _listaProdutos,
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> _listaProdutos = [

];
load(){
  List<Widget> _listaProdu = [];
  List<Despesa> _despesas = Banco().getDespesas();
  for(Despesa e in _despesas){
    _listaProdu.add(
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Nome: "+e.nome),
                  Row(
                    children: [
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.green,

                      ),
                      Text("Preço: R\$ "+double.parse(e.valor).toStringAsFixed(2))
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){

                    },
                    icon: Icon(Icons.edit),
                    label: Text("Editar")
                  ),
                  ElevatedButton.icon(
                      onPressed: (){

                      },
                      icon: Icon(Icons.delete),
                      label: Text("Excluir")
                  )
                ],
              )
            ],
          ),
        )
    );
  };
  _listaProdutos = _listaProdu;
  debugPrint("\n\n\nCARREGANDO LISTA\n"+_despesas.toString()+"\n\n\n"+_listaProdutos.toString());
}