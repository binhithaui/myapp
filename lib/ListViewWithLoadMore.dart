import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewWithLoadMore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewLoadMoreState();
  }
}

class ListViewLoadMoreState extends State<ListViewWithLoadMore> {
  var _words = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("List Load More"),
        ),
        body: new Container(
          child: new ListView.builder(
              itemCount: _words.length + 1,
              itemBuilder: (context, index) {
                return (index == _words.length)
                    ? _builderRowButton()
                    : _builderRowText(_words[index], index);
              }),
        ));
  }

  Widget _builderRowText(WordPair word, int index) {
    return new ListTile(
      leading: new Icon(
        Icons.child_care,
        color: Colors.blue,
      ),
      title: new Text(
        word.asUpperCase,
      ),
    );
  }

  Widget _builderRowButton() {
    return Container(
      margin: EdgeInsets.only(left: 10.0,right: 10.0, bottom: 10.0),
      child: new RaisedButton(
        elevation: 5.0,
        color: Colors.blue,
        textColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        onPressed: () {
          setState(() {
            _words.addAll(generateWordPairs().take(10));
          });
        },
        child: new Text("Load More Data"),
      ),
    );
  }
}
