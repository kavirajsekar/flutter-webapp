import 'package:flutter/material.dart';

class FreeTrialButton extends StatefulWidget {
  @override
  _FreeTrialButtonState createState() => _FreeTrialButtonState();
}

class _FreeTrialButtonState extends State<FreeTrialButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TextButton(
        onPressed: () {
          // Add your free trial logic here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Color.fromARGB(
                    255, 210, 174, 239); // Darker blue color when hovered over
              }
              return Color.fromARGB(255, 94, 43, 135); // Default blue color
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  color: Color.fromARGB(255, 94, 43, 135)), // Border color
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Free Trial',
            style: TextStyle(
              color: Colors.white, // Button text color
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
