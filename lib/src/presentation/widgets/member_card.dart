import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2, color: Colors.grey[500]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you a member?',
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                'prices drop the moment you signup as a Tripstick member',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonTheme(
              minWidth: 110,
              child: MaterialButton(
                  color: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: const Text(
                    'Join',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
