import 'package:flutter/material.dart';
import 'package:tugas4tpm/bantuan.dart';
import 'main.dart';
import 'daftarAnggota.dart';
import 'stopwatch.dart';
import 'situsRekomendasi.dart';
import 'favorit.dart';
import 'main.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaftarAnggota(
                        name1: "Fahmi Malik Namus Akbar",
                        nim1: "123200002",
                        photoUrl1:
                            "https://1.bp.blogspot.com/-EZHGhDzkUFY/X5bZdhQ1e7I/AAAAAAAAEIs/o0QnOT08UXY0M6s7T_-u18BqaQhw6Y9jgCLcBGAsYHQ/s1280/IMG-20200410-WA0056.jpg",
                        name2: "Giventheo Khemides",
                        nim2: "123200063",
                        photoUrl2: "images/profile.png",
                        name3: "Raynicka Ramadhana Padma",
                        nim3: "123200150",
                        photoUrl3: "images/ray.jpeg"),
                  ),
                );
              },
              child: Text('Daftar Anggota'),
            ),
            SizedBox(width: 20, height:20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StopwatchApp(),
                  ),
                );
              },
              child: Text('Stopwatch'),
            ),
            SizedBox(width: 20, height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Rekomendasi(),
                  ),
                );
              },
              child: Text('Rekomendasi'),
            ),
            SizedBox(width: 20, height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favorit(),
                  ),
                );
              },
              child: Text('Favorit'),
            ),
            SizedBox(width: 20, height:20),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => bantuan(),
                ),
              );
            },
            child: Icon(Icons.help),
            backgroundColor: Colors.blue,
          ),
          Expanded(child: Container()),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            child: Icon(Icons.logout),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
