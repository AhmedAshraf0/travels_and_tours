import 'package:flutter/material.dart';

class FeaturedStayCard extends StatelessWidget {
  const FeaturedStayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Image.asset('assets/camel.jpg',width: double.infinity,height: 500,fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.only(left: 24,right: 60,bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text('17 cool stays by the water for a once-in-a-lifetime trip',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text('Overwater villas, underwater hotels, cliffside retreats, and more.',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500
                  ),),
              ),
              ButtonTheme(
                minWidth: 110,
                child: MaterialButton(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text(
                      'Explore',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ],
    );
  }
}
