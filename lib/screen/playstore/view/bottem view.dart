import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:play_store/screen/playstore/view/page1.dart';
import 'package:play_store/screen/playstore/view/page2.dart';
import 'package:play_store/screen/playstore/view/provider/homeprovider.dart';
import 'package:provider/provider.dart';

class BottemView extends StatefulWidget {
  const BottemView({Key? key}) : super(key: key);

  @override
  State<BottemView> createState() => _BottemViewState();
}

class _BottemViewState extends State<BottemView> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  List screen=[Page2(),Page1(),];


  @override
  Widget build(BuildContext context) {
    homeProviderfalse=Provider.of<HomeProvider>(context,listen: false);
    homeProvidertrue=Provider.of<HomeProvider>(context,listen: true);

    return DefaultTabController(
      length: 3,
      child: SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(-2, 2)),
                ]),
            child: Row(
              children: [
                SizedBox(width: 16),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Search for apps & games",
                  style: TextStyle(color: Colors.black26, fontSize: 15),
                ),
                SizedBox(
                  width: 47,
                ),
                Icon(
                  Icons.keyboard_voice_outlined,
                  color: Colors.black,
                )
              ],
            ),
          ),
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            indicatorColor: Colors.green.shade500,

            tabs: [
              Tab(
                text: "For you",

              ),
              SizedBox(width: 50,),
              Tab(
                text: "Top charts",

              ),],
          ),
        ),

        body: screen[homeProvidertrue!.i],

        bottomNavigationBar: BottomBarBubble(
          height: 70,
          selectedIndex: homeProvidertrue!.i,
          backgroundColor: Colors.black,
          onSelect: (value){
            homeProviderfalse!.selectIndex(value);
          },
          items: [
            BottomBarItem(iconData: Icons.gamepad_outlined,label: "Games"),
            BottomBarItem(iconData: Icons.apps,label: "Apps"),

          ],

        ),

      )),
    );
  }
}
