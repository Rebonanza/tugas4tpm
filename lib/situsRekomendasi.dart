import 'package:flutter/material.dart';
import 'links.dart';
import 'package:url_launcher/url_launcher.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({Key? key}) : super(key: key);

  @override
  State<Rekomendasi> createState() => _RekomendasiState();
}

class _RekomendasiState extends State<Rekomendasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Situs Rekomendaasi Online Shopping"),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              final links = listLinks[index];
              return Card(
                  child: InkWell(
                onTap: () {
                  _launchUrl(links.link);
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.network(links.fotoUrls, width: 80, height: 80),
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(links.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Visitor: ${links.visitor}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12)),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(links.link,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12)),
                          ),
                        ])
                  ],
                ),
              ));
            },
            itemCount: listLinks.length,
          )),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri(scheme: 'https', host: url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
