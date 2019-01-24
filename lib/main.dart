import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() {
  runApp(
    App()
  );
}

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
      );
    }
}

class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('点击了菜单按钮'),
            ),
            title: Text('haha'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('点击了搜索按钮'),
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.white70,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist,size: 128.0,color: Colors.black12),
              Icon(Icons.change_history,size: 128.0,color: Colors.black12),
              Icon(Icons.directions_bike,size: 128.0,color: Colors.black12)
            ],
          ),
        ),
      );
    }
}

class HomeView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('点击了菜单按钮'),
          ),
          title: Text('haha'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('点击了搜索按钮'),
            )
          ],
          elevation: 0.0,
        ),
        body: ListViewDemo(),
      );
    }
}

