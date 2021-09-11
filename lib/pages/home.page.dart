import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  children: [

                    Text("Zona de resultados"),
                  ],
                ),
                color: Colors.blue,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Text("Zona de ingreso"),
                    ],
                  ),
                  color: Colors.red,
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: _listaBotonesFila1(),



                      ),
                      Row(
                        children: _listaBotonesFila2(),
                      ),
                      Row(
                        children: _listaBotonesFila3(),
                      ),
                      Row(
                        children: _listaBotonesFila4(),
                      ),

                    ],
                  ),
                  color: Colors.black,
                )
            )
          ],
        )
    );
  }
  Widget pintarBoton({String texto, dynamic metodo, int valorflex}){
    return Expanded(
        flex: valorflex,
        child: Container(
          child:

          new SizedBox(
            width: 58.0,
            height: 30.0,
            child: FlatButton(
              child: Text(
                texto,
                style: TextStyle(fontSize: 10.0),
              ),
              color: Colors.cyan,
              textColor: Colors.black,
              onPressed: metodo,
            ),
          ),

        )

    );
  }
  _listaBotonesFila1(){
    return[
      pintarBoton(texto: "7", metodo: (){}),
      pintarBoton(texto: "8", metodo: (){}),
      pintarBoton(texto: "9", metodo: (){}),
      pintarBoton(texto: "º", metodo: (){}),
      pintarBoton(texto: "<=", metodo: (){}),
      pintarBoton(texto: "C", metodo: (){}),


    ];
  }
  _listaBotonesFila2(){
    return[
      pintarBoton(texto: "4", metodo: (){}),
      pintarBoton(texto: "5", metodo: (){}),
      pintarBoton(texto: "6", metodo: (){}),
      pintarBoton(texto: ".", metodo: (){}),
      pintarBoton(texto: "(", metodo: (){}),
      pintarBoton(texto: ")", metodo: (){}),


    ];
  }

  _listaBotonesFila3(){
    return[
      pintarBoton(texto: "1", metodo: (){}),
      pintarBoton(texto: "2", metodo: (){}),
      pintarBoton(texto: "3", metodo: (){}),
      pintarBoton(texto: ".", metodo: (){}),
      pintarBoton(texto: "[", metodo: (){}),
      pintarBoton(texto: "]", metodo: (){}),



    ];
  }
  _listaBotonesFila4(){
    return[
      pintarBoton(texto: "0", metodo: (){}),
      pintarBoton(texto: ".", metodo: (){}),
      pintarBoton(texto: "%", metodo: (){}),
      pintarBoton(texto: "0", metodo: (){}),
      pintarBoton(texto: "=", metodo: (){}),



    ];
  }

}