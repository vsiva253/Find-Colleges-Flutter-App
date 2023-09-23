import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 71,
      decoration: const BoxDecoration(
        color: Color(0xFF0E3C6E),
        boxShadow: [
          BoxShadow(
            color: Color(0x85000000),
            offset: Offset(8, 8),
            blurRadius: 16,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: InkWell(
              onTap: () => _onItemTapped(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkResponse(
                    onTap: () => _onItemTapped(0),
                    highlightColor:
                        Colors.transparent, // Custom highlight color
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: _selectedIndex == 0
                              ? 32
                              : 28, // Increase icon size
                          color:
                              _selectedIndex == 0 ? Colors.white : Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                  if (_selectedIndex == 0)
                    Container(
                      width: 70, // Increase the width of the selected baseline
                      height: 4, // Increase the height of the selected baseline
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => _onItemTapped(1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkResponse(
                  onTap: () => _onItemTapped(1),
                  highlightColor: Colors.transparent, // Custom highlight color
                  child: Column(
                    children: [
                      Icon(
                        Icons.search,
                        size:
                            _selectedIndex == 1 ? 32 : 28, // Increase icon size
                        color:
                            _selectedIndex == 1 ? Colors.white : Colors.white,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 12,
                          color:
                              _selectedIndex == 1 ? Colors.white : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                if (_selectedIndex == 1)
                  Container(
                    width: 70, // Increase the width of the selected baseline
                    height: 4, // Increase the height of the selected baseline
                    color: Colors.white,
                  ),
              ],
            ),
          ),
          InkWell(
            onTap: () => _onItemTapped(2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkResponse(
                  onTap: () => _onItemTapped(2),
                  highlightColor: Colors.transparent, // Custom highlight color
                  child: Column(
                    children: [
                      Icon(
                        Icons.save,
                        size:
                            _selectedIndex == 2 ? 32 : 28, // Increase icon size
                        color:
                            _selectedIndex == 2 ? Colors.white : Colors.white,
                      ),
                      Text(
                        'Saved',
                        style: TextStyle(
                          fontSize: 12,
                          color:
                              _selectedIndex == 2 ? Colors.white : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                if (_selectedIndex == 2)
                  Container(
                    width: 70, // Increase the width of the selected baseline
                    height: 4, // Increase the height of the selected baseline
                    color: Colors.white,
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26.0),
            child: InkWell(
              onTap: () => _onItemTapped(3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkResponse(
                    onTap: () => _onItemTapped(3),
                    highlightColor:
                        Colors.transparent, // Custom highlight color
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: _selectedIndex == 3
                              ? 32
                              : 28, // Increase icon size
                          color:
                              _selectedIndex == 3 ? Colors.white : Colors.white,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 3
                                ? Colors.white
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                  if (_selectedIndex == 3)
                    Container(
                      width: 70, // Increase the width of the selected baseline
                      height: 4, // Increase the height of the selected baseline
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
