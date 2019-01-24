import 'package:flutter/material.dart';

class drawerDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return  Container(
            color: Colors.white,
            padding: EdgeInsets.all(0.8),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("IBAS",style: TextStyle(fontWeight: FontWeight.bold),),
                  accountEmail: Text("ibas@ac.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2499410838,860052500&fm=27&gp=0.jpg"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                      image: NetworkImage("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2775279431,1981557515&fm=27&gp=0.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.yellow[100].withOpacity(0.6), 
                        BlendMode.srcOver)
                    )
                  ),
                ),
                ListTile(
                  title: Text('Message',textAlign: TextAlign.center,),
                  trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite',textAlign: TextAlign.center,),
                  trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
                ),
                ListTile(
                  title: Text('Settings',textAlign: TextAlign.center,),
                  trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
                ),
              ],
            )
          );
    }
}