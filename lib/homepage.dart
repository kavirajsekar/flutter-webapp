import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: double
              .infinity, // Set the container width to fill the available space
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Empowering Businesses',
                            style: TextStyle(
                              fontSize: 45, // Adjust text size as needed
                            ),
                          ),
                          Text(
                            'with smHRt® Solutions',
                            style: TextStyle(
                              fontSize: 45, // Adjust text size as needed
                            ),
                          ),
                          SizedBox(height: 25),
                          Text(
                            'Futuristic Cloud-HRMS powered by Artificial Intelligence for Digital Bharat 2.0',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20, // Adjust text size as needed
                            ),
                          ),
                          SizedBox(
                              height: 30), // Add space between text and button
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                _isHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                _isHovered = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                // Add your button tap logic here
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: _isHovered
                                      ? Color.fromARGB(255, 94, 43, 135)
                                      : Color.fromARGB(255, 210, 174,
                                          239), // Change button color when hovered
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(
                                    color: Colors.white, // Button text color
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20), // Add space between text and image
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/hr_image2.png', // Replace with your image URL
                        width: 800, // Adjust width as needed
                        height: 500,
                        // Adjust height as needed
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
