import 'package:flutter/material.dart';

void main() {
        runApp(MaterialApp(
                title: 'Navegação Básica',
                theme: ThemeData(primarySwatch: Colors.blue),
                home: PrimeiraRota(),
        ));
}

class PrimeiraRota extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        appBar: AppBar(
                                title: Text('LGPD Suporte'),
                        ),
                        body: Center(
                                child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                                Text(
                                                        'Seja Bem-Vindo!',
                                                        style: TextStyle(
                                                                fontSize: 30,
                                                                color: Colors.blueAccent,
                                                        ),
                                                ),
                                                ConstrainedBox(
                                                        constraints: BoxConstraints.tightFor(width: 300, height: 100),
                                                        child: ElevatedButton(
                                                                child: Text('CONTROLADORES'),
                                                                onPressed: () {
                                                                        Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                        builder: (context) => TeladeLogin(),
                                                                                ),
                                                                        );
                                                                },
                                                                style: ButtonStyle(
                                                                    backgroundColor:
                                                                    MaterialStateProperty.all(Colors.blueAccent),
                                                                    padding: MaterialStateProperty.all(EdgeInsets.all(28)),
                                                                    textStyle:
                                                                    MaterialStateProperty.all(TextStyle(fontSize: 28))),
                                                        ),
                                                ),
                                                ConstrainedBox(
                                                        constraints: BoxConstraints.tightFor(width: 300, height: 100),
                                                        child: ElevatedButton(
                                                                child: Text('USUÁRIOS'),
                                                                onPressed: () {
                                                                        Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                    builder: (context) => TeladeLogin()),
                                                                        );
                                                                },
                                                                style: ButtonStyle(
                                                                    backgroundColor:
                                                                    MaterialStateProperty.all(Colors.blueAccent),
                                                                    padding: MaterialStateProperty.all(EdgeInsets.all(28)),
                                                                    textStyle:
                                                                    MaterialStateProperty.all(TextStyle(fontSize: 28))),
                                                        ),
                                                ),
                                        ],
                                ),
                        ),
                );
        }
}

class TeladeLogin extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        appBar: AppBar(
                                title: Text("Login"),
                        ),
                        body: Center(
                                child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                                TextField(
                                                    autofocus: true,
                                                    keyboardType: TextInputType.number,
                                                    style: TextStyle(color: Colors.blue, fontSize: 30),
                                                    decoration: InputDecoration(
                                                            labelText: "Login",
                                                            labelStyle: TextStyle(color: Colors.black),
                                                    )), //TextField
                                                TextField(
                                                    autofocus: true,
                                                    obscureText: true,
                                                    keyboardType: TextInputType.text,
                                                    style: TextStyle(color: Colors.blue, fontSize: 30),
                                                    decoration: InputDecoration(
                                                            labelText: "Senha",
                                                            labelStyle: TextStyle(color: Colors.black),
                                                    )), //TextField
                                                ConstrainedBox(
                                                        constraints: BoxConstraints.tightFor(width: 100, height: 70),
                                                        child: ElevatedButton(
                                                                child: Text('Entrar'),
                                                                onPressed: () {
                                                                        Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                    builder: (context) => TeladeLogin()),
                                                                        );
                                                                },
                                                                style: ButtonStyle(
                                                                    backgroundColor:
                                                                    MaterialStateProperty.all(Colors.blueAccent),
                                                                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                                                                    textStyle:
                                                                    MaterialStateProperty.all(TextStyle(fontSize: 20))),
                                                        ),
                                                ),
                                        ],
                                ),
                        ),
                );
        }
}

