import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:gtu_material/darwer.dart';
import 'package:url_launcher/url_launcher.dart';
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
          backgroundColor: Colors.red[400],

          body: SingleChildScrollView(
            child: Column(children: [
              30.heightBox,
              ContactUs(
                logo: const AssetImage("assets/semIcon/profile2.jpg"),
                email: 'Harshgtumaterialapp@gmail.com',
                companyName: 'Harsh Porwal',
                dividerThickness: 8,
                dividerColor: Colors.transparent,
                githubUserName: 'MrHarsh007',
                linkedinURL:
                    'https://www.linkedin.com/in/harsh-porwal-708645213/',
                tagLine: 'Computer Engineer',
                twitterHandle: 'HarshPorwal29',
                cardColor: Colors.white,
                companyColor: Colors.white,
                taglineColor: Colors.black87,
                textColor: Colors.black,
              ).py32(),
              "Email us to add your MATERIAL in this app."
                  .text
                  .xl
                  .white
                  .caption(context)
                  .make(),
              15.heightBox,
              ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
                      onPressed: () => openEmail(
                          toEmail: "Harshgtumaterialapp@gmail.com",
                          subject: "Add Material TO GTU Material Application",
                          body:
                              "Your Name :  \nYour WhatsApp Number : \nSemester : \nSubject With Subject Code :  \nYour CollegeName :"),
                      child: "Click Here To Add Your Material"
                          .text
                          .white
                          .base
                          .make())
                  .py16(),
            ]),
          ),

          drawer: MyDrawer(),
        ),
      ),
    );
  }

  openEmail(
      {required String toEmail,
      required String subject,
      required String body}) {
    final url =
        "mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}";
    launch(url);
  }
}
