import 'package:flutter/material.dart';
import 'package:netflix/UI/downloads/screen_downloads.dart';
import 'package:netflix/UI/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/UI/home/screen_home.dart';
import 'package:netflix/UI/main_page/widgets/bottom_nav_bar.dart';
import 'package:netflix/UI/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/UI/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  final _pages = const [
    ScreenHome(),
    ScreenNewAndLaugh(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexBottomNavNotifier,
          builder: (ctx, int newIndex, _) {
            return _pages[newIndex];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
