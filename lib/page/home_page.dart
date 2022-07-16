import 'package:flutter/material.dart';
import 'package:fzn_responsive_web/fzn_responsive_web.dart';
import 'package:fzn_responsive_web/appbar/appbar_menu_button.dart';
import 'package:fzn_test_web/helper/fade_route.dart';
import 'package:fzn_test_web/page/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // debugPrint("width now: $width");
    List<Widget> listMenu = [
      AppBarMenuButton(
        menuText: Text("Menu 1"),
        currentIndex: currentIndex,
        pageIndex: 1,
        onTap: () {
          Navigator.push(
            context,
            FadeInRoute(
              page: const HomePage(),
              routeName: '/home',
            ),
          );
        },
      ),
      SizedBox(width: 20),
      AppBarMenuButton(
        menuText: Text("Menu 2"),
        currentIndex: currentIndex,
        pageIndex: 2,
        onTap: () {
          Navigator.push(
            context,
            FadeInRoute(
              page: const SecondPage(),
              routeName: '/secondpage',
            ),
          );
        },
      ),
    ];
    return WebPageWidget(
      pageTitle: "Page Title",
      backgroundDecoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
      fullSizeScaffold: FullSizeScaffoldPage(
        body: Center(
          child: Text("Halaman Home"),
        ),
        appBar: AppBarMenu.instance.appBar(
          currentSpace: width,
          currentIndex: 1,
          listMenu: listMenu,
          context: context,
          onTapToHomePage: () {},
        ),
      ),
      halfSizeScaffold: HalfSizeScaffoldPage(
        body: Center(
          child: Text("Halaman Home"),
        ),
        appBar: AppBarMenu.instance.appBar(
          currentSpace: width,
          currentIndex: 1,
          listMenu: listMenu,
          context: context,
          onTapToHomePage: () {},
          iconColor: Colors.white,
        ),
        drawer: Container(
          width: width * 0.4,
          color: Colors.blueGrey.shade300,
          child: ListView(
            children: listMenu,
          ),
        ),
      ),
    );
  }
}
