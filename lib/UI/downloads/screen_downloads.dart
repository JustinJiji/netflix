import 'package:flutter/material.dart';
import 'package:netflix/UI/widgets/app_bar_widgets.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Text(
          'ScreenDownloads',
        ),
      ),
    );
  }
}
