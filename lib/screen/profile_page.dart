import 'package:flutter/material.dart';

import '../widget/alta_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AltaScaffold(

      title: 'Profile Page',
      body: Text("Hi, Karis"),
    );
  }
}
