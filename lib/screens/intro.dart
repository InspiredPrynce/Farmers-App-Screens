import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:getwidget/components/intro_screen/gf_intro_screen.dart';
import 'package:getwidget/components/intro_screen/gf_intro_screen_bottom_navigation_bar.dart';

class IntroScreen extends StatefulWidget {
    const IntroScreen({super.key});

    @override
    State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
    late PageController _pageController;
    late List<Widget> slideList;
    late int initialPage;
    late int initialIndex = 0;

    @override
    void initState() {
        _pageController = PageController(initialPage: 2);
        initialPage = _pageController.initialPage;
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: GFIntroScreen(
                color: Colors.blueGrey,
                slides: slides(),
                pageController: _pageController,
                currentIndex: initialIndex,
                pageCount: 5,
                introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
                    pageController: _pageController,
                    pageCount: slideList.length,
                    currentIndex: initialPage,
                    onForwardButtonTap: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                    },
                    onBackButtonTap: () {
                        _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                    },
                    navigationBarColor: Colors.white,
                    showDivider: false,
                    inactiveColor: Colors.grey,
                    activeColor: GFColors.SUCCESS,
                ),
            ),
        );
    }

    List<Widget> slides() {
        slideList = [
            Container(
                child: GFImageOverlay(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(top: 70.0, left: 20),
                                child: Text(
                                    'Welcome!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 25),
                                ),
                            ),
                        ],
                    ),
                    color: Colors.orange,
                    image: const AssetImage('assets image here'),
                    boxFit: BoxFit.cover,
                    colorFilter:
                    ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
                    borderRadius: BorderRadius.circular(5),
                ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                        image: AssetImage('assets image here'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.darken),
                    )),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                        image: AssetImage('assets image here'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.darken),
                    )),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                        image: AssetImage('assets image here'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.darken),
                    )),
            ),
        ];
        return slideList;
    }

}
