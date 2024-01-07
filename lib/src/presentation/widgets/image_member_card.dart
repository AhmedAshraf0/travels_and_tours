import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/presentation/widgets/member_card.dart';

class ImageMemberCard extends StatelessWidget {
  const ImageMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        const MemberCard(),
        Image.asset('assets/travelling_person.png',width: 150,height: 190,fit: BoxFit.contain,),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 30,bottom: 150),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined)),
        )
      ],
    );
  }
}
