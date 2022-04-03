import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/drawer.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day1/first_splash_page.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day1/second_splash_page.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day2/first_getstarted.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day2/second_getstarted.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day3/first_sign_in.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day3/second_sign_in.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day4/first_empty_state.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day4/second_empty_state.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day5/first_rating_screen.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day5/second_rating_screen.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day6/first_pricing_screen.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day6/second_pricing_screen.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day7/first_random_screen.dart';
import 'package:mastering_ui_modern_bwa_class/pages/day7/second_random_screen.dart';

void main() {
  runApp(const SevenDays());
}

class SevenDays extends StatelessWidget {
  const SevenDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mastering UI Modern'),
        ),
        drawer: const DrawerScreenPage(),
      ),
      routes: {
        '/day1-first': (BuildContext context) => const FirstSplashPage(),
        '/day1-second': (BuildContext context) => const SecondSplashPage(),
        '/day2-first': (BuildContext context) => const FirstGetStartedPage(),
        '/day2-second': (BuildContext context) => const SecondGetStartedPage(),
        '/day3-first': (BuildContext context) => const FirstSignInPage(),
        '/day3-second': (BuildContext context) => const SecondSignInPage(),
        '/day4-first': (BuildContext context) => const FirstEmptyStatePage(),
        '/day4-second': (BuildContext context) => const SecondEmptyStatePage(),
        '/day5-first': (BuildContext context) => const FirstRatingScreenPage(),
        '/day5-second': (BuildContext context) =>
            const SecondRatingScreenPage(),
        '/day6-first': (BuildContext context) => const FirstPricingScreenPage(),
        '/day6-second': (BuildContext context) =>
            const SecondPricingScreenPage(),
        '/day7-first': (BuildContext context) => const FirstRandomScreenPage(),
        '/day7-second': (BuildContext context) =>
            const SecondRandomScreenPage(),
      },
    );
  }
}
