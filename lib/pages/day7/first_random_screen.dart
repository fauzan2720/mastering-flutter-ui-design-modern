import 'package:flutter/material.dart';
import 'package:mastering_ui_modern_bwa_class/theme.dart';

class FirstRandomScreenPage extends StatelessWidget {
  const FirstRandomScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 36),
        alignment: Alignment.center,
        child: Text(
          'My Shopping Cart',
          style: poppinsTextStyle.copyWith(
            color: const Color(0xff191919),
            fontWeight: semibold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget cart(
      String imageUrl,
      String title,
      String subTitle,
      String price,
      String totalPrice,
    ) {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      title,
                      style: poppinsTextStyle.copyWith(
                        color: const Color(0xff191919),
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: poppinsTextStyle.copyWith(
                        color: const Color(0xffA3A8B8),
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.remove_circle,
                      color: Color(0xffD9D9D9),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      totalPrice,
                      style: poppinsTextStyle.copyWith(
                        color: const Color(0xff191919),
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.add_circle),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Text(
                    price,
                    style: poppinsTextStyle.copyWith(
                      color: const Color(0xff191919),
                      fontWeight: semibold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget informations() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: poppinsTextStyle.copyWith(
                color: const Color(0xff191919),
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$600.00',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$80.00',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$680.00',
                  style: poppinsTextStyle.copyWith(
                    color: const Color(0xff191919),
                    fontWeight: semibold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttons() {
      return Column(
        children: [
          // BUTTON CHECKOUT
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            height: 60,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Checkout Now',
                style: poppinsTextStyle.copyWith(
                  color: const Color(0xff2E221B),
                  fontWeight: semibold,
                  fontSize: 18,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffFFC532),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // BUTTON SAVE TO WISHLIST
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            height: 60,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Save to Wishlist',
                style: poppinsTextStyle.copyWith(
                  color: const Color(0xffFFFFFF),
                  fontWeight: medium,
                  fontSize: 18,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: ListView(
        children: [
          header(),
          const SizedBox(height: 30),

          // CART LIST
          cart('assets/day7/food1.png', 'Burger Malleta', 'McTheone', '\$90.00',
              '2'),
          const SizedBox(height: 26),
          cart('assets/day7/food2.png', 'Mojito Orange', 'The Bar', '\$510.00',
              '5'),
          const SizedBox(height: 26),

          // INFORMATIONS
          informations(),
          const SizedBox(height: 60),

          // BUTTONS
          buttons(),
        ],
      ),
    );
  }
}
