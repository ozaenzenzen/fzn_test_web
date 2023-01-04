import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // static int currentIndex = 2;
  // @override
  // Widget build(BuildContext context) {
  // double width = MediaQuery.of(context).size.width;
  //   return WebPageWidget.customScaffold(
  //     pageTitle: "2 Page",
  //     // index: 2,
  //     index: currentIndex,
  //     backgroundDecoration: const BoxDecoration(
  //       color: Colors.blueGrey,
  //     ),
  //     halfSizeScaffold: HalfSizeScaffoldPage(
  //       // index: 2,
  //       index: currentIndex,
  //       appBar: const AppBarMenu(
  //         appBarTitle: AppBarTitle.text(
  //           text: Text("2 Page"),
  //         ),
  //         // listMenu: listMenu,
  //       ),
  //       body: const Center(
  //         child: Text("Halaman 2"),
  //       ),
  //       drawer: Container(
  //         width: width * 0.4,
  //         color: Colors.blueGrey.shade300,
  //         child: ListView(
  //           children: ResponsiveMPAWebConfig.listMenu,
  //         ),
  //       ),
  //       typeDrawer: TypeDrawer.endDrawer,
  //     ),
  //     fullSizeScaffold: FullSizeScaffoldPage(
  //       index: currentIndex,
  //       // index: 2,
  //       appBar: const AppBarMenu(
  //         appBarTitle: AppBarTitle.text(
  //           text: Text("2 Page"),
  //         ),
  //         // listMenu: listMenu,
  //       ),
  //       body: const Center(
  //         child: Text("Halaman 2"),
  //       ),
  //     ),
  //   );
  // }
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    debugPrint("TESTING SECOND PAGE");
    // ResponsiveMPAWebConfig.instance.activeIndex = 2;
    return WebPageWidget(
      pageTitle: "Second Page",
      index: 2,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Second Page"),
        ),
        // listMenu: listMenu,
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Halaman Second"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Halaman Second"),
      ),
      drawer: const AppDrawer(),
      // drawer: Container(
      //   width: width * 0.4,
      //   color: Colors.blueGrey.shade300,
      //   child: ListView(
      //     children: ResponsiveMPAWebConfig.instace.listMenu,
      //   ),
      // ),
    );
  }
}
