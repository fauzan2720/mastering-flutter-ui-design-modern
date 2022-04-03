import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondGetStartedPage extends StatelessWidget {
  const SecondGetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            Text(
              'Health First.',
              style: poppinsTextStyle.copyWith(
                color: const Color(0xff000000),
                fontWeight: semibold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Exercise together with our best community fit in the world',
              style: poppinsTextStyle.copyWith(
                color: const Color(0xff828284),
                fontWeight: regular,
                fontSize: 16,
              ),
              overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 60),
            Image.asset(
              'assets/day2/gallery.png',
              width: double.infinity,
            ),
            const SizedBox(height: 71),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 85,
                    vertical: 15,
                  ),
                  child: Text(
                    'Shape My Body',
                    style: latoTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffAFEA0D),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Terms & Conditions',
                style: poppinsTextStyle.copyWith(
                  color: const Color(0xff757575),
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
