import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


 
  var _escolhaUsusario ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButton"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [

             RadioListTile(
              title: Text("Masculino"),
              value: "m", 
              groupValue: _escolhaUsusario, 
              onChanged: 
              
              (_valor){

                 setState(() {
                   _escolhaUsusario = _valor;
                 });

              }

              ),


               RadioListTile(
              title: Text("Femenino"),
              value: "f", 
              groupValue: _escolhaUsusario, 
              onChanged: 
              
              (_valor){
                 
                     setState(() {
                   _escolhaUsusario = _valor;
                 });
                 
              }
              
              ),


              TextButton(
                onPressed: (){
                    
                       print("Foi escolhido: " +_escolhaUsusario.toString());

                }, 
                child: Text("Click"),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red.shade100
                ),
                
                 )
                
          ],
        ),
      ),
    );
  }
}