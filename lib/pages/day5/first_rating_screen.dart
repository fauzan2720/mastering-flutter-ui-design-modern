import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstRatingScreenPage extends StatelessWidget {
  const FirstRatingScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checked = false;
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Center(
            child: Image.asset(
              'assets/day5/image.png',
              width: 200,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Pizza Ballado',
              style: poppinsTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              '\$90,00',
              style: poppinsTextStyle.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 37,
            ),
            child: Text(
              'Was it delicious?',
              style: poppinsTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(37, 20, 37, 0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff37394D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/day5/emot1.png',
                    width: 28,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff37394D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/day5/emot2.png',
                    width: 28,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEF0FF),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/day5/emot3.png',
                    width: 28,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff37394D),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/day5/emot4.png',
                    width: 28,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 90),
              width: 211,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Rate Now',
                  style: poppinsTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: semibold,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff34D186),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
