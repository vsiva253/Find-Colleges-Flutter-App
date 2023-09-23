import 'package:flutter/material.dart';

class CollegeDetailPage extends StatefulWidget {
  final String collegeName;
  final String description;
  final List<String> imageAssetPaths;

  const CollegeDetailPage({
    super.key,
    required this.collegeName,
    required this.description,
    required this.imageAssetPaths,
  });

  @override
  State<CollegeDetailPage> createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E3C6E),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 428.0,
              height: 190.0,
              child: Image.asset(
                widget.imageAssetPaths[0], // Use the first image asset path
                width: 428.0,
                height: 190.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.collegeName,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  SizedBox(
                    width: 250.0, // Adjust the width of the description box
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // Rating box
                  const RatingBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  const RatingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 433.0,
      height: 46.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 28.0,
              height: 46.0,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  '4.3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8.0,
            left: 26.0,
            child: Container(
              width: 45.0,
              height: 46.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: const Center(
                child: Icon(
                  Icons.star,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
