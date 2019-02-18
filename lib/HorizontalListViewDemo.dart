import 'package:flutter/material.dart';

class HorizontalListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HorizontalListViewState();
  }
}

class HorizontalListViewState extends State<HorizontalListViewDemo> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("Horizontal ListView Demo"),
      ),
      body: new Container(
        child: new ListView(
          scrollDirection: Axis.horizontal,//Cuộn chiều ngang
          shrinkWrap: true,
          children: <Widget>[
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.green,
              child: new Center(
                child: new Text("Page One"),
              ),
            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.orange,child: new Center(
              child: new Text("Page One"),
            ),

            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.red,
              child: new Center(
                child: new Text("Page One"),
              ),
            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.pink,
              child: new Center(
                child: new Text("Page One"),
              ),
            )
          ],
        ),
      ),
    );

    return scaffold;
  }
}
