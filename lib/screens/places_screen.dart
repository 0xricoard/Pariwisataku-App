import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'package:app/list_place.dart';

class PlacesScreen extends StatelessWidget {
  static const routeName = '/places';

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    if (route != null) {
      final id = route['id'];
      final title = route['title'] ?? "";
      final placeLists = PLACES_DUMMY_DATA.where((place) {
        return place.category == id;
      }).toList();
      return Scaffold(
        appBar: AppBar(
          title: Text("Wisata " + title),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ListPlace(
              placeLists[index].id,
              placeLists[index].name,
              placeLists[index].image,
              placeLists[index].description,
            );
          },
          itemCount: placeLists.length,
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Wisata"),
        ),
        body: Center(
          child: Text(
              'Tidak dapat menampilkan daftar wisata, data tidak ditemukan.'),
        ),
      );
    }
  }
}
