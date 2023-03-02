import 'package:flutter/material.dart';

class AltaImage extends StatelessWidget {
  final IconData icon;
  final String title;

  const AltaImage({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 100,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 50),
        )
      ],
    );
  }
}
