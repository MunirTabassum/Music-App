import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search for artist,tracks or albums,songs,playlist',
            ),
          ),
        ),
        body: Center(
          child: Text(
            'Nothing to show',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
