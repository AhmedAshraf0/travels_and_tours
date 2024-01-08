import 'package:travels_and_tours/src/data/models/travel_inspiration.dart';

class HomeResponse {
  final String lang;
  final TravelInspiration travelInspiration;

  HomeResponse({required this.lang, required this.travelInspiration});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      HomeResponse(lang: json["lang"],
          travelInspiration: TravelInspiration.fromJson(
              json["travel_inspiration"] as List<dynamic>),
      );
}