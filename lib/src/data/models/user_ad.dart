import 'package:travels_and_tours/src/data/models/city.dart';

class UserAd {
  final int? id, did, sequence;
  final String? type, imageUrl, title, subTitle, buttonTitle;
  final List<City>? cities;

  UserAd(
      {required this.id,
      required this.did,
      required this.sequence,
      required this.type,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.buttonTitle,
      required this.cities});

  factory UserAd.fromJson(Map<String, dynamic> json) =>
     UserAd(
        id: json['id'],
        did: json['did'],
        sequence: json['sequence'],
        type: json['type'],
        imageUrl: json['image_url'],
        title: json['title'],
        subTitle: json['sub_title'],
        buttonTitle: json['button_title'],
        cities: (json['list'] != null ? (json['list'] as List<dynamic>)
            .map((e) => City.fromJson(e))
            .toList() : null),
    );

  @override
  String toString() {
    return 'UserAd('
        'id: $id, '
        'did: $did, '
        'sequence: $sequence, '
        'type: $type, '
        'imageUrl: $imageUrl, '
        'title: $title, '
        'subTitle: $subTitle, '
        'buttonTitle: $buttonTitle, '
        'cities: $cities)';
  }
}
