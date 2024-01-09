import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/data/models/user_ad.dart';
import 'package:travels_and_tours/src/presentation/screens/featured_destination/featured_destination_screen.dart';

class FeaturedStayCard extends StatelessWidget {
  final UserAd userAd;

  const FeaturedStayCard({super.key, required this.userAd});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Image.network(userAd.imageUrl ?? 'assets/images/image_placeholder.png',width: double.infinity,height: 500,fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.only(left: 24,right: 60,bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(userAd.title ?? '-',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(userAd.subTitle ?? '-',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
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
                    child: Text(
                      userAd.buttonTitle ?? 'Press',
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FeaturedDestination()));
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
