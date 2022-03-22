import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/screens/tiktactoe_screen.dart';
import 'package:tiktactoezzz/ui/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      initialRoute: '/tiktactoeScreen',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(
          name: '/tiktactoeScreen',
          page: () => TikTacToeScreen(),
        )
      ],
    );
  }
}
