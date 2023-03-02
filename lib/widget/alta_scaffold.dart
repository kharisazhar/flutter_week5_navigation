import 'package:flutter/material.dart';

class AltaScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final Widget? leading;

  const AltaScaffold({Key? key, required this.body, required this.title, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Property
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        leading: leading,
      ),
      body: body,
    );
  }
}
