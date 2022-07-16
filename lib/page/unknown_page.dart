import 'package:flutter/material.dart';
import 'package:fzn_responsive_web/fzn_responsive_web.dart';
import 'package:fzn_responsive_web/appbar/appbar_menu_button.dart';
import 'package:fzn_responsive_web/helper/function_helper.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    FunctionHelper.functionHelper.setPageTitle("Unknown Page", context);

    return const Scaffold(
      body: Center(
          child: Text(
        "Unknown Route",
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
