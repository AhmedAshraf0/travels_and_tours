import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travels_and_tours/src/data/models/home_response.dart';

class HomeRepository{
  late HomeResponse homeResponse;

  Future<HomeResponse> init() async {
    final String response = await rootBundle.loadString('assets/json/homeData.json');
    Map<String, dynamic> jsonData = jsonDecode(response);
    // debugPrint(jsonData.toString());
    return HomeResponse.fromJson(jsonData);
  }
}