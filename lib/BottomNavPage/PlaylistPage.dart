import 'package:flutter/material.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: NamesOfAppBars(title: 'Playlist'));
  }
}
