import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DrawerDemoState();
  }
}

class DrawerDemoState extends State<DrawerDemo> {
  var title = "";

  _buildDrawer() {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'images/ic_one.jpg',
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    "Nguyen Huu Binh",
                    style: new TextStyle(color: Colors.white),
                  ),
                  new Text("Software Deverloper",
                      style: new TextStyle(color: Colors.white))
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            decoration: new BoxDecoration(color: Colors.blue),
          ),
          new ListTile(
            leading: new Icon(Icons.contacts),
            title: new Text("Contact"),
            onTap: (){
              setState(() {
                this.title = "Contact";
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.message),
            title: new Text("Chat"),
            onTap: (){
              setState(() {
                this.title = "Contact";
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text("Photos"),
            onTap: (){
              setState(() {
                this.title = "Contact";
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text("Settings"),
            onTap: (){
              setState(() {
                this.title = "Setting";
              });
              Navigator.pop(context);
            },
          ),
          new Divider(
            indent: 16.0,
            color: Colors.black38,
          ),
          new ListTile(
            leading: new Icon(Icons.security),
            title: new Text("Privacy"),
            onTap: (){
              setState(() {
                this.title = "Privacy";
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.share),
            title: new Text("Share"),
            onTap: (){
              setState(() {
                this.title = "Share";
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer Demo"),
      ),
      body: new Center(
        child: new Text(
          this.title,
          style: new TextStyle(fontSize: 20.0),
        ),
      ),
      drawer: _buildDrawer(),
    );
  }
}
