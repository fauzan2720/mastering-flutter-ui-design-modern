import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondSignInPage extends StatelessWidget {
  const SecondSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Container(
        padding: const EdgeInsets.fromLTRB(28, 64, 28, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/day3/img.png',
                width: 245,
                height: 279,
              ),
            ),
            const SizedBox(height: 53),

            // INPUT EMAIL ADDRESS
            Text(
              'Email Address',
              style: openSansTextStyle.copyWith(
                color: const Color(0xff17171A),
              ),
            ),
            const SizedBox(height: 6),
            TextFormField(
              style: openSansTextStyle.copyWith(
                color: const Color(0xff17171A),
                fontWeight: semibold,
              ),
              decoration: InputDecoration(
                fillColor: const Color(0xffF3F3F3),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Email',
                hintStyle: openSansTextStyle.copyWith(
                  fontSize: 14,
                  color: const Color(0xff6F7075),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // INPUT PASSWORD
            Text(
              'Password',
              style: openSansTextStyle.copyWith(
                color: const Color(0xff17171A),
              ),
            ),
            const SizedBox(height: 6),
            TextFormField(
              obscureText: true,
              style: openSansTextStyle.copyWith(
                color: const Color(0xff17171A),
                fontWeight: semibold,
              ),
              decoration: InputDecoration(
                fillColor: const Color(0xffF3F3F3),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Password',
                hintStyle: openSansTextStyle.copyWith(
                  fontSize: 14,
                  color: const Color(0xff6F7075),
                ),
              ),
            ),

            // BUTTONS
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: double.infinity,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Log In',
                  style: openSansTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff5468FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Create New Account',
                  style: openSansTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 18,
                    color: const Color(0xffCFCFCF),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
