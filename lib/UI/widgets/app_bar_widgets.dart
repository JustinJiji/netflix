import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          'Downloads',
          style: GoogleFonts.montserrat(
            fontSize: 20,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: Color.fromARGB(255, 5, 71, 71),
        ),
        kWidth,
      ],
    );
  }
}
