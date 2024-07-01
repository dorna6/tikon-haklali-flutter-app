//
// main page related widgets
//

// package imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// my imports
import 'theme_widgets.dart';
import 'main_image_widgets.dart';
import 'dark_mode_switch.dart';
import 'blessing_widget.dart';
import 'main_text_widget.dart';

//
//
//
////////////////////////////////
/////// main page appbar ///////
////////////////////////////////

class MainPageAppBar {
  static Row row({
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
  }) {
    return Row(
      children: [
        SizedBox(width: 1),
        DarkModeSwitch.sw(
          hight: 50,
          context: context,
          isDarkMode: isDarkMode,
          themeProvider: themeProvider,
        ),
        Spacer(),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background.withOpacity(0.9),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text(
              'התיקון הכללי',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'DavidLibre',
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//
//
//
////////////////////////////////
/////// main page body /////////
////////////////////////////////

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

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 1, milliseconds: 0),
      vsync: this,
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller1);

    Future.delayed(const Duration(milliseconds: 500), () {
      _controller1.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shadowColor: Colors.black87,
            elevation: 5,
            pinned: true,
            expandedHeight: 350.0,
            backgroundColor: Theme.of(context).colorScheme.background,
            //
            title: FadeTransition(
              opacity: _animation1,
              child: MainPageAppBar.row(
                  context: context,
                  isDarkMode: widget.isDarkMode,
                  themeProvider: widget.themeProvider),
            ),

            //
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: false,
              background: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: MainPageBigImage(context: context),
              ),
            ),
            //
          ),
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

                    // Spacer between elements
                    SizedBox(
                        height: 15, width: MediaQuery.of(context).size.width),

                    // blessing widget
                    BlessingWidget(),

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
    );
  }
}
