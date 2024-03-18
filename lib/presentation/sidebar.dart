import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

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
              Navigator.pushNamed(context, AppRoutes.storiesPageScreen);
            },
          ),
          ListTile(
            title: Text('İstek Listesi'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              Navigator.pushNamed(context, AppRoutes.wishListScreen);
            },
          ),
          ListTile(
            title: Text('Yeni Turlar Keşfet'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              Navigator.pushNamed(context, AppRoutes.newtoursPageScreen);
            },
          ),
          ListTile(
            title: Text('Geçmiş Turlarım'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              Navigator.pushNamed(context, AppRoutes.pasttoursPageScreen);
            },
          ),
          ListTile(
            title: Text('Profil'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              Navigator.pushNamed(context, AppRoutes.newtoursPageScreen);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Ayarlar'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapat
              Navigator.pushNamed(context, AppRoutes.newtoursPageScreen);
            },
          ),
        ],
      ),
    );
  }
}