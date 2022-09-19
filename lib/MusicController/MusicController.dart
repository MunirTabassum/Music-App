import 'dart:async';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/MusicModel/MusicModel.dart';

class MusicController extends GetxController {
  MusicModel? currentMusic;
  bool isSongSelected = false;
  bool isMusicPlaying = false;
  final audioPlayer = AudioPlayer();
  Timer? currentSongTimer;

  selectNewSong() {
    if (this.isSongSelected == false) {
      this.isSongSelected = true;
      update();
    }
  }

  playNewSong(title, path) async {
    if (currentSongTimer != null) currentSongTimer!.cancel();
    if (this.isMusicPlaying) audioPlayer.stop();
    var duration = await audioPlayer.setFilePath(path);
    currentMusic = MusicModel(title, path, duration!);
    currentSongTimer = _songTimer();
    audioPlayer.play();
    this.isMusicPlaying = true;
    print(duration.inSeconds);
    update();
  }

  Timer _songTimer() {
    return Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == currentMusic!.duration.inSeconds) {
        timer.cancel();
      }
      // print(audioPlayer.currentIndex);
      // print(audioPlayer.position.inSeconds);
      update();
    });
  }

  onPlayPausePressed() {
    if (this.isMusicPlaying) {
      audioPlayer.stop();
      currentSongTimer!.cancel();
    } else {
      audioPlayer.play();
      currentSongTimer = _songTimer();
    }
    this.isMusicPlaying = !this.isMusicPlaying;
    update();
  }

  int? get currentSongMaxSeconds {
    if (currentMusic != null) return this.currentMusic!.duration.inSeconds % 60;
    return 0;
  }

  int get currentSongMaxMinutes {
    if (currentMusic == null) return 0;
    return this.currentMusic!.duration.inMinutes;
  }

  int get currentPositionOfSong {
    return audioPlayer.position.inSeconds;
  }

  String get currentSongMaximumTime {
    return '${formattedTime(currentSongMaxMinutes)}:${formattedTime(currentSongMaxSeconds)}';
  }

  String get currentSongCurrentTime {
    int sec = (audioPlayer.position.inSeconds) % 60;
    int min = (audioPlayer.position.inSeconds / 60).toInt();
    return '${formattedTime(min)}:${formattedTime(sec)}';
  }

  String formattedTime(value) {
    if (value < 10) return '0$value';
    return '$value';
  }

  void set currentPositionOfSong(int value) {
    audioPlayer.seek(Duration(seconds: value));
  }
}
