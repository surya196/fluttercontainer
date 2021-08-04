import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(9, 10, 15, 50),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    color: Colors.lightBlue,
                  ),
                ),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      'Container',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                  child: Icon(Icons.ac_unit),
                ),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.pink,
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(0.3),
                    child: Text(
                      'transform',
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            offset: Offset(2, 2),
                          )
                        ]),
                    child: Text('Decoration')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
