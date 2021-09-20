
import 'package:flutter/material.dart';

Widget pintarBoton({dynamic metodo, int valorFlex = 1 , Widget componente, dynamic colorBoton = Colors.red }){
  return Expanded(
      flex: valorFlex,
      child: Container(
        child:
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: FlatButton(

              color: colorBoton,

              onPressed: metodo,
              child: componente
          ),
        ),
      ));
}