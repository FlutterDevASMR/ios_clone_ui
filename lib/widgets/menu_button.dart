import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MenuButton extends StatefulWidget {
  MenuButton({super.key, required this.icon, this.padding = 20});

  IconData icon;
  double padding;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          buttonPressed = !buttonPressed;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(widget.padding),
        decoration: BoxDecoration(
          color: buttonPressed ? Colors.white : Constants.buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          widget.icon,
          color: buttonPressed ? Constants.buttonColor : Colors.white,
        ),
      ),
    );
  }
}
