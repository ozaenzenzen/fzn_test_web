import 'package:flutter/material.dart';
import 'package:fzn_test_web/page/home_page.dart';
import 'package:fzn_test_web/page/second_page.dart';
import 'package:fzn_test_web/page/unknown_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   routeInformationParser: RouteInformationParser(),
    //   routerDelegate: routerDelegate,
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      onGenerateRoute: (settings) {
        debugPrint("[onGenerateRoute] settings name ${settings.name}");
        if (settings.name == "/home") {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => HomePage(),
              transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
        }
        if (settings.name == "/secondpage") {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => SecondPage(),
              transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
        }
        return null;
        return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => UnknownPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
      },
      onUnknownRoute: (settings) {
        debugPrint("[onUnknownRoute] settings.arguments ${settings.arguments}");
        return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => UnknownPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
      },
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
        '/secondpage': (context) => const SecondPage(),
        '/404': (context) => const UnknownPage(),
      },
    );
  }
}
