import 'package:flutter/material.dart';
import 'package:foodifi/constants/FoodiFi.dart';
import 'package:foodifi/constants/colors.dart';
import 'package:foodifi/pages/home/homePage.dart';
import 'package:foodifi/pages/userhome/mainpage.dart';
import 'package:foodifi/pages/onboarding/onboarding.dart';
import 'package:foodifi/pages/phone/phone.dart';
import 'package:foodifi/pages/restaurantMenu/restaurantMenu.dart';
import 'package:foodifi/pages/restaurantProfile/restProfile.dart';
import 'package:foodifi/pages/userhome/userhome.dart';
import 'package:foodifi/pages/welcome/welcome.dart';

import '../../constants/FoodiFi.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: FoodiFi.appName,
        debugShowCheckedModeBanner: false,
        // debugShowMaterialGrid: true,
        // showSemanticsDebugger: true,
        // showPerformanceOverlay: true,
        // checkerboardOffscreenLayers: true,
        // checkerboardRasterCacheImages: true,
        theme: ThemeData(
          fontFamily: FoodiFi.googleFamily,
          primarySwatch: Colors.red,
          primaryColor: FiColors.appColor,
          canvasColor: FiColors.canvasColor,
          primaryIconTheme: IconThemeData(
            color: FiColors.iconColor,
          ),
          disabledColor: Colors.grey,
          primaryTextTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'foodifi',
                bodyColor: FiColors.textColor,
                displayColor: FiColors.textColor,
              ),
          brightness: Brightness.light,
        ),
        initialRoute: FoodiFi.mainpage,
        routes: {
          FoodiFi.mainpage: (BuildContext context) => MainPage(),
          FoodiFi.onboard: (BuildContext context) => Onboarding(),
          FoodiFi.login: (BuildContext context) => HomePage(),
          FoodiFi.welcome: (BuildContext context) => Welcome(),
          FoodiFi.phone: (BuildContext context) => Phone(),
          FoodiFi.userhome: (BuildContext context) => UserHomePage(),
          FoodiFi.restaurant: (BuildContext context) => Restaurant(),
          FoodiFi.restaurantMenu: (BuildContext context) => RestaurantMenu(),
        },
      );
}
