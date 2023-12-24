

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageUrl = "https://wallpapers.com/images/high/cool-profile-picture-45bhdh56z2fjf5qv.webp";
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: 250,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
             DrawerHeader(
                padding : EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Username"),
                    accountEmail: Text("user@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    )
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title:Text("Home" ,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings,color: Colors.white,),
              title:Text("Settings",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title:Text("Contact us",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.white,),
              title:Text("Logout",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
