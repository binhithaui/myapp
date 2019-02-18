import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'flowerdata.dart';
import 'data.dart';

class ListTextAndImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListTextAndImageState();
  }
}

class ListTextAndImageState extends State<ListTextAndImage> {
  List<Container> _buildItemFlower() {
    int index = 0;
    return flowers.map((flower) {
      var container = Container(
        decoration: index % 2 == 0
            ? new BoxDecoration(color: Colors.orange)
            : new BoxDecoration(color: Colors.blue),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(10.0),
              child: new CachedNetworkImage(
                imageUrl: flower.imageURL,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  flower.flowerName,
                  style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Felipa"),
                  textScaleFactor: 1.3,
                ),
                new Text(
                  flower.description,
                  style: new TextStyle(
                      color: Colors.white, fontFamily: 'OpenSans'),
                  textScaleFactor: 0.8,
                )
              ],
            )
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Image And Text"),
      ),
      body: new ListView(
        children: _buildItemFlower(),
      ),
    );
  }
}
