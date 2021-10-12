import 'package:flutter/material.dart';
import 'package:fudge_financial/core/services/locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/app/app.router.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fudge Financial',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
