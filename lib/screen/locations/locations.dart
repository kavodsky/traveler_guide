import 'package:flutter/material.dart';
import 'package:freeze_code_camp/main.dart';
import 'package:freeze_code_camp/models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Location> locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {"id": locationId});
  }
}
