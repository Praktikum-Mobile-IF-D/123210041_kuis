import 'package:kuis/data_buku.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  DataBuku dataBuku;

  DetailPage({super.key, required this.dataBuku});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dataBuku.title),
      ),
      body: Column(
        children: [
          Image.network(dataBuku.imageLink),
          Text(dataBuku.author),
          Text(dataBuku.language),
          Text(dataBuku.country),
          Text(dataBuku.pages.toString()),
          Text(dataBuku.year.toString()),
          Text(dataBuku.isAvailable ? "Tersedia" : "Tidak tersedia"),
        ],
      ),
    );
  }
}
