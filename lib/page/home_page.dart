import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // return WebPageWidget.customScaffold(
    //   pageTitle: "1 Page",
    //   // index: 2,
    //   index: currentIndex,
    //   backgroundDecoration: const BoxDecoration(
    //     color: Colors.blueGrey,
    //   ),
    //   halfSizeScaffold: HalfSizeScaffoldPage(
    //     // index: 2,
    //     index: currentIndex,
    //     appBar: const AppBarMenu(
    //       appBarTitle: AppBarTitle.text(
    //         text: Text("1 Page"),
    //       ),
    //       // listMenu: listMenu,
    //     ),
    //     body: const Center(
    //       child: Text("Halaman 1"),
    //     ),
    //     drawer: Container(
    //       width: width * 0.4,
    //       color: Colors.blueGrey.shade300,
    //       child: ListView(
    //         children: ResponsiveMPAWebConfig.listMenu,
    //       ),
    //     ),
    //     typeDrawer: TypeDrawer.endDrawer,
    //   ),
    //   fullSizeScaffold: FullSizeScaffoldPage(
    //     index: currentIndex,
    //     // index: 2,
    //     appBar: const AppBarMenu(
    //       appBarTitle: AppBarTitle.text(
    //         text: Text("1 Page"),
    //       ),
    //       // listMenu: listMenu,
    //     ),
    //     body: const Center(
    //       child: Text("Halaman 1"),
    //     ),
    //   ),
    // );
    // debugPrint("TESTING HOME PAGE");
  // ResponsiveMPAWebConfig.instance.activeIndex = 1;
    return WebPageWidget(
      pageTitle: "Home Page",
      index: 1,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Home Page"),
        ),
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Halaman Home"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Halaman Home"),
      ),
      drawer: const AppDrawer(),
    );
  }
}
