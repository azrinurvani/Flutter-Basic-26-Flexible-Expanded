import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible dan Exanded"),
      ),
      body: Column(
        children: [
          Flexible(
            flex:
                1, //flex persis sperti weight pada linearlayout android native
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            // fit: FlexFit.tight, //menyesuaikan sisa space dari widget di screen
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            //Expanded sama halnya dengan flexible fit.tight
            flex: 5,
            child: ListView(
              children: [
                Text("data 1"),
                Text("data 2"),
                Text("data 3"),
                Text("data 4"),
                Text("data 5"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
