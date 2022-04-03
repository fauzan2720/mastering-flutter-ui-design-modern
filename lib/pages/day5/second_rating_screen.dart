import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondRatingScreenPage extends StatelessWidget {
  const SecondRatingScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(
                'assets/day5/office.png',
                height: 210,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Enjoy Your Meal',
            style: poppinsTextStyle.copyWith(
              color: const Color(0xff121622),
              fontWeight: semibold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Please rate our experience',
            style: poppinsTextStyle.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 50),

          // RATING
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/day5/Star.png',
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/day5/Star.png',
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/day5/Star.png',
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/day5/Star2.png',
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/day5/Star2.png',
                width: 50,
              ),
              const SizedBox(width: 10),
            ],
          ),

          // TEXT BOX
          Container(
            margin: const EdgeInsets.fromLTRB(28, 36, 28, 0),
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Your message",
                style: poppinsTextStyle.copyWith(
                  color: const Color(0xff808EAB),
                ),
              ),
            ),
          ),

          // BUTTON
          Container(
            margin: const EdgeInsets.fromLTRB(28, 30, 28, 61),
            width: double.infinity,
            height: 55,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Submit Review',
                style: poppinsTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: semibold,
                  fontSize: 16,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff4074E6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
