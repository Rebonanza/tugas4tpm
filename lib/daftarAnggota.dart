import 'package:flutter/material.dart';
import 'main.dart';
import 'mainMenu.dart';

class DaftarAnggota extends StatelessWidget {
  final String name1;
  final String nim1;
  final String photoUrl1;
  final String name2;
  final String nim2;
  final String photoUrl2;
  final String name3;
  final String nim3;
  final String photoUrl3;

  const DaftarAnggota({
    Key? key,
    required this.name1,
    required this.nim1,
    required this.photoUrl1,
    required this.name2,
    required this.nim2,
    required this.photoUrl2,
    required this.name3,
    required this.nim3,
    required this.photoUrl3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(photoUrl1),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name1,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim1,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30.0),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/profile.png"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name2,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim2,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/ray.jpeg"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name3,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim3,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
