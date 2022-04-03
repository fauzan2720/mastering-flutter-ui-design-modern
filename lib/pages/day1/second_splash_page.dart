import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondSplashPage extends StatelessWidget {
  const SecondSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/day1/bg_house_qu.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 72),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/day1/ic_home.png',
                  width: 51,
                ),
                const SizedBox(width: 13),
                Text(
                  'HouseQu',
                  style: montserratTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 32.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
