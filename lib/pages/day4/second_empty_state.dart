import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondEmptyStatePage extends StatelessWidget {
  const SecondEmptyStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: ListView(
        children: [
          Image.asset(
            'assets/day4/illustration2.png',
            width: double.infinity,
          ),
          const SizedBox(height: 68),
          Center(
            child: Text(
              'Boost Profit!',
              style: poppinsTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Our tools are helping business\nto grow much faster',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 59),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Image.asset(
                'assets/day4/btn.png',
                width: 65,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
