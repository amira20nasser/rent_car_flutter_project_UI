import 'package:flutter/material.dart';
import 'package:rent_car/widgets/card_description.dart';

import '../constants/colors.dart';
import '../widgets/background_image.dart';
import 'home_screen.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(16),
            margin: EdgeInsets.only(top: size.height * 0.5),
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.5 * 0.25),
                const CardDescription(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  )),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width, size.height * 0.08),
                    backgroundColor: yellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: backgroundColor),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: -size.height * 0.3,
            top: size.height * 0.09,
            child: SizedBox(
              height: size.height * 0.55,
              child: Image.asset(
                "assets/welcome.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
