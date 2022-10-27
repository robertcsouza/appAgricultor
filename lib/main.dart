import 'package:app_agricultor/colors/paletColors.dart';
import 'package:app_agricultor/components/Buttons.dart';
import 'package:app_agricultor/components/InputText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body()
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _body() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 128.0),
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset('images/logo.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: input(obscure: false, context: context, lable: "CPF"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: input(obscure: true, context: context, lable: "senha"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
                  child:
                      btPrimary(lable: "Entrar", context: context, call: () {}),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
                  child: btSecondary(lable: "Cadastre-se", context: context),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
