import 'package:flutter/material.dart';

ValueNotifier<int> indexBottomNavNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexBottomNavNotifier,
      builder: (ctx, int newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: newIndex,
          onTap: (index) {
            indexBottomNavNotifier.value = index;
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
              ),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_emotions_outlined,
              ),
              label: 'Fast Laugh',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_down_outlined,
              ),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
