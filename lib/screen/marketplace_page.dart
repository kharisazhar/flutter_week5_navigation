import 'package:flutter/material.dart';
import 'package:flutter_week5_navigation/widget/alta_scaffold.dart';

/// Contoh Kirim data
class MarketplacePage extends StatelessWidget {

  List<String> dataBarang;

  MarketplacePage({Key? key, required this.dataBarang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      leading: IconButton(
        icon: const Icon(Icons.skip_previous),
        onPressed: () {
          Navigator.pop(context, ["data dari marketplace"]);
        },
      ),
      title: 'Marketplace',
      body: Column(
        children: [
          const Text('Selamat belanja'),
          ListView.builder(
            shrinkWrap: true,
              itemCount: dataBarang.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(dataBarang[index]));
              })
        ],
      ),
    );
  }
}
