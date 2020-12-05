import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Fatih IŞILGAN"),
              accountEmail: Text("isilganfatih@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars1.githubusercontent.com/u/29527525?s=460&u=ed95b90fb5b406dc5d7e2426009dd9ea3216d91b&v=4"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatarfiles.alphacoders.com/700/70031.gif"),
                ),
                CircleAvatar(
                  child: Text("FI"),
                  backgroundColor: Colors.tealAccent,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Divider(height: 10,color: Colors.red,),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(height: 10,color: Colors.red,),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(height: 10,color: Colors.red,),

                  ListTile(
                    leading: Icon(Icons.exit_to_app_outlined),
                    title: Text("Çıkış"),
                    trailing: Icon(Icons.chevron_right),
                    
                  ),
                  Divider(height: 10,color: Colors.red,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
