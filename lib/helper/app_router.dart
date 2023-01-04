import 'package:flutter/material.dart';

class AppRouter extends RouterDelegate<AppRouter> with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  String _selected = "main";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState>? get navigatorKey => throw UnimplementedError();

  @override
  Future<void> setNewRoutePath(AppRouter configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

}
