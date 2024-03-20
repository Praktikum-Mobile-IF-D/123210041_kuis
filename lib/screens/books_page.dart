import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis/data_buku.dart';
import 'package:kuis/screens/detail_page.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Data Buku",
            textAlign: TextAlign.center,
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, crossAxisSpacing: 2, mainAxisSpacing: 1),
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(dataBuku: listBuku[index]);
                }));
              },
              child: Card(
                child: Row(
                  children: [
                    Image.network(
                      listBuku[index].imageLink,
                      width: 200,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listBuku[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          listBuku[index].author,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          listBuku[index].pages.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
