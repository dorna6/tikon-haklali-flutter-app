/*
how to create a copy of the project:
1. create a new empty flutter project

2. delet the 'lib' and 'test' folder

3. copy from the original project and folders: 'lib', 'fonts', 'assets' and
  past in the new project.

4. delet pubspec.yaml and copy from the original project

5. in the project tree open: 'android/app/src/main/AndroidManifest.xml'
  edit this:
  <manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application
        android:label="<YOUR-APP-NAME>"

6. in the teminal run the commands:
  'flutter pub get'
  'flutter pub run flutter_launcher_icons:main'

 */

//
//
//
///////////////////////
/////// imports ///////
///////////////////////

// package imports
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// my imports
import 'theme_widgets.dart';
import 'main_page_widgets.dart';
import 'main_text_widget.dart';

//
//
//
///////////////////////////
/////// entry point ///////
///////////////////////////

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // theme provider object
    final themeProvider = Provider.of<ThemeProvider>(context);
    // check if dark mode is set
    bool isDarkMode = themeProvider.getCurrentTheme();

    // main page widgets
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: MainPageBody.body(
        context: context,
        isDarkMode: isDarkMode,
        themeProvider: themeProvider,
      ),
    );
  }
}
