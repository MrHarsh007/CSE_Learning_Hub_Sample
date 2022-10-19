import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const HelpPage());
}

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: sem3Page.darkBluisColor,
          backgroundColor: Colors.teal,

          body: Column(children: [
            30.heightBox,
            ContactUs(
              logo: const AssetImage("assets/semIcon/profile.jpg"),
              email: 'Porwalharsh70@gmail.com',
              companyName: 'Harsh Porwal',
              dividerThickness: 8,
              dividerColor: Colors.transparent,
              githubUserName: 'MrHarsh007',
              linkedinURL:
                  'https://www.linkedin.com/in/harsh-porwal-708645213/',
              tagLine: 'Computer Engineer',
              twitterHandle: 'HarshPorwal29   ',
              cardColor: Colors.white,
              companyColor: const Color.fromARGB(225, 247, 238, 238),
              taglineColor: Colors.black54,
              textColor: Colors.black,
            ).py32(),
            "Email us to add your MATERIAL in this app."
                .text
                .xl
                .caption(context)
                .make()
                .expand()
          ]),
        ),
      ),
    );
  }
}
