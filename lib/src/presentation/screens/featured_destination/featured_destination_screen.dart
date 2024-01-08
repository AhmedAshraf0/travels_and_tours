import 'package:flutter/material.dart';

class FeaturedDestination extends StatelessWidget {
  const FeaturedDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Featured Destination", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
    );
  }
}
