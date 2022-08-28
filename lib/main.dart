import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/Popup_menu_kullanimi.dart';
import 'package:flutter_temel_widget/dropdown_button_kullanimi.dart';
import 'package:flutter_temel_widget/image_widget.dart';
import 'package:flutter_temel_widget/temel_buton_turleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown,
      outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom()),
      textTheme: TextTheme(headline1: TextStyle(
        color: Colors.brown,
      ))),
      title: "My Counter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Temel Widget Örnekleri"),
        ),
        body: PopupMenuKullanimi(),
      ),
    );
  }
}

