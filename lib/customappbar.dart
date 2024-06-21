import 'package:flutter/material.dart';
import 'package:webapplication/freetrail.dart';
import 'package:webapplication/navbutton.dart';
import 'package:webapplication/signinbutton.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 164, 105, 236),
      title: Row(
        children: <Widget>[
          // Image on the top left corner
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/hr_logo2.png', // Replace this with your image URL
              width: 200, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
          ),
          Spacer(), // Add some spacing between the image and buttons
          // Clickable buttons
          // NavButton(title: 'Home', onPressed: () {}),
          // SizedBox(width: 50),
          // NavButton(title: 'Product', onPressed: () {}),
          // SizedBox(width: 50),
          // NavButton(title: 'Resources', onPressed: () {}),
          SizedBox(width: 50),
          NavButton(title: 'About Us', onPressed: () {}),
          SizedBox(width: 50),
          NavButton(title: 'Contact Us', onPressed: () {}),
          SizedBox(width: 50),
        ],
      ),
      actions: <Widget>[
        // Free Trial button on the left side of Sign In button
        // FreeTrialButton(),
        // SizedBox(width: 30), // Add more space between the buttons
        // Sign In button on the top right corner
        SignInButton(),
        SizedBox(width: 10), // Add some spacing between the buttons
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Other widget classes remain the same as before (NavButton, FreeTrialButton, SignInButton)
