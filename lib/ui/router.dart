import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home/details.dart';
import 'home/screen.dart';

class Router {
  static String initialRoute = HomeScreen.routeName;
  static Route<dynamic> onUnknownRoute(
    BuildContext context, {
    @required RouteSettings settings,

    /// If [true] it will not navigate to the route and fall back to the [initialRoute]
    bool initialRoute = false,
  }) {
    final route = settings.name;
    if (route.contains('/items')) {
      final id = route.replaceAll('/items/', '');
      return MaterialPageRoute(
        builder: (_) => DetailsScreen(id: id),
        settings: settings,
      );
    }
    if (initialRoute) {
      return null;
    }
    return MaterialPageRoute(
      builder: (_) => UnknownRouteScreen(settings: settings),
      settings: settings,
    );
  }

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      HomeScreen.routeName: (_) => HomeScreen(),
    };
  }
}

class UnknownRouteScreen extends StatelessWidget {
  final RouteSettings settings;

  const UnknownRouteScreen({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = settings.name;
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('No route defined for $route')),
    );
  }
}
