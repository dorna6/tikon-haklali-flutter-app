//
// main page related widgets
//

// package imports
import 'package:flutter/material.dart';

// my imports
import 'theme_widgets.dart';
import 'main_page_appbar.dart';
import 'blessing_widget.dart';
import 'main_text_widget.dart';
import 'parallex_image.dart';

//
//
//
///////////////////////////////////
/////// main page content /////////
///////////////////////////////////

class MainPageBody extends StatefulWidget {
  final BuildContext context;
  final bool isDarkMode;
  final ThemeProvider themeProvider;

  const MainPageBody({
    Key? key,
    required this.context,
    required this.isDarkMode,
    required this.themeProvider,
  }) : super(key: key);

  @override
  _AnimatedTextsState createState() => _AnimatedTextsState();
}

class _AnimatedTextsState extends State<MainPageBody>
    with TickerProviderStateMixin {
  late final AnimationController _controller1;
  late final Animation<double> _animation1;

  late final AnimationController _controller2;
  late final Animation<double> _animation2;

  final ScrollController _scrollController = ScrollController();

  // declare parallex vars
  double rate0 = 0;
  double rate1 = 0;
  double rate2 = 0;
  double rate3 = 0;
  double rate4 = 0;
  double rate5 = 0;
  double rate6 = 0;
  double rate7 = 0;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 0, milliseconds: 0),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: const Duration(seconds: 0, milliseconds: 0),
      vsync: this,
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller1);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(_controller2);

    Future.delayed(const Duration(milliseconds: 000), () {
      _controller1.forward();
    });
    Future.delayed(const Duration(milliseconds: 000), () {
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
    return NotificationListener(
      onNotification: (v) {
        // scroll rate of parallex images
        if (v is ScrollUpdateNotification) {
          setState(() {
            if (v.scrollDelta != null) {
              rate0 += v.scrollDelta! / 1.4;
              rate1 += v.scrollDelta! / 20;
              rate2 += v.scrollDelta! / 4.0;
              rate3 += v.scrollDelta! / 3.0;
              rate4 += v.scrollDelta! / 2.3;
              rate5 += v.scrollDelta! / 1.4;
              rate6 += v.scrollDelta! / 1.3;
              rate7 += v.scrollDelta! / 1.1;
            }
          });
        }
        return true;
      },
      child: Scrollbar(
        controller: _scrollController,
        child: CustomScrollView(
          slivers: <Widget>[
            //
            //
            //
            ////////////////////////////////
            //////// page app bar //////////
            ////////////////////////////////

            SliverAppBar(
              shadowColor: Colors.black87,
              elevation: 5,
              pinned: true,
              expandedHeight: 450.0,
              backgroundColor: Theme.of(context).colorScheme.background,
              toolbarTextStyle: TextStyle(color: Colors.white),

              //
              // app bar
              title: FadeTransition(
                opacity: _animation1,
                child: MainPageAppBar.row(
                    context: context,
                    isDarkMode: widget.isDarkMode,
                    themeProvider: widget.themeProvider),
              ),

              //
              // parallex image
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: false,
                background: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Stack(
                    children: <Widget>[
                      //
                      // background
                      Container(
                        height: double.infinity,
                        color: Color(0xFFe0eff6),
                      ),
                      //
                      // paralex image

                      ParallaxWidget(top: rate7, asset: "assets/img7.png"),
                      ParallaxWidget(top: rate6, asset: "assets/img6.png"),
                      ParallaxWidget(top: rate5, asset: "assets/img5.png"),
                      ParallaxWidget(top: rate4, asset: "assets/img4.png"),
                      ParallaxWidget(top: rate3, asset: "assets/img3.png"),
                      ParallaxWidget(top: rate2, asset: "assets/img2.png"),

                      // Positioned(
                      //   width: MediaQuery.of(context).size.width,
                      //   top: rate0 + 80,
                      //   child: FadeTransition(
                      //     opacity: _animation2,
                      //     child:

                          ParallaxWidgetText(
                            top: rate0,
                            main_text:
                                "אַךְ בַּזֶּה אֲנִי חָזָק בְּיוֹתֵר שֶׁאֵלּוּ הָעֲשָׂרָה מִזְמוֹרֵי תְּהִלִּים מוֹעִילִים מְאֹד מְאֹד, וְאָמַר שֶׁהוּא ",
                            sub_text: "תִּקּוּן הַכְּלָלִי.",
                            opacity: 1,
                          ),

                      //   ),
                      // ),

                      // ParallaxWidgetText(
                      //   top: rate0,
                      //   main_text:
                      //       "אַךְ בַּזֶּה אֲנִי חָזָק בְּיוֹתֵר שֶׁאֵלּוּ הָעֲשָׂרָה מִזְמוֹרֵי תְּהִלִּים מוֹעִילִים מְאֹד מְאֹד, וְאָמַר שֶׁהוּא ",
                      //   sub_text: "תִּקּוּן הַכְּלָלִי.",
                      //   opacity: 1,),

                      ParallaxWidget(top: rate1, asset: "assets/img1.png"),
                    ],
                  ),
                ),
              ),
            ),

            //
            //
            //
            /////////////////////////////
            //////// page body //////////
            /////////////////////////////
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      // main text
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 0.0),
                        child: mainTextWidget(context: context),
                      ),
                      //
                      // Spacer between elements
                      SizedBox(
                          height: 15, width: MediaQuery.of(context).size.width),
                      //
                      // blessing widget
                      BlessingWidget(),
                      //
                      // end spacer
                      SizedBox(
                          height: 50, width: MediaQuery.of(context).size.width),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
