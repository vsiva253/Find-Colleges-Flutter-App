import 'package:flutter/material.dart';

import 'college_details.dart';

class TopCollegesPage extends StatefulWidget {
  const TopCollegesPage({super.key});

  @override
  State<TopCollegesPage> createState() => _TopCollegesPageState();
}

class _TopCollegesPageState extends State<TopCollegesPage> {
  final List<String> boxImages = [
    'assets/u1.jpg',
    'assets/u2.jpg',
    'assets/u3.jpg',
    'assets/u4.jpg',
    'assets/u5.jpg',
    'assets/u6.jpg',
  ];

  final List<String> utitle = [
    'GHJK Engineering college',
    'University of Cambridge ',
    'Harvard University ',
    'Stanford University ',
    'Imperial College London ',
    'University of Chicago ',
  ];

  final List<String> descr = [
    'best college in hyderabad right now',
    'The mission of the University of Cambridge is to contribute to society through education',
    'Harvard University is devoted to excellence in teaching, learning, and research ',
    'Stanford was founded almost 150 years ago on a bedrock of societal purpose ',
    'Imperial College London is a world-class university with a mission to benefit society',
    'One of the worlds leading research universities'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(428.0, 153.0),
        child: Stack(
          children: [
            AppBar(
              backgroundColor: const Color(0xFF0E3C6E),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
            ),
            Positioned(
              top: 67.0,
              left: 37.0,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    width: 279.0,
                    height: 53.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFF0E3C6E),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search colleges schools..',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 55.0,
                    height: 53.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFF0E3C6E),
                      ),
                    ),
                    child: const Icon(Icons.mic, color: Color(0xFF0E3C6E)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < 6; i++)
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CollegeDetailPage(
                        collegeName: utitle[i],
                        description: descr[i],
                        imageAssetPath: boxImages[i],
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 354.0,
                      height: 243.0,
                      margin: const EdgeInsets.only(
                        top: 20.0,
                        left: 35,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black.withOpacity(0.25),
                        //     blurRadius: 8.0,
                        //     spreadRadius: 4.0,
                        //   ),
                        // ],
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 354.0,
                            height: 116.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              child: Hero(
                                tag: boxImages[i],
                                child: Image.asset(
                                  boxImages[i],
                                  width: 354.0,
                                  height: 116.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 128.0,
                            right: 8,
                            child: Stack(
                              children: [
                                Container(
                                  width: 52.0,
                                  height: 22.0,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '4.3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 16.0,
                                  height: 16.0,
                                  padding: const EdgeInsets.fromLTRB(
                                      1.08, 0.49, 0.86, 0.78),
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.star,
                                    size: 17.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 162,
                            right: 8,
                            child: Stack(
                              children: [
                                Container(
                                  height: 21,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF0E3C6E),
                                      borderRadius: BorderRadius.circular(8)),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Apply Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 200.0,
                            right: 0,
                            child: Stack(
                              children: [
                                Container(
                                  width: 77.0,
                                  height: 21.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    '361k',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 16.0,
                                  height: 16.0,
                                  padding: const EdgeInsets.fromLTRB(
                                      1.08, 0.49, 0.86, 0.78),
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.visibility_rounded,
                                    size: 20.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 125,
                            left: 18,
                            child: Stack(
                              children: [
                                Container(
                                  width: 178,
                                  height: 28,
                                  child: Text(
                                    utitle[i],
                                    style: const TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 153,
                            left: 18,
                            child: Stack(
                              children: [
                                Container(
                                  width: 207,
                                  height: 30,
                                  child: Text(
                                    descr[i],
                                    style: const TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            left: 18,
                            child: Stack(
                              children: [
                                Container(
                                    height: 27,
                                    width: 26,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8)),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: 19,
                                    )),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: const Text("1"),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 207,
                            left: 50,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "More than 1000+ students have been placed",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 13,
                            child: Stack(
                              children: [
                                Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.share_outlined,
                                      size: 20,
                                    )),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 309,
                            child: Stack(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.bookmark_border_outlined,
                                    size: 22,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
