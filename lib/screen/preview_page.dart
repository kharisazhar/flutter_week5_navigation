import 'package:flutter/material.dart';
import 'package:flutter_week5_navigation/widget/alta_image.dart';
import 'package:flutter_week5_navigation/widget/alta_scaffold.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      body: Column(
        children: const [
          /// Widget
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.flutter_dash_rounded,
          //       size: 100,
          //     ),
          //     Text(
          //       "Flutter",
          //       style: TextStyle(fontSize: 50),
          //     )
          //   ],
          // ),
          //
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.flutter_dash_rounded,
          //       size: 100,
          //     ),
          //     Text(
          //       "Flutter",
          //       style: TextStyle(fontSize: 50),
          //     )
          //   ],
          // ),
          //
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.flutter_dash_rounded,
          //       size: 100,
          //     ),
          //     Text(
          //       "Flutter",
          //       style: TextStyle(fontSize: 50),
          //     )
          //   ],
          // ),

          SizedBox(
            height: 22.0,
          ),

          /// Custom Widget
          AltaImage(icon: Icons.flutter_dash_rounded, title: 'Flutter A'),
          AltaImage(icon: Icons.face_unlock_outlined, title: 'Flutter B'),
          AltaImage(icon: Icons.fire_extinguisher, title: 'Flutter C'),
        ],
      ),
      title: 'Alta Example',
    );
  }
}
