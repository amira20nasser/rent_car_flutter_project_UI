import 'package:flutter/material.dart';
import 'package:rent_car/widgets/title_text.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(),
          const SizedBox(height: 20),
          Text(
            "Get Exprience ridding Your Dream Car, We Sill set up the car, you just need to book and go rock",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
