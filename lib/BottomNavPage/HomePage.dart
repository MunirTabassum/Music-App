import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FRTSButtons(
                text: 'Favorites',
                backgroundColor: Colors.red.shade100,
                foregroundColor: Colors.red,
                icon: Icons.favorite,
                splashColor: Colors.red,
                onTap: () {}),
            FRTSButtons(
              text: 'Recent',
              backgroundColor: Colors.amber.shade100,
              foregroundColor: Colors.yellow.shade800,
              splashColor: Colors.amber,
              icon: Icons.favorite,
              onTap: () {},
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FRTSButtons(
              text: 'TrackPicker',
              // backgroundColor: Colors.deepPurple.shade50,
              // foregroundColor: Colors.deepPurple,
              backgroundColor: Colors.blue.shade100,
              foregroundColor: Colors.blue,
              icon: Icons.folder_open,
              splashColor: Colors.blue,
              onTap: () {},
            ),
            FRTSButtons(
              text: 'Shuffle',
              backgroundColor: Colors.greenAccent.shade100,
              foregroundColor: Colors.greenAccent.shade700,
              icon: Icons.shuffle,
              splashColor: Colors.greenAccent,
              onTap: () {},
            ),
          ]),
        ],
      ),
    );
  }
}

class FRTSButtons extends StatelessWidget {
  const FRTSButtons(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.foregroundColor,
      this.icon,
      required this.onTap,
      this.splashColor})
      : super(key: key);
  final icon;
  final text;
  final backgroundColor;
  final foregroundColor;
  final Callback onTap;
  final splashColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: foregroundColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style:
                TextStyle(color: foregroundColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          primary: splashColor,
          minimumSize: Size(150, 45),
          alignment: Alignment.centerLeft),
    );
  }
}
