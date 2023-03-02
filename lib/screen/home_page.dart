import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week5_navigation/screen/marketplace_page.dart';
import 'package:flutter_week5_navigation/widget/alta_scaffold.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> dataBarang = ["Baju", "Celana", "Topi", "Sepatu"];

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
        title: 'Home Page',
        body: Column(
          children: [
            ListTile(
              title: const Text("Profile "),
              leading: const Icon(Icons.person),
              onTap: () {
                /// Push
                // Navigator.of(context)
                //     .push(CupertinoPageRoute(builder: (_) => const ProfilePage()));

                /// PushReplacement
                // Navigator.of(context).pushReplacement(
                //     CupertinoPageRoute(builder: (_) => const ProfilePage()));

                /// push with name
                Navigator.of(context).pushNamed('/profile');

                /// PushReplacement with name
                // Navigator.of(context).pushReplacementNamed('/profile');
              },
            ),
            ListTile(
              title: const Text("Marketplace "),
              leading: const Icon(Icons.person),
              onTap: () async {
                /// Navigation with send data
                final data = Navigator.of(context).push(CupertinoPageRoute(
                    builder: (_) => MarketplacePage(
                          dataBarang: dataBarang,
                        )));
                debugPrint("Data dari marketplace ${await data}");
              },
            ),
            ListTile(
                title: const Text("Preview Page "),
                leading: const Icon(Icons.person),
                onTap: () => Navigator.of(context).pushNamed('/preview_page')),
          ],
        ));
  }
}
