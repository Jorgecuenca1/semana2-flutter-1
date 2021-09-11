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
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(7),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '7',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '8',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '9',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                'ª',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                'c',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                'C',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),



                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '4',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '5',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '6',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '.',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '(',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '1)',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '2',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '3',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '-',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '0',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '.',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '%',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 58.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '/',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.cyan,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),
                          new SizedBox(
                            width: 116.0,
                            height: 30.0,
                            child: FlatButton(
                              child: Text(
                                '=',
                                style: TextStyle(fontSize: 10.0),
                              ),
                              color: Colors.green,
                              textColor: Colors.black,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),

                          ),


                        ],
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
}