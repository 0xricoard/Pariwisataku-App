import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../dummy_data.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String?;
    if (id != null) {
      final selectedPlace =
          PLACES_DUMMY_DATA.firstWhere((place) => place.id == id);
      final videoID = selectedPlace.videoID;
      return Scaffold(
        appBar: AppBar(
          title: Text("Detail Tempat Wisata"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      selectedPlace.image,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 15,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            selectedPlace.name,
                            style: TextStyle(fontSize: 26, color: Colors.white),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          Text(
                            "Author: " + selectedPlace.author,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.attach_money_sharp,
                      size: 40,
                    ),
                    Text(
                      "Tiket Masuk: Rp ${selectedPlace.price}",
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(selectedPlace.description),
                      SizedBox(height: 10),
                      Text(
                        'Video:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: YoutubePlayer(
                            controller: YoutubePlayerController(
                              initialVideoId: videoID,
                              flags: YoutubePlayerFlags(
                                autoPlay: false,
                              ),
                            ),
                            showVideoProgressIndicator: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lokasi Peta:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FlutterMap(
                            options: MapOptions(
                              center: LatLng(selectedPlace.latitude,
                                  selectedPlace.longitude),
                              zoom: 13.0,
                              maxZoom: 15.0,
                            ),
                            layers: [
                              TileLayerOptions(
                                urlTemplate:
                                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                subdomains: ['a', 'b', 'c'],
                              ),
                              MarkerLayerOptions(
                                markers: [
                                  Marker(
                                    width: 80.0,
                                    height: 80.0,
                                    point: LatLng(selectedPlace.latitude,
                                        selectedPlace.longitude),
                                    builder: (ctx) => Icon(Icons.location_on),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Detail Informasi"),
        ),
        body: Center(
          child: Text('Tidak dapat menampilkan detail, ID tidak ditemukan.'),
        ),
      );
    }
  }
}
