import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstPricingScreenPage extends StatefulWidget {
  const FirstPricingScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstPricingScreenPage> createState() => _FirstPricingScreenPageState();
}

class _FirstPricingScreenPageState extends State<FirstPricingScreenPage> {
  int selectedOption = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          const SizedBox(height: 50),
          Image.asset('assets/day6/header.png', width: 100),
          const SizedBox(height: 48),
          Text(
            'Which one you wish\nto Upgrade?',
            style: poppinsTextStyle.copyWith(
              color: const Color(0xff191919),
              fontSize: 22,
              fontWeight: semibold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
        ],
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String desc,
      String subDesc,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedOption = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedOption == index
                  ? const Color(0xff6050E7)
                  : const Color(0xffD9DEEA),
            ),
            borderRadius: BorderRadius.circular(39),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 66,
                  ),
                  const SizedBox(width: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: poppinsTextStyle.copyWith(
                          color: const Color(0xff191919),
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            desc,
                            style: poppinsTextStyle.copyWith(
                              color: const Color(0xffA3A8B8),
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            subDesc,
                            style: poppinsTextStyle.copyWith(
                              color: const Color(0xff5343C2),
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(top: 16, right: 15),
                child: selectedOption == index
                    ? const Icon(
                        Icons.check_circle,
                        color: Color(0xff6050E7),
                        size: 26,
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          header(),

          // MONEY SECURITY
          option(
            0,
            'assets/day6/money.png',
            'Money Security',
            'support ',
            '24/7',
          ),
          const SizedBox(height: 24),

          // AUTOMATION
          option(1, 'assets/day6/automation.png', 'Automation', 'we provide ',
              'Invoice'),
          const SizedBox(height: 24),

          // BALANCE REPORT
          option(2, 'assets/day6/balance.png', 'Balance Report', 'can up to ',
              '10k'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff6050E7),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 21,
                bottom: 10,
              ),
              child: Text(
                'Upgrade Now',
                style: poppinsTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 21,
                bottom: 10,
                left: 60,
              ),
              child: Image.asset(
                'assets/day6/arrow_right.png',
                width: 24,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
