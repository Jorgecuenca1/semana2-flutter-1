import 'package:flutter/material.dart';
import 'package:semana2-flutter-1/widgets/botones.widget.dart';
import 'package:math_expressions/math_expressions.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _value = 'one';

  final calculadora= TextEditingController();
  final entradatexto = TextEditingController();
  final resultado = TextEditingController();

  Parser parseo = new Parser();
  @override
  void initState() {
    super.initState();
    calculadora.addListener(() {});
    entradatexto.addListener(() {});
    resultado.addListener(() {});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new DropdownButton<String>(
        value: _value,
        items: <DropdownMenuItem<String>>[
          new DropdownMenuItem(
            child: new Text('Modo Basico'),
            value: 'one',
          ),
          new DropdownMenuItem(
              child: new Text('Modo CIentifica'),
              value: 'two'
          ),
        ],
        onChanged: (String value) {
          setState(() => _value = value);
        },),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.maximize),
            onPressed: () => print('Minimiza calculadora'),
          ),
          IconButton(
            icon: new Icon(Icons.open_in_browser),
            onPressed: () => print('Maximiza calculadora'),
          ),
          IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => print('CIerra calculadora'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child: SingleChildScrollView(
                  child: TextField(
                    enabled: false,
                    decoration: new InputDecoration.collapsed(
                        hintText: "Resultado",
                        hintStyle: TextStyle(
                          fontSize: 34,
                          color: Colors.green,
                        )),
                    textInputAction: TextInputAction.none,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.green,),
                    textAlign: TextAlign.right,
                    controller: resultado,
                    onTap: () =>
                        FocusScope.of(context).requestFocus(new FocusNode()),
                  ),
                ),
                color: Colors.red,
              ))
          ,

          Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  child: TextFormField(
                    decoration: new InputDecoration.collapsed(
                        hintText: "",
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        )),
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                    controller: calculadora,
                    onTap: () =>
                        FocusScope.of(context).requestFocus(new FocusNode()),
                  ),
                ),
                color: Colors.red,
              ))
          ,
          Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  child: TextFormField(
                    enabled: false,
                    decoration: new InputDecoration.collapsed(
                        hintText: "-",
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                        )),
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.right,
                    controller: entradatexto,
                    onTap: () =>
                        FocusScope.of(context).requestFocus(new FocusNode()),
                  ),
                ),
                color: Colors.red,
              ))
          ,
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _listaBotonesFila1()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _listaBotonesFila2()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _listaBotonesFila3()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _listaBotonesFila1Prueba()),
                  ],
                ),
                color: Colors.green,
              ))
          ,
        ],
      ),
    );
  }

  _listaBotonesFila1Prueba() {
    return [
      pintarBoton(metodo: (){setState(() {entradatexto.text += "0";});}, componente:  Text("0"), colorBoton: Colors.yellow),

      pintarBoton(metodo: (){setState(() {entradatexto.text += ".";});}, componente:  Text(".")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "%";});}, componente:  Text("%")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "+";});}, componente:  Text("+")),
      pintarBoton(metodo: () {
        setState(() {
          try {
            ContextModel cm = new ContextModel();
            Expression exp =
            parseo.parse(entradatexto.text);
            exp = exp.simplify();
            String solucion = exp.evaluate(EvaluationType.REAL, cm).toString();
            if (solucion == "NaN") {throw ("NO HAY RAIZ PARA NUMEROS NEGATICOS");
            }
            if (solucion == "Infinity") {throw IntegerDivisionByZeroException();
            }
            resultado.text = solucion;
          } on RangeError catch (e) {calculadora.text = "Esta mal escrita la operación";
          } on IntegerDivisionByZeroException catch (e) {calculadora.text = "NO existe division por cero no permitido";
          } on Exception catch (e) {calculadora.text = "No utilice numeros negaticos para la raiz cuadrada";
          } catch (e) {String error = e.toString();
          if (error.contains("Verifique los parentesis")) {calculadora.text = "Verifique los parentesis";
          } else if (error.contains("No hay")) {calculadora.text = "Debe ingresar un valor para completar la expresión";
          } else {
            calculadora.text = "\n$e";
          }
          }
        });
      }, valorFlex: 2, componente:  Text("=")),
    ];
  }

  _listaBotonesFila1() {
    return [
      pintarBoton(metodo: (){setState(() {entradatexto.text += "7";});}, componente:  Text("7"), colorBoton: Colors.yellow),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "8";});},componente:  Text("8")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "9";});}, componente:  Text("9")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "/";});}, componente:  Text("÷")),
      pintarBoton(metodo: () {setState(() {if (entradatexto.text.length > 0) {int l = entradatexto.text.length - 1;entradatexto.text = entradatexto.text.substring(0, l);}resultado.text = "";calculadora.text = "";});}, componente:  Icon(Icons.arrow_back_ios)),
      pintarBoton(metodo: () {setState(() {resultado.text = "";entradatexto.text = "";calculadora.text = "";});},componente:  Text("C")),

    ];
  }

  _listaBotonesFila2() {
    return [
      pintarBoton(metodo: (){setState(() {entradatexto.text += "4";});}, componente:  Text("4"), colorBoton: Colors.yellow),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "5";});},componente:  Text("5")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "6";});}, componente:  Text("6")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "*";});}, componente:  Text("x")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "(";});}, componente:  Text("(")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += ")";});},componente:  Text(")")),

    ];
  }

  _listaBotonesFila3() {
    return [
      pintarBoton(metodo: (){setState(() {entradatexto.text += "1";});}, componente:  Text("1"), colorBoton: Colors.yellow),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "2";});}, componente:  Text("2")),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "3";});},componente:  Text("3")),

      pintarBoton(metodo: (){setState(() {entradatexto.text += "-";});}, componente:  Text("-"), colorBoton: Colors.yellow),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "^2";});}, componente:  Text("x²"),),
      pintarBoton(metodo: (){setState(() {entradatexto.text += "sqrt(";});}, componente:  Text("√")),

    ];
  }
}