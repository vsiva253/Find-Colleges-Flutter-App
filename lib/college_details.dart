import 'package:assignment/about_college.dart';
import 'package:flutter/material.dart';

import 'hostel_facility.dart';

class CollegeDetailPage extends StatefulWidget {
  final String collegeName;
  final String description;
  final String imageAssetPath;

  const CollegeDetailPage({
    super.key,
    required this.collegeName,
    required this.description,
    required this.imageAssetPath,
  });

  @override
  State<CollegeDetailPage> createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF0E3C6E),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 56,
          // apply Now button
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Apply Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: const Color(0xFF0E3C6E),
            // expandedHeight: 83,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.collegeName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: Color(0xFF0E3C6E),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 190.0,
              child: Hero(
                tag: widget.imageAssetPath,
                child: Image.asset(
                  widget.imageAssetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 18.0),
                        SizedBox(
                          width:
                              298.0, // Adjust the width of the description box
                          child: Text(
                            widget.collegeName,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        SizedBox(
                          width:
                              298.0, // Adjust the width of the description box
                          child: Text(
                            widget.description,
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                      ],
                    ),
                    Container(
                      height: 74,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "4.3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Icon(
                            Icons.star,
                            size: 23.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            floating: false,
            elevation: 0,
            backgroundColor: Colors.white,
            expandedHeight: 46,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xffF8F8F8),
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.1),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.09),
                    blurRadius: 4,
                    spreadRadius: 4,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'About College'),
                  Tab(text: 'Hostel Facility'),
                  Tab(text: 'Q & A'),
                  Tab(text: 'Events'),
                ],
                labelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                // padding: EdgeInsets.zero,
                labelPadding: EdgeInsetsGeometry.lerp(
                  EdgeInsets.zero,
                  const EdgeInsets.symmetric(horizontal: 10),
                  0.5,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: const Color(0xFF0E3C6E),
              ),
            ),
          )
        ],
        body: SizedBox(
          // height: 300.0,
          child: TabBarView(
            controller: _tabController,
            children: const [
              AboutCollegeView(),
              HostelFacilityView(),
              Center(
                child: Text(
                  'Q & A',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
