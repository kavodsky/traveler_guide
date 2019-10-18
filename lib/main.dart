import 'package:flutter/material.dart';
import 'package:freeze_code_camp/screen/location_screen/location.dart';
import 'package:freeze_code_camp/screen/locations/locations.dart';
import 'package:freeze_code_camp/style.dart';

const LocationsRoute = "/";
const LocationDetailRoute = "/location_detail";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: _routes(),
      theme: _theme(),
      home: Locations(),
    );
  }

  RouteFactory _routes() {
    return (settigs) {
      final Map<String, dynamic> arguments = settigs.arguments;
      Widget screen;
      switch (settigs.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationScreen(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle)
        ),
        textTheme: TextTheme(title: TitleTextStyle, body1: Body1TextStyle)
      );
  } 
}
