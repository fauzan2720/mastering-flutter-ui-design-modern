import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondPricingScreenPage extends StatelessWidget {
  const SecondPricingScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget features(String feature) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Color(0xffFE6C4D),
              size: 26,
            ),
            const SizedBox(width: 12),
            Text(
              feature,
              style: poppinsTextStyle.copyWith(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/day6/bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              const SizedBox(height: 80),
              Image.asset(
                'assets/day6/illustration.png',
                width: 164,
              ),
              const SizedBox(height: 24),
              Text(
                'Pro Features',
                style: poppinsTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: semibold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Unlock the winner modules\nand get more insights',
                textAlign: TextAlign.center,
                style: poppinsTextStyle.copyWith(
                  color: const Color(0xff7F7FAD),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),

              // FITUR-FITUR
              features('Unlock Our Top Charts'),
              const SizedBox(height: 26),
              features('Save More than 1,000 Docs'),
              const SizedBox(height: 26),
              features('24/7 Customer Support'),
              const SizedBox(height: 26),
              features('Track Company\'s Spending'),
              const SizedBox(height: 58),

              // BUTTON
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 28),
                    width: double.infinity,
                    height: 55,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save to Wishlist',
                        style: poppinsTextStyle.copyWith(
                          color: const Color(0xffFFFFFF),
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                        ),
                        shadowColor: const Color(0xffE57C73),
                        elevation: 20,
                        backgroundColor: const Color(0xffE57C73),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 35),
                    child: const Icon(
                      Icons.arrow_circle_right,
                      size: 41,
                      color: Color(0xffFAACA5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Contact Support',
                style: poppinsTextStyle.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
