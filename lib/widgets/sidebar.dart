import 'package:flutter/material.dart';
//import 'package:flutter_app_jam_app/pages/auth/home_page.dart';
//import 'newtours_page.dart';
//import 'pasttours_page.dart';
//import 'profil_page.dart';
//import 'settings_page.dart';
//import 'wish_list.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/profile_image.png"),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kullanıcı Adı",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Soyadı",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Ana Sayfa'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              //Navigator.pushReplacement(
                //context,
                //MaterialPageRoute(builder: (context) => HomePage()), // MyApp'a yönlendirme yapılacak
              //);
            },
          ),
          ListTile(
            title: Text('İstek Listesi'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat

            },
          ),
          ListTile(
            title: Text('Yeni Turlar Keşfet'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat

            },
          ),
          ListTile(
            title: Text('Geçmiş Turlarım'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat

            },
          ),
          ListTile(
            title: Text('Profil'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat

            },
          ),
          Divider(),
          ListTile(
            title: Text('Ayarlar'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat

            },
          ),
        ],
      ),
    );
  }
}