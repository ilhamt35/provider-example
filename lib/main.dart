import 'package:flutter/material.dart';
import 'package:provider_example/dual/dual_providers.dart';
import 'package:provider_example/single/single_provider.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // initialRoute: '/',
      routes: {
        // HomePage.routeName: (context) => HomePage(),
        SingleProvider.routeName: (context) => SingleProvider(),
        DualProviders.routeName: (context) => DualProviders()
      },
    );
  }
}
