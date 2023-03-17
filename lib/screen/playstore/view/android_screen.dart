import 'package:flutter/material.dart';
import 'package:play_store/screen/playstore/view/page1.dart';
import 'package:play_store/screen/playstore/view/page2.dart';

class AndroidScreen extends StatefulWidget {
  const AndroidScreen({Key? key}) : super(key: key);

  @override
  State<AndroidScreen> createState() => _AndroidScreenState();
}

class _AndroidScreenState extends State<AndroidScreen> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      Page1(),
                      Page2(),
                    ],
                  ),
                ),
              ],
            ),

        )),
      ),
    );
  }
}
