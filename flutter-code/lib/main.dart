import 'package:alfaizkhan_github_io/screen/component/home/home_banner.dart';
import 'package:alfaizkhan_github_io/screen/main/home_screen.dart';
import 'package:alfaizkhan_github_io/theme/dark_theme_provider.dart';
import 'package:alfaizkhan_github_io/theme/styles.dart';
import 'package:alfaizkhan_github_io/util/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constant/constant_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: myName,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => MenuController(),
                ),
              ],
              child: const HomeScreen(
                children: [
                  HomeBanner(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
