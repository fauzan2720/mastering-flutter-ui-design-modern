import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstSignInPage extends StatelessWidget {
  const FirstSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showPassword = false;

    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Container(
        padding: const EdgeInsets.fromLTRB(40, 70, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/day3/btn.png',
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 70),
            Text(
              'Welcome back.\nLet’s make money.',
              style: poppinsTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 70),

            // INPUT EMAIL ADDRESS
            TextFormField(
              style: openSansTextStyle.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: const Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
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
            TextFormField(
              style: openSansTextStyle.copyWith(
                color: Colors.white,
              ),
              obscureText: showPassword == true ? false : true,
              decoration: InputDecoration(
                focusColor: Colors.white,
                fillColor: const Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Password',
                hintStyle: openSansTextStyle.copyWith(
                  fontSize: 14,
                  color: const Color(0xff6F7075),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    showPassword = !showPassword;
                  },
                  child: const Icon(
                    Icons.visibility,
                    color: Color(0xff6F7075),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),

            // FORGOT PASSWORD
            Container(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot My Password',
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  color: const Color(0xff6A6B70),
                ),
              ),
            ),

            // LOGIN BUTTON
            Container(
              margin: const EdgeInsets.only(top: 117),
              width: double.infinity,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sign In',
                  style: openSansTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 18,
                    color: const Color(0xff6B4909),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffFCAC15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    )),
              ),
            ),
            const SizedBox(height: 30),

            // CREATE ACCOUNT BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have account? ',
                  style: poppinsTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Sign Up',
                  style: poppinsTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 14,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
