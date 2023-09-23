import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, // Remove the default shadow
      backgroundColor: Colors.transparent, // Make the AppBar transparent
      flexibleSpace: Container(
        width: 428.0,
        height: 225.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0E3C6E), // Use the second color for the background
              Color(0xFF0E3C6E), // You can adjust the gradient stops as needed
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 49.0,
                    left: 37.0,
                  ),
                  child: Text(
                    'Find your own way',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(), // Add a spacer to push the notification icon to the end
                Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0), // Increased padding to the right
                  child: Container(
                    width: 17.0,
                    height: 21.0,
                    margin: const EdgeInsets.only(top: 1.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 21.0,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 37.0,
              ),
              child: Text(
                'Search in 600 colleges around!',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 37.0,
                    top: 10.0,
                  ),
                ),
                // Container for the search bar
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
                      Icon(Icons.search, color: Colors.grey), // Search icon
                      SizedBox(
                          width: 10), // Add space between icon and text field
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search colleges schools..',
                            border: InputBorder.none,
                          ),
                          // Implement search functionality here
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ), // Add space between search bar and voice icon
                // Container for the voice icon
                Container(
                  width: 55.0, // Adjust the width for the voice icon
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xFF0E3C6E),
                    ),
                  ),
                  child: const Icon(Icons.mic,
                      color: Color(0xFF0E3C6E)), // Voice icon
                  // Implement voice icon functionality here
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(225.0); // Specify the height of your custom AppBar
}
