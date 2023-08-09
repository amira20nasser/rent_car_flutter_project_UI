import 'package:flutter/material.dart';

import '../constants/colors.dart';

class InfoUser extends StatelessWidget {
  const InfoUser({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 35,
          color: yellowColor,
        ),
        const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Location",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Text(
              "Miramar, San Dego",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.25),
        const CircleAvatar(
          backgroundColor: yellowColor,
          radius: 32,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/user.png"),
            radius: 30,
          ),
        )
      ],
    );
  }
}
