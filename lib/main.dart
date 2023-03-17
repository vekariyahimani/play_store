import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cp;
import 'package:play_store/screen/iosplaystore/view/ios_screen.dart';
import 'package:play_store/screen/playstore/view/android_screen.dart';
import 'package:play_store/screen/playstore/view/bottem%20view.dart';
import 'package:play_store/screen/playstore/view/page1.dart';
import 'package:play_store/screen/playstore/view/page2.dart';
import 'package:play_store/screen/playstore/view/provider/homeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    (Platform.isAndroid) ? android() : ios(),
  );
}

Widget android() {
  return ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '4',
      routes: {
        '/': (context) => AndroidScreen(),
        '2':(context) => Page1(),
        '3':(context) => Page2(),
        '4':(context) => BottemView(),

      },
    ),
  );
}

Widget ios() {
  return cp.CupertinoApp(
    theme: cp.CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => IosScreen(),
    },
  );
}
