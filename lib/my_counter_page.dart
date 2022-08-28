import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material(1).dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "butona basılma miktarı",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _sayi.toString(),
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  sayacArttir() {
    setState(() {

    });
    _sayi++;
  }
}

