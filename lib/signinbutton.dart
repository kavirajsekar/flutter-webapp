import 'package:flutter/material.dart';
import 'package:webapplication/signin.dart';

class SignInButton extends StatefulWidget {
  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignIn()),
          );
          // Add your sign in logic here
        },
        child: Text(
          'Sign In',
          style: TextStyle(
            fontWeight: _isHovered ? FontWeight.bold : FontWeight.normal,
            color: _isHovered ? Color.fromARGB(255, 94, 43, 135) : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
