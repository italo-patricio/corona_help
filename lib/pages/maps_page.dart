import 'dart:async';

import 'package:flutter/cupertino%202.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
    Completer<GoogleMapController> _controller = Completer();

    static const LatLng _center = const LatLng(-5.834075, -35.231110);

    final Set<Marker> _markers = {};

    LatLng _lastMapPosition = _center;

    MapType _currentMapType = MapType.normal;

    void _onMapTypeButtonPressed() {
      setState(() {
        _currentMapType = _currentMapType == MapType.normal
            ? MapType.satellite
            : MapType.normal;
      });
    }

    void _onAddMarkerButtonPressed() {
      setState(() {
        _markers.add(Marker(
          // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
        title: 'My local',
        snippet: 'Corona: Não \n Febre: Não \n Corisa: Não \n Nariz entupido: \n',
        ),
        icon: BitmapDescriptor.defaultMarker,
        ));
      });
    }

    void _onCameraMove(CameraPosition position) {
      _lastMapPosition = position.target;
    }

    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          drawer: Drawer(
            child: Container(),
          ),
          body: Stack(
            children: <Widget>[
              GoogleMap(
                myLocationEnabled: true,
                zoomGesturesEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 15.0,
                ),
                mapType: _currentMapType,
                markers: _markers,
                onCameraMove: _onCameraMove,
              ),

            ],
          ),

      );
    }
}
