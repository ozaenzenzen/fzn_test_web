import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // @override
  // Widget build(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   debugPrint("TESTING THIRD PAGE");
  //   return WebPageWidget(
  //     pageTitle: "3 Page",
  //     index: 3,
  //     backgroundDecoration: const BoxDecoration(
  //       color: Colors.blueGrey,
  //     ),
  //     appBar: AppBarMenu(
  //       appBarTitle: const AppBarTitle.text(
  //         text: Text("3 Page"),
  //       ),
  //       // listMenu: listMenu,
  //       onTapToHomePage: () {},
  //     ),
  //     bodyOnFullSize: const Center(
  //       child: Text("Halaman 3"),
  //     ),
  //     bodyOnHalfSize: const Center(
  //       child: Text("Halaman 3"),
  //     ),
  //     drawer: const AppDrawer(),
  //     // drawer: Container(
  //     //   width: width * 0.4,
  //     //   color: Colors.blueGrey.shade300,
  //     //   child: ListView(
  //     //     children: ResponsiveMPAWebConfig.instace.listMenu,
  //     //   ),
  //     // ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return WebPageWidget.customScaffold(
      pageTitle: "Third Page",
      index: 3,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      halfSizeScaffold: HalfSizeScaffoldPage(
        appBar: const AppBarMenu(
          appBarTitle: AppBarTitle.text(
            text: Text("Third Page"),
          ),
        ),
        body: const Center(
          child: Text("Halaman Third"),
        ),
        drawer: Container(
          width: width * 0.4,
          color: Colors.blueGrey.shade300,
          child: ListView(
            children: ResponsiveMPAWebConfig.listMenu,
          ),
        ),
        typeDrawer: TypeDrawer.endDrawer,
      ),
      fullSizeScaffold: const FullSizeScaffoldPage(
        appBar: AppBarMenu(
          appBarTitle: AppBarTitle.text(
            text: Text("Third Page"),
          ),
        ),
        body: Center(
          child: Text("Halaman Third"),
        ),
      ),
    );
  }
}
