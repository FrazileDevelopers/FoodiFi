import 'package:flutter/material.dart';
import 'package:foodifi/constants/FFRoutes.dart';
import 'package:foodifi/constants/FoodiFi.dart';
import 'package:foodifi/constants/colors.dart';
import 'package:foodifi/pages/favourite.dart';
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
        initialRoute: FFRoutes.onboard,
        routes: {
          FFRoutes.mainpage: (BuildContext context) => MainPage(),
          FFRoutes.onboard: (BuildContext context) => Onboarding(),
          FFRoutes.login: (BuildContext context) => HomePage(),
          FFRoutes.welcome: (BuildContext context) => Welcome(),
          FFRoutes.phone: (BuildContext context) => Phone(),
          FFRoutes.userhome: (BuildContext context) => UserHomePage(),
          FFRoutes.restaurant: (BuildContext context) => Restaurant(),
          FFRoutes.restaurantMenu: (BuildContext context) => RestaurantMenu(),
        },
      );
}
