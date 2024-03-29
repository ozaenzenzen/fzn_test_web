import 'package:flutter/material.dart';
import 'package:fzn_test_web/helper/fade_route.dart';
import 'package:fzn_test_web/helper/route_delegate.dart';
import 'package:fzn_test_web/helper/route_information_parser.dart';
import 'package:fzn_test_web/page/home_page.dart';
import 'package:fzn_test_web/page/home_screen.dart';
import 'package:fzn_test_web/page/second_page.dart';
import 'package:fzn_test_web/page/third_page.dart';
import 'package:fzn_test_web/page/unknown_page.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // debugPrint("TEST MATERIAL APP");
    // return MaterialApp.router(
    //   routeInformationParser: RouteInformationParser(),
    //   routerDelegate: routerDelegate,
    // );
    return MaterialApp(
      // routeInformationParser: AppRouteInformationParser(),
      // routerDelegate: AppRouteDelegate(),
      title: 'Flutter Demo',
      // home: const HomeScreen(),
      // home: const HomePage(),
      onGenerateRoute: (settings) {
        debugPrint("[onGenerateRoute] settings name ${settings.name}");
        if (settings.name == "/home") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/secondpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const SecondPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/thirdpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const ThirdPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        return null;
        // return PageRouteBuilder(
        //   settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        //   pageBuilder: (_, __, ___) => const UnknownPage(),
        //   transitionsBuilder: (_, a, __, c) => FadeTransition(
        //     opacity: a,
        //     child: c,
        //   ),
        // );
      },
      onUnknownRoute: (settings) {
        debugPrint("[onUnknownRoute] settings.arguments ${settings.arguments}");
        return PageRouteBuilder(
          settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
          pageBuilder: (_, __, ___) => const UnknownPage(),
          transitionsBuilder: (_, a, __, c) => FadeTransition(
            opacity: a,
            child: c,
          ),
        );
      },
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        // '/': (context) => const HomePage(),
        '/secondpage': (context) => const SecondPage(),
        '/thirdpage': (context) => const ThirdPage(),
        '/404': (context) => const UnknownPage(),
      },
    );
  }
}
