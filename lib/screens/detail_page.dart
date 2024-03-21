import 'package:flutter/material.dart';
import 'package:kuis/data_buku.dart';

class DetailPage extends StatefulWidget {
  DataBuku dataBuku;

  DetailPage({super.key, required this.dataBuku});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dataBuku.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.network(
              widget.dataBuku.imageLink,
              width: 150,
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Penulis    : ${widget.dataBuku.author}"),
              Text("Bahasa     : ${widget.dataBuku.language}"),
              Text("Negara     : ${widget.dataBuku.country}"),
              Text("Halaman    : ${widget.dataBuku.pages.toString()}"),
              Text("Tahun      : ${widget.dataBuku.year.toString()}"),
              Text(
                  "Status      : ${widget.dataBuku.isAvailable ? "Tersedia" : "Tidak tersedia"}"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: widget.dataBuku.isAvailable
                ? () {
                    setState(() {
                      widget.dataBuku.isAvailable = false;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Berhasil meminjam buku"),
                      backgroundColor: Colors.green,
                    ));
                  }
                : null,
            child: Text("Pinjam"),
          ),
        ],
      ),
    );
  }
}
