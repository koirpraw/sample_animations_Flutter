
import 'package:animation_samples/screens/animatedIconPage.dart';
import 'package:animation_samples/screens/expandCardPage.dart';
import 'package:animation_samples/screens/progressButtonPage.dart';
import 'package:animation_samples/utils/themeservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'components/menuCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> menuItems = [
    'Expandable',
    'Slidable Card',
    'TinderCards',
    'SlimeyCards'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SFX-Animation",),
          actions: [
            IconButton(onPressed: (){
              ThemeServices().changeThemeMode();
            }, icon: Icon(Icons.nightlight_round,color: Theme.of(context).focusColor,))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              MenuCard(menuTitle: 'Expandable Menu',navRoute: ()=>Get.to(ExpandCard()),),
              MenuCard(menuTitle: 'Animated Icon', navRoute: ()=> Get.to(MyAnimatedIconPage())),
              MenuCard(menuTitle: 'Progress State Button', navRoute: ()=>Get.to(ProgressStateButtonPage()))
            ],
          ),
        ));
  }
}


