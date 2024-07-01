// /*
// how to create a copy of the project:
// 1. create a new empty flutter project
//
// 2. delet the 'lib' and 'test' folder
//
// 3. copy from the original project and folders: 'lib', 'fonts', 'assets' and
//   past in the new project.
//
// 4. delet pubspec.yaml and copy from the original project
//
// 5. in the project tree open: 'android/app/src/main/AndroidManifest.xml'
//   edit this:
//   <manifest xmlns:android="http://schemas.android.com/apk/res/android">
//     <application
//         android:label="<YOUR-APP-NAME>"
//
// 6. in the teminal run the commands:
//   'flutter pub get'
//   'flutter pub run flutter_launcher_icons:main'
//
//  */
//
// //
// //
// //
// ///////////////////////
// /////// imports ///////
// ///////////////////////
//
// // package imports
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// // my imports
// import 'theme_widgets.dart';
// import 'main_page_widgets.dart';
// import 'main_text_widget.dart';
//
// //
// //
// //
// ///////////////////////////
// /////// entry point ///////
// ///////////////////////////
//
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: Provider.of<ThemeProvider>(context).themeDataStyle,
//       home: MainPage(),
//     );
//   }
// }
//
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // theme provider object
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     // check if dark mode is set
//     bool isDarkMode = themeProvider.getCurrentTheme();
//
//     // main page widgets
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       body: MainPageBody.body(
//         context: context,
//         isDarkMode: isDarkMode,
//         themeProvider: themeProvider,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Multiple FadeTransitions Example')),
        body: Center(child: AnimatedTexts()),
      ),
    );
  }
}

class AnimatedTexts extends StatefulWidget {
  @override
  _AnimatedTextsState createState() => _AnimatedTextsState();
}

class _AnimatedTextsState extends State<AnimatedTexts> with TickerProviderStateMixin {
  late final AnimationController _controller1;
  late final AnimationController _controller2;
  late final Animation<double> _animation1;
  late final Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller1);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(_controller2);

    Future.delayed(const Duration(milliseconds: 1100), () {
      _controller1.forward();
      _controller2.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FadeTransition(
          opacity: _animation1,
          child: Text(
            'First Text',
            style: TextStyle(fontSize: 24),
          ),
        ),
        SizedBox(height: 20),
        FadeTransition(
          opacity: _animation2,
          child: Text(
            'Second Text',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}


