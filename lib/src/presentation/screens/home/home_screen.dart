import 'package:flutter/material.dart';
import 'package:travels_and_tours/src/data/models/test_model.dart';
import 'package:travels_and_tours/src/presentation/widgets/card_image.dart';
import 'package:travels_and_tours/src/presentation/widgets/destination_card.dart';
import 'package:travels_and_tours/src/presentation/widgets/featured_stay_card.dart';
import 'package:travels_and_tours/src/presentation/widgets/image_member_card.dart';
import 'package:travels_and_tours/src/presentation/widgets/member_card.dart';
import 'package:travels_and_tours/src/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  List<TestModel> listTestModel = [
    TestModel(
        imagePath: 'assets/travelling.png', cardTitle: 'Travel Inspiration'),
    TestModel(
        imagePath: 'assets/question.png', cardTitle: 'Why choose tripstick?'),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Colors.grey[800]!,
                    width: 2.0,
                  ),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                ),
                prefixIconColor: Colors.grey[800],
                hintStyle: TextStyle(color: Colors.grey[800], fontSize: 18),
                hintText: "Where to?",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Oops! can't be empty!";
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    CardImage(testModel: listTestModel[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 28,
                    ),
                itemCount: listTestModel.length),
          ),
          const SizedBox(
            height: 32,
          ),
          ImageMemberCard(),
          const SizedBox(
            height: 32,
          ),
          FeaturedStayCard(),
          const SizedBox(
            height: 32,
          ),
          DestinationCard(),
          const SizedBox(
            height: 32,
          ),
          DestinationCard(),
          const SizedBox(
            height: 42,
          ),
          FeaturedStayCard()
        ],
      ),
    );
  }
}
