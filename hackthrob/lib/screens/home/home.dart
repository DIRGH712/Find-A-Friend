import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthrob/screens/home/show_profiles.dart';
import 'package:hackthrob/screens/login/login_screen.dart';
import 'package:hackthrob/services/authentication_services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find A Friend",
          style: GoogleFonts.notoSans(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Let's be Friends!",
                  style: headlineStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(34.0),
                  child: Text(
                    "Click on Get Started button to find random friends",
                    style: contentStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                RaisedButton(
                  child: Text("Get Started"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowProfiles()));
                  },
                  color: Colors.greenAccent,
                ),
                RaisedButton(
                  child: Text("Sign Out"),
                  onPressed: () {
                    context.read<AuthenticationService>().signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  color: Colors.red[400],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var headlineStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
var contentStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
);
