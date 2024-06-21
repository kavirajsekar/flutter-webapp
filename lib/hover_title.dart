import 'package:flutter/material.dart';

class HoverableTile extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const HoverableTile({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  _HoverableTileState createState() => _HoverableTileState();
}

class _HoverableTileState extends State<HoverableTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: Container(
        color: _isHovered ? Colors.grey.withOpacity(0.5) : Colors.transparent,
        child: ListTile(
          title: Text(widget.title),
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
