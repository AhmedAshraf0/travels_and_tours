import 'package:travels_and_tours/src/data/models/user_ad.dart';

class TravelInspiration {
  final List<UserAd> userData;//which is travel_inspiration list JSON

  TravelInspiration({required this.userData});

  factory TravelInspiration.fromJson(List<dynamic> json) =>
      TravelInspiration(userData: json.map((e) => UserAd.fromJson(e)).toList());
}
