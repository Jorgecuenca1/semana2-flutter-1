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
  Widget pintarBoton({String texto, dynamic metodo, int valorflex, dynamic colorcustom}){
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
              color: colorcustom,
              textColor: Colors.black,
              onPressed: metodo,
            ),
          ),

        )

    );
  }
  _listaBotonesFila1(){
    return[
      pintarBoton(texto: "7", metodo: (){}, colorcustom: Colors.cyan),
      pintarBoton(texto: "8", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "9", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "º", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "<=", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "C", metodo: (){},colorcustom: Colors.cyan),


    ];
  }
  _listaBotonesFila2(){
    return[
      pintarBoton(texto: "4", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "5", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "6", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: ".", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "(", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: ")", metodo: (){},colorcustom: Colors.cyan),


    ];
  }

  _listaBotonesFila3(){
    return[
      pintarBoton(texto: "1", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "2", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "3", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: ".", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "[", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "]", metodo: (){},colorcustom: Colors.cyan),



    ];
  }
  _listaBotonesFila4(){
    return[
      pintarBoton(texto: "0", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: ".", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "%", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "0", metodo: (){},colorcustom: Colors.cyan),
      pintarBoton(texto: "=", metodo: (){},colorcustom: Colors.cyan),



    ];
  }

}