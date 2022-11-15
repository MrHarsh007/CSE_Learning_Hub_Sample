import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:gtu_material/pages/sem_pages/sem3.dart';

import '../../homeDetails_page.dart';
import '../../syllabus_page.dart';

import '../../models/catelog.dart';
import 'catelog_showImage.dart';

class showIteam extends StatefulWidget {
  final catIteam catelog;

  showIteam({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  State<showIteam> createState() => _showIteamState();
}

class _showIteamState extends State<showIteam> {
  late final RewardedAd rewardedAd;
  final String rewardedAdUnitId =
      "ca-app-pub-9656130517647594/3355455993"; //sample ad unit id

  //load ad
  @override
  void initState() {
    super.initState();

    //load ad here...
    _loadRewardedAd();
  }

  //method to load an ad
  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        //when failed to load
        onAdFailedToLoad: (LoadAdError error) {
          print("Failed to load rewarded ad, Error: $error");
        },
        //when loaded
        onAdLoaded: (RewardedAd ad) {
          print("$ad loaded");
          // Keep a reference to the ad so you can show it later.
          rewardedAd = ad;

          //set on full screen content call back
          _setFullScreenContentCallback();
        },
      ),
    );
  }

  //method to set show content call back
  void _setFullScreenContentCallback() {
    if (rewardedAd == null) return;
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      //when ad  shows fullscreen
      onAdShowedFullScreenContent: (RewardedAd ad) =>
          print("$ad onAdShowedFullScreenContent"),
      //when ad dismissed by user
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        print("$ad onAdDismissedFullScreenContent");

        //dispose the dismissed ad
      },
      //when ad fails to show
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        print("$ad  onAdFailedToShowFullScreenContent: $error ");
        //dispose the failed ad
      },

      //when impression is detected
      onAdImpression: (RewardedAd ad) => print("$ad Impression occured"),
    );
  }

  //show ad method
  void _showRewardedAd() {
    //this method take a on user earned reward call back
    rewardedAd.show(
        //user earned a reward
        onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) {
      //reward user for watching your ad
      num amount = rewardItem.amount;
      print("You earned: $amount");
    });
  }

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(widget.catelog.id.toString()),
            child: showImage(image: widget.catelog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.catelog.name.text.bold.lg
                .color(sem3Page.darkBluisColor)
                .make(),
            widget.catelog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                // "\$${catelog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeDetailsPage(catelog: widget.catelog)));
                      _showRewardedAd();
                    }),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[400]),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Material".text.make()),

                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SyllabusPage(catelog: widget.catelog)));
                      _showRewardedAd();
                    }),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[400]),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Syllabus".text.make())
              ],
            ).pOnly(right: 1)
          ],
        ))
      ],
    )).white.roundedSM.square(140).make().py16();
  }
}
