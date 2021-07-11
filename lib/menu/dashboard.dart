import 'package:responsei/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsei/constants.dart';

class Dashboard extends StatelessWidget {
  List languages = [
    "saat mendaki gungung ..lihat selengkapnya",
    "saat berada di tengah kota ..lihat selengkapnya",
    "saat akan vacation ke bali ..lihat selengkapnya",
    "saat melihat tiang listrik ..lihat selengkapnya",
    "saat berada di pantai kapuk  ..lihat selengkapnya",
    "saat berada di pohon pinus  ..lihat selengkapnya",
    "menyebrang rawa mencari buaya ..lihat selengkapnya",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: Colors.grey,
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              kPrimaryLightColor, //This will change the drawer background to blue.
          //other styles
        ),
        child: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text(
                  "1800016040 - A Novi Ali Sya'bani",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                accountEmail: new Text("a1800016040@webmail.uad.ac.id"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: new AssetImage("assets/images/profile.jpg"),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 1,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(7, (index) {
          final language = languages[index].toString();
          return Center(
              child: Stack(children: <Widget>[
            Image.asset(
              'assets/images/c$index.jpg',
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
            Positioned(
              // The Positioned widget is used to position the text inside the Stack widget
              bottom: 20,
              right: 10,

              child: Container(
                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(5),
                child: Text(
                  'kenangan anda $language',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ]));
        }),
      ),
    );
  }
}
