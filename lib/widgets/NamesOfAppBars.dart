import 'package:flutter/material.dart';

class NamesOfAppBars extends StatelessWidget {
  const NamesOfAppBars({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.0),
        children: [
          TextSpan(
              text: title.substring(0, 1),
              style: TextStyle(color: Colors.deepPurpleAccent.shade200)),
          TextSpan(text: title.substring(1)),
        ],
      ),
    );
  }
}
