import 'package:flutter/material.dart';
import 'tile_overlay.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff355c7d); // Second `const` is optional in assignments.

    final locations = Location.fetchAll();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text('Locations'),
        ),
         body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }
}

_onLocationTap(BuildContext context, int locationID) {
  Navigator.pushNamed(context, LocationDetailRoute,
  arguments: {"id": locationID});
}
Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(assetPath: location.imagePath, height: 245.0),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }