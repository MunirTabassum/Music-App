import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  AppBottomBar({Key? key, required this.current_Index, required this.onTap})
      : super(key: key);
  int current_Index;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: false,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: current_Index,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon:
              current_Index == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Album',
          icon: current_Index == 1
              ? Icon(Icons.album)
              : Icon(Icons.album_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Songs',
          icon: current_Index == 2
              ? Icon(Icons.music_note)
              : Icon(Icons.music_note_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Playlist',
          icon: current_Index == 3
              ? Icon(Icons.queue_music)
              : Icon(Icons.queue_music_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Artist',
          icon: current_Index == 4
              ? Icon(Icons.person)
              : Icon(Icons.person_outlined),
        )
      ],
    );
  }
}
