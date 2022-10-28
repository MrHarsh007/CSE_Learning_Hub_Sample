import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/link.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.red[400],
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: "Harsh Porwal".text.xl.bold.make(),
                  accountEmail: "Porwalharsh007@gmail.com"
                      .text
                      .white
                      .caption(context)
                      .make(),
                  currentAccountPicture: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/semIcon/profile.jpg")),
                ),
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.white,
                ),
                title: const Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.3,
                ),
                onTap: () => launch("mailto:porwalharsh007@gmail.com"),
              ),
              ListTile(
                leading: const Icon(
                  SocialIconsFlutter.twitter,
                  color: Colors.white,
                ),
                title: const Text(
                  "Twitter",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.3,
                ),
                onTap: () => launch("https://twitter.com/HarshPorwal29"),
              ),
              ListTile(
                leading: const Icon(
                  SocialIconsFlutter.linkedin,
                  color: Colors.white,
                ),
                title: const Text(
                  "LinkedIn",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.3,
                ),
                onTap: () =>
                    launch("https://linkedin.com/in/harsh-porwal-708645213"),
              ),
              ListTile(
                leading: const Icon(
                  SocialIconsFlutter.github,
                  color: Colors.white,
                ),
                title: const Text(
                  "GitHub",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.3,
                ),
                onTap: () => launch("https://github.com/MrHarsh007"),
              ),
              ListTile(
                leading: const Icon(
                  SocialIconsFlutter.instagram,
                  color: Colors.white,
                ),
                title: const Text(
                  "InstaGram",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.3,
                ),
                onTap: () => launch("https://www.instagram.com/hrporwal_007/"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
