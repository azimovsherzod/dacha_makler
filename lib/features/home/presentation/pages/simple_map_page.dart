import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../constans/imports.dart';

class SimpleMapPage extends StatefulWidget {
  @override
  _SimpleMapPageState createState() => _SimpleMapPageState();
}

class _SimpleMapPageState extends State<SimpleMapPage> {
  bool _showMap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showMap = !_showMap;
              });
            },
            child: Text("Toggle Map"),
          ),
          if (_showMap)
            Container(
              height: 400,
              child: YandexMap(
                onMapCreated: (YandexMapController controller) {},
                mapObjects: [
                  PlacemarkMapObject(
                    mapId: MapObjectId('marker'),
                    point: const Point(latitude: 41.2995, longitude: 69.2401),
                    icon: PlacemarkIcon.single(
                      PlacemarkIconStyle(
                        image: BitmapDescriptor.fromAssetImage(
                            LocalIcons.location),
                        scale: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
