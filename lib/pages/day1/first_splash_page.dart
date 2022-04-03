import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstSplashPage extends StatelessWidget {
  const FirstSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/day1/ic_swords.png',
              width: 140,
            ),
            const SizedBox(height: 170),
            Text(
              'VENTURE',
              style: dmSerifDisplayTextStyle.copyWith(
                fontSize: 32,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
