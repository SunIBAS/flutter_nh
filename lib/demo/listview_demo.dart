import 'package:flutter/material.dart';
import 'package:test_one/model/post.dart';

class ListViewDemo extends StatelessWidget {
  
  Widget _listItemBuilder(BuildContext context,int index) {
    print('[index]:' + index.toString());
    var img = new Image.network(posts[index].imageUrl);

    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          img,
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
    }
}