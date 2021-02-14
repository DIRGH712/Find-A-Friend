import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Connect",
          style: GoogleFonts.notoSans(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
