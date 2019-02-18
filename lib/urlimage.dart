import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class URLImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return URLImageState();
  }
}

class URLImageState extends State<URLImage> {
  var imgUrls = [
    'https://upload.wikimedia.org/wikipedia/commons/6/6e/Lactarius_indigo_48568.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/c2/Amanita_muscaria_%28fly_agaric%29.JPG',
    'https://upload.wikimedia.org/wikipedia/commons/f/f1/Amanita_stirps_Hemibapha_45069.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/6/65/Yellowmushrooms.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e1/2014-02-26_Ganoderma_lingzhi_Sheng_H._Wu%2C_Y._Cao_%26_Y.C._Dai_574882.jpg'
  ];
  var selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cacheImage = new CachedNetworkImage(
        placeholder: new CircularProgressIndicator(),
        imageUrl: imgUrls[selectedImageIndex],
    height: 300.0,);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load Image From Internet"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Center(
                  child: cacheImage,
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                        child: new Text("Back"),
                        onPressed: () {
                          setState(() {
                            selectedImageIndex=selectedImageIndex<=0?
                            selectedImageIndex:selectedImageIndex-1;
                          });
                          print("$selectedImageIndex");
                        })),
                new Expanded(
                    child: new RaisedButton(
                        child: new Text("Next"),
                        onPressed: () {
                          setState(() {
                            selectedImageIndex = (selectedImageIndex >= imgUrls.length - 1) ?
                            selectedImageIndex : selectedImageIndex + 1;
                          });
                          print("$selectedImageIndex");
                        }))
              ],
            )
          ],
        ),
      ),
    );
  }
}
