import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';

class WebMap extends StatefulWidget {
  const WebMap({Key? key}) : super(key: key);

  @override
  _WebMapState createState() => _WebMapState();
}

class _WebMapState extends State<WebMap> {
  @override
  Widget build(BuildContext context) {
    final String htmlId = "map";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final mapOptions = MapOptions()
        ..zoom = 15.0
        ..center = LatLng(-6.091876661760561, 106.14835546832806)
        ..fullscreenControl = false
        ..mapTypeControl = false
        ..streetViewControl = false
        ..clickableIcons = true;

      final elem = DivElement()..id = htmlId;
      final map = GMap(elem, mapOptions);

      map.onCenterChanged.listen((event) {});
      map.onDragstart.listen((event) {});
      map.onDragend.listen((event) {});

      Marker(MarkerOptions()
        ..position = map.center
        ..map = map
      ..clickable = true);

      return elem;
    });
    return HtmlElementView(viewType: htmlId);
  }
}
