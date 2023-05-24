import 'model/despesa.dart';

class Banco{
  static final _banco = Banco._internal();
  factory Banco(){
    return _banco;
  }
  Banco._internal();

  List<Despesa> _despesas = [];

  addDespesa(Despesa despesa){
    _despesas.add(despesa);
  }
  getDespesas(){
    return _despesas;
  }
  getDespesaById(int id){
    Object desp = new Object();
    _despesas.map((e) => {
      if(e.codigo == id){
        desp = e
      }
    });
    return desp;
  }
  updateDespesa(int id, Despesa despesa){
    _despesas.map((e) => {
      if(e.codigo == id){
        e = despesa
      }
    });
  }
  deleteDespesa(int id){
    _despesas.map((e) => {
      if(e.codigo  == id){
        _despesas.remove(e)
      }
    });
  }


}