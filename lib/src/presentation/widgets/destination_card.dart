import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/data/models/user_ad.dart';

class DestinationCard extends StatelessWidget {
  final UserAd userAd;

  const DestinationCard({super.key, required this.userAd});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 60, bottom: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  userAd.title ?? '-',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  userAd.subTitle ?? '-',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 210,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      userAd.cities![index].imageUrl,
                      width: 280,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,bottom: 8),
                    child: Text(userAd.cities![index].title, style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 24,
              ),
              itemCount: userAd.cities!.length),
        )
      ],
    );
  }
}
