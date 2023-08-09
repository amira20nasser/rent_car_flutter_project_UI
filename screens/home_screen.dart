import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/car.dart';
import '../widgets/info_user.dart';
import '../widgets/search_and_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            InfoUser(size: size),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              width: size.width * 0.7,
              child: const Text(
                "Search Your Dream Super Car to Ride",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SearchOption(size: size),
            Container(
              width: size.width,
              height: size.height,
              padding: const EdgeInsets.all(12),
              margin: EdgeInsets.only(top: size.height * 0.03),
              decoration: const BoxDecoration(
                color: secBackgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Top Brands",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "More",
                                style: TextStyle(
                                  color: yellowColor,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.arrow_back_ios,
                                textDirection: TextDirection.rtl,
                                color: yellowColor,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 13,
                      bottom: 30,
                    ),
                    height: size.height * 0.17,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(32),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            logos[index],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemCount: logos.length,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recommendation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "More",
                                style: TextStyle(
                                  color: yellowColor,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.arrow_back_ios,
                                textDirection: TextDirection.rtl,
                                color: yellowColor,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: GridView.builder(
                      clipBehavior: Clip.antiAlias,
                      //  shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 16),
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: size.height * 0.17,
                              width: size.width,
                              //padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    cars[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${cars[index].price}\$/day",
                                    style: const TextStyle(
                                      color: yellowColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              //   top: -size.height * 0.09,
                              //left: -size.height * 0.5 * 0.55,
                              bottom: 120,
                              right: -30,
                              child: SizedBox(
                                height: size.height * 0.12,
                                width: size.width * 0.6,
                                child: Image.asset(
                                  //scale: 1,
                                  cars[index].image,
                                  //fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: cars.length,
                    ),
                  )
                  //   Expanded(
                  //     // width: size.width,
                  //     //height: size.height * 0.3,
                  //     child: GridView.builder(
                  //       itemCount: cars.length,
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         // mainAxisSpacing: 1,
                  //       ),
                  //       itemBuilder: (context, index) {
                  //         return Container(
                  //           width: size.width,
                  //           height: size.height,
                  //           padding: const EdgeInsets.all(16),
                  //           margin: EdgeInsets.only(top: size.height * 0.5),
                  //           decoration: const BoxDecoration(
                  //             color: Colors.red,
                  //             borderRadius: BorderRadius.vertical(
                  //               top: Radius.circular(30),
                  //             ),
                  //           ),
                  //           child: Column(children: [
                  //             Text(
                  //               cars[index].name,
                  //               style: const TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 30,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //             Text(
                  //               "${cars[index].price}",
                  //               style: const TextStyle(
                  //                 color: yellowColor,
                  //                 fontSize: 30,
                  //               ),
                  //             ),
                  //           ]),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  ,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
