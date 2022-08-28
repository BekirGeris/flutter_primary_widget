import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            onLongPress: () {
              debugPrint("uzun basıldı");
            },
            child: Text("Text Button")),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text button with icon"),
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.grey;
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.teal),
            //overlayColor: MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.black),
            child: Text("Elevated Button")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.abc),
            label: Text("ElevatedButton.icon")),
        OutlinedButton(
          onPressed: () {},
          child: Text("OutlinedButton"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add_alarm_rounded),
          label: Text("OutlinedButton"),
          style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.black12, width: 2)),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add_alarm_rounded),
          label: Text("OutlinedButton"),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.red, width: 4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18))),
          ),
        ),
      ],
    );
  }
}
