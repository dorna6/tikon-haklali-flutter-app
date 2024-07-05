import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'blessing_widget.dart';
import 'main_text_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parallax",
      // debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rate0 = 0;
  double rate1 = 0;
  double rate2 = 0;
  double rate3 = 0;
  double rate4 = 0;

  String asset = "";
  double top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              if (v.scrollDelta != null) {
                rate0 -= v.scrollDelta! / 1.7;
                rate1 -= v.scrollDelta! / 1.6;
                rate2 -= v.scrollDelta! / 1.35;
                rate3 -= v.scrollDelta! / 1.2;
                rate4 -= v.scrollDelta! / 1;

              }
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFe0eff6),
            ),
            ParallaxWidget(top: rate0, asset: "assets/img5.png"),
            ParallaxWidget(top: rate1, asset: "assets/img4.png"),
            ParallaxWidget(top: rate2, asset: "assets/img3.png"),
            ParallaxWidget(top: rate3, asset: "assets/img2.png"),
            ParallaxWidget(top: rate4, asset: "assets/img1.png"),
            ListView(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.95,
                  color: Colors.transparent,
                ),

                Container(
                  color: Theme.of(context).colorScheme.background,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 70),
                  child:

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //
                    // main text

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 0.0),
                      child: mainTextWidget(context: context),
                    ),

                    // Spacer between elements
                    SizedBox(
                        height: 15, width: MediaQuery.of(context).size.width),

                    // blessing widget
                    BlessingWidget(),

                    // end spacer
                    SizedBox(
                        height: 50, width: MediaQuery.of(context).size.width),
                  ],
                )




                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key? key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: top,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset("$asset", fit: BoxFit.fitWidth),
      ),
    );
  }
}