import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  const NavButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Text(
          widget.title,
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
