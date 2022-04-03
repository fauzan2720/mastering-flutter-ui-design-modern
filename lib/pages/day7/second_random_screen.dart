import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class SecondRandomScreenPage extends StatelessWidget {
  const SecondRandomScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFF),
      body: ListView(
        children: [
          Image.asset(
            'assets/day7/cover.png',
            width: double.infinity,
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Arrina La',
              style: poppinsTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Center(
            child: Text(
              'Bali, Dekat Bandung',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                color: const Color(0xff2F323A),
              ),
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'About',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                color: const Color(0xff2F323A),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Booking Now',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 12),

          // DAYS
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Image.asset('assets/day7/day1.png', width: 80),
                ),
                const SizedBox(width: 20),
                Image.asset('assets/day7/day2.png', width: 80),
                const SizedBox(width: 20),
                Image.asset('assets/day7/day3.png', width: 80),
                const SizedBox(width: 20),
                Image.asset('assets/day7/day4.png', width: 80),
                const SizedBox(width: 24),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$22,800',
                    style: poppinsTextStyle.copyWith(
                      color: const Color(0xff3F6DF6),
                      fontWeight: medium,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    '/night',
                    style: poppinsTextStyle.copyWith(
                      color: const Color(0xff2F323A),
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.all(0),
                width: 220,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Continue',
                    style: poppinsTextStyle.copyWith(
                      color: const Color(0xffFAFAFA),
                      fontWeight: semibold,
                      fontSize: 18,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff3F6DF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
