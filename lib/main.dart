import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class Second{
  void randomMSG(){
    if (kDebugMode) {
      print('Second Class Function Called');
    }
  }
  void printText(String holder){
    if (kDebugMode) {
      print(holder);
    }
  }
  double returnMSG(double a, double b){
    double c;
    c = a + b;
    return c;
  }
}

class MyApp extends StatelessWidget{
  final second = Second();
  void fun_1(){
    second.randomMSG();
  }

  void fun_2(){
    second.printText('Function called With Arguments');
  }

  void fun_3(){
    double holder;
    holder = second.returnMSG(4, 5);
    if (kDebugMode) {
      print(holder);
    }
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child:
                          RaisedButton(
                            onPressed: () => fun_1(),
                            textColor: Colors.white,
                            color: Colors.green,
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                            child: const Text('Call Another Class Function Without Arguments',
                              textAlign: TextAlign.center,),
                          )
                      ),

                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child:
                          RaisedButton(
                            onPressed: () => fun_2(),
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                            child: const Text('Call Another Class Function With Arguments',
                                textAlign: TextAlign.center),
                          )
                      ),

                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child:
                          RaisedButton(
                            onPressed: () => fun_3(),
                            textColor: Colors.white,
                            color: Colors.green,
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                            child: const Text('Call Another Function With Return Value',
                                textAlign: TextAlign.center),
                          )
                      ),
                    ]
                )
            )
        )
    );
  }
}