import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.low,),
      );
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (e) {
      print(e);
      Geolocator.requestPermission();
    }
  }
}