class City{
  final int cityId;
  final String title, subTitle, imageUrl;

  City({required this.cityId, required this.title, required this.subTitle, required this.imageUrl});

  factory City.fromJson(Map<String, dynamic> json) =>
    City(cityId: json["city_id"], title: json["title"], subTitle: json["sub_title"], imageUrl: json["image_url"]);

  @override
  String toString() {
    return 'City('
        'cityId: $cityId, '
        'title: $title, '
        'subTitle: $subTitle, '
        'imageUrl: $imageUrl)';
  }
}