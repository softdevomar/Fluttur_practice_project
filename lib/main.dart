import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:practice_project/button_desable_and_Enable/desable_and_Enable.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.blue
  ));
  WidgetsFlutterBinding.ensureInitialized();
   MobileAds.instance.initialize();
  await firebase_core.Firebase.initializeApp();


  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:enable_desable(),
    );
  }
}
