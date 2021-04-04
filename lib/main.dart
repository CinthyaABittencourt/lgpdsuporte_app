import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
                return MaterialApp(
                    title: 'Welcome to Flutter',
                    home: Scaffold(
                            appBar: AppBar(
                                    title: const Text('LGPD Suporte'),
                            ),
                            body: Center(
                                    child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                                    Text('Seja Bem-Vindo!',
                                                            style: TextStyle(
                                                                    fontSize: 30,
                                                                    color: Colors.blueAccent,
                                                            ),
                                                    ),
                                                    ConstrainedBox(
                                                            constraints: BoxConstraints.tightFor(width: 300, height: 100),
                                                            child: ElevatedButton(
                                                                    child: Text('CONTROLADORES'),
                                                                    onPressed: () {},
                                                                    style: ButtonStyle(
                                                                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                                                                        padding: MaterialStateProperty.all(EdgeInsets.all(28)),
                                                                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 28))),
                                                            ),
                                                    ),
                                                    ConstrainedBox(
                                                            constraints: BoxConstraints.tightFor(width: 300, height: 100),
                                                            child: ElevatedButton(
                                                                    child: Text('USUÁRIOS'),
                                                                    onPressed: () {},
                                                                    style: ButtonStyle(
                                                                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                                                                        padding: MaterialStateProperty.all(EdgeInsets.all(28)),
                                                                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 28))),
                                                            ),
                                                    ),
                                            ],
                                    ),
                            ),
                    )
                );
        }
}


