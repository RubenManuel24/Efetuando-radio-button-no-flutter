import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EntradaSlide extends StatefulWidget {
  const EntradaSlide({Key? key}) : super(key: key);
  @override
  State<EntradaSlide> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<EntradaSlide> {

  double _valor = 0;
  int _label = 0;
  @override
  Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Entrada de dados com Slider"),
                backgroundColor: Colors.teal,
              ),
              body: Container(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: [

                  Slider(
                    value: _valor, 
                    min: 0,
                    max: 10,
                    label: _label.toString(),
                    activeColor: Colors.amber,
                    inactiveColor: Colors.pink.shade900,
                    thumbColor: Colors.blue,
                    divisions: 10,
                    onChanged: (double valor){

                      setState(() {
                        _valor=valor;
                        _label=_valor.toInt();

                      });
                      //print("Valor selecionado: "+valor.toString());
                    }
                    ),

                    TextButton(
                      onPressed: (){
                        print("Valor selecionado: "+_label.toString());
                      }, 
                      child: Text("Click",
                       style: TextStyle(
                        color: Colors.white
                       ),),
                       style: TextButton.styleFrom(
                        backgroundColor: Colors.amber
                       ),)

                  ]),
              ),
            ) ;
  }
}