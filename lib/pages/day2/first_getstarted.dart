import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstGetStartedPage extends StatelessWidget {
  const FirstGetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/day2/bg1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Maximize Revenue',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xffFFFFFF),
                    fontWeight: semibold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Gain more profit from cryptocurrency\nwithout any risk involved',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xffFFFFFF),
                    fontWeight: regular,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/day2/btn1.png',
                    width: 80,
                  ),
                ),
                const SizedBox(height: 55),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
