import 'package:flutter/material.dart';
import 'package:flutter_routing/ui/home/screen.dart';

import 'ui/home/details.dart';
import 'ui/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: Router.initialRoute,
      onUnknownRoute: (settings) => Router.onUnknownRoute(
        context,
        settings: settings,
      ),
      routes: Router.routes(context),
    );
  }
}
