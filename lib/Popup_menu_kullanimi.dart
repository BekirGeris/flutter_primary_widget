import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String? _secilenSehir = null;
  List<String> renkler = ["mavi", "yeşil", "sari", "mor"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          print("Secilen şehir: $sehir" );
          setState(() {
            _secilenSehir = sehir;
          });
        },
        // itemBuilder: (BuildContext context) {
        //   return <PopupMenuEntry<String>>[
        //       PopupMenuItem(child: Text("Ankara"), value: "Ankara", ),
        //       PopupMenuItem(child: Text("İstanbul"), value: "İstanbul",),
        //       PopupMenuItem(child: Text("İzmir"), value: "İzmir",)
        //     ];
        // },
        itemBuilder: (BuildContext context) => renkler.map((renk) => PopupMenuItem(child: Text(renk), value: renk,)).toList(),
      ),
    );
  }
}
