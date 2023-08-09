import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchOption extends StatelessWidget {
  const SearchOption({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width * 0.7,
          margin: const EdgeInsets.only(left: 10),
          child: TextField(
            cursorColor: greyColor,
            style: const TextStyle(fontSize: 18, color: backgroundColor),
            decoration: InputDecoration(
              hintStyle: const TextStyle(fontSize: 18),
              contentPadding: const EdgeInsets.only(left: 90, top: 40),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: greyColor),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Search Your Dream Car",
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(
                  Icons.search,
                  size: 40,
                  color: greyColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: yellowColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/settings.png",
              width: 60,
              height: 60,
            ),
          ),
        ),
      ],
    );
  }
}
