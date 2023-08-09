import 'package:flutter/material.dart';
import 'package:rent_car/constants/colors.dart';
import '../widgets/background_image.dart';
import '../widgets/card_description.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
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
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
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
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -size.height * 0.5 * 0.7,
                  left: -size.height * 0.5 * 0.55,
                  child: SizedBox(
                    height: size.height * 0.5,
                    child: Image.asset(
                      // scale: 1,
                      "assets/welcome.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
