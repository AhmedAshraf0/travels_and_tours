import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/data/models/test_model.dart';

class CardImage extends StatelessWidget {
  final TestModel testModel;

  const CardImage(
      {super.key, required this.testModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 210,
        height: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.grey[500]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              testModel.imagePath,
              width: 60,
              height: 60,
            ),
            const Spacer(),
            Text(
              testModel.cardTitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      onTap: (){
        print("hello");
      },
    );
  }
}
