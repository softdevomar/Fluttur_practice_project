import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:practice_project/adhelper/adsmanager.dart';
class showads_Page extends StatefulWidget {
  const showads_Page({Key? key}) : super(key: key);

  @override
  State<showads_Page> createState() => _showads_PageState();
}

class _showads_PageState extends State<showads_Page> {


  // TODO: Add _bannerAd
  late BannerAd _bannerAd;

  // TODO: Add _isBannerAdReady
  bool _isBannerAdReady = false;

  void initState() {
    _bannerAd = BannerAd(
     size: AdSize.banner,adUnitId:AdHelper.bannerAdUnitId,
    listener: BannerAdListener(
    onAdLoaded: (_) {
    setState(() {
    _isBannerAdReady = true;
    });
    },
    onAdFailedToLoad: (ad, err) {
    print('Failed to load a banner ad: ${err.message}');
    _isBannerAdReady = false;
    ad.dispose();
    },
    ),request: AdRequest())..load();


  }
  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {

    return Scaffold(

    body: SafeArea(
    child: Stack(
    children: [
    Center(

    ),
    // TODO: Display a banner when ready
    if (_isBannerAdReady)
    Align(
    alignment: Alignment.topCenter,
    child: Container(
    width: _bannerAd.size.width.toDouble(),
    height: _bannerAd.size.height.toDouble(),
    child: AdWidget(ad: _bannerAd),
    ),
    ),
      Text("hllwo")
    ],
    ),
    ),

    );
  }
}

