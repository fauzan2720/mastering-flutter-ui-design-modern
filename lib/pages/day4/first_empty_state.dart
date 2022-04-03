import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstEmptyStatePage extends StatelessWidget {
  const FirstEmptyStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 148),
        child: Column(
          children: [
            Image.asset(
              'assets/day4/illustration.png',
              height: 210,
            ),
            const SizedBox(height: 100),
            Text(
              'Success Order',
              style: poppinsTextStyle.copyWith(
                color: const Color(0xff0E1954),
                fontWeight: semibold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'We will delivery your package\nas soon as possible',
              style: poppinsTextStyle.copyWith(
                color: const Color(0xff0E1954),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: 200,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Done',
                  style: openSansTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                    color: const Color(
                      0xfff8f8f8,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffF94593),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
