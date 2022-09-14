import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({
    Key? key, required this.icon,
  }) : super(key: key);

final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 170,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade900,
          side: const BorderSide(
            color: Colors.white70,
          ),
        ),
        onPressed: () {},
        child:  Icon(icon, color: Colors.white),
      ),
    );
  }
}
