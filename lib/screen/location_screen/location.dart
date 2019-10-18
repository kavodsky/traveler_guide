import 'package:flutter/material.dart';
import 'package:freeze_code_camp/models/location.dart';
import 'package:freeze_code_camp/models/location_fact.dart';
import 'package:freeze_code_camp/screen/location_screen/image_banner.dart';
import 'package:freeze_code_camp/screen/location_screen/paragraph.dart';

class LocationScreen extends StatelessWidget {
  final int _locationID;

  LocationScreen(this._locationID);
  
  @override
  Widget build(BuildContext context) {
    final Location location = Location.fetchById(this._locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath),
        ]..addAll(buildParagraphsList(location)),
      ),
    );
  }

  List<Widget> buildParagraphsList(Location location) {
    return location.facts.map( (LocationFact detail) => Paragraph(detail.title, detail.text)).toList();
  }
}
