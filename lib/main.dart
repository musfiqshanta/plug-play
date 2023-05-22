import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/home/views/home_view.dart';
import 'app/modules/signIn/views/sign_in_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",

      ///  initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
          cardTheme: CardTheme(
              color: Color.fromARGB(158, 245, 246, 250),
              elevation: 20,
              shadowColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          primaryColor: Color(0xff3c7fb1),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff3c7fb1),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xff16a085),
            ),
          ),
          textTheme: TextTheme(
              titleSmall: TextStyle(fontSize: 16, color: Colors.white),
              bodySmall: TextStyle(fontSize: 16, color: Colors.white),
              bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
              bodyLarge: TextStyle(fontSize: 22),
              headlineLarge: TextStyle(fontSize: 40),
              headlineMedium: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
              headlineSmall: TextStyle(fontSize: 28, color: Colors.white))),

      home: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  Widget? _child = HomeView();
  void _handleNavigationChange(int index) {
    print(index);
    setState(() {
      switch (index) {
        case 0:
          //_child = GameView();
          break;
        case 1:
          _child = HomeView();
          break;
        case 2:
          _child = SignInView();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.fastLinearToSlowEaseIn,
        switchOutCurve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 1000),
        child: _child,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.sports_outlined, extras: {"label": "partner"}),
          FluidNavBarIcon(icon: Icons.home, extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              icon: Icons.account_circle_sharp, extras: {"label": "partner"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(
          iconUnselectedForegroundColor: Colors.white,
          iconSelectedForegroundColor: Colors.white,
          barBackgroundColor: Color(0xff3c7fb1),
        ),
        scaleFactor: 1.5,
        defaultIndex: 1,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }
}
