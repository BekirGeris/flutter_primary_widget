import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropdownButtonKullanimi> createState() => _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSeirler = ["Ankara", "İstanbul", "İzmir", "Aydın", "Batman"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"),
        icon: Icon(Icons.arrow_downward),
        iconSize: 20,
        style: TextStyle(color: Colors.red),
        underline: Container(
          height: 2,
          color: Colors.red,
        ),
        // items: [
        //   DropdownMenuItem(
        //     child: Text("Ankara Şehri"),
        //     value: "Ankara",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("İzmir Şehri"),
        //     value: "İzmir",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("İstanbul Şehri"),
        //     value: "İstanbul",
        //   ),
        // ],
        items: _tumSeirler.map((String cityName) => DropdownMenuItem(
            child: Text(cityName),
            value: cityName,
          )
        ).toList(),
        value: _secilenSehir,
        onChanged: (String? s) {
            setState(() {
              _secilenSehir = s;
            });
        },
      )
    );
  }
}
