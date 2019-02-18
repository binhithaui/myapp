import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';
import 'DrawerDemo.dart';
import 'LoginDemo.dart';
import 'urlimage.dart';
import 'ListViewWithLoadMore.dart';
import 'HorizontalListViewDemo.dart';
import 'ListTextAndImage.dart';
//void main() => runApp(new MyApp()); //One line function
//void main() => runApp(new BasicLayout());
//void main() => runApp(new GridViewDemo());
//void main() => runApp(new CardAndSizeBoxDemo());
//void main() => runApp(new SnackbarDemo());
//void main() => runApp(new MultiTabDemo());
//void main() => runApp(new MultiFontsDemo());
//void main() => runApp(new UseDrawerDemo());
//void main()=>runApp(new LoginExample());
//void main() => runApp(new DemoURLImage());
void main() => runApp(new ListLoadMore());
//void main() => runApp(new HorizontalDemo());
//void main() => runApp(new ListTextAndImageDemo());
class ListTextAndImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final materialApp = new MaterialApp(
      title: "",
      home: new ListTextAndImage(),
    );
    return materialApp;
  }
}
class HorizontalDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final materialApp = new MaterialApp(
      title: "",
      home: new HorizontalListViewDemo(),
    );
    return materialApp;
  }
}
class ListLoadMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new ListViewWithLoadMore(),
    );
  }
}

class DemoURLImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new URLImage(),
    );
  }
}

class LoginExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new LoginDemo(),
    );
  }
}

class UseDrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new DrawerDemo(),
    );
  }
}
/*MultiFont*/
class MultiFontsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Multi Fonts Demo"),
          ),
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text("Content 1 with Felipa Fonts", style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Felipa'
              ),),
              new Text(
                "Content 2 with OpenSans-Bold Fonts", style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'OpenSans'
              ),),
              new Text("Content 3 with Lora-Italic Fonts", style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Lora'
              ),)
            ],
          )
      ),
    );
  }
}
/*Multi tab*/
class MultiTabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
                indicatorColor: Colors.red,
                indicatorWeight: 2,
                tabs: [
                  new Tab(
                    icon: new Icon(Icons.home),
                    text: "Home",
                  ),
                  new Tab(
                    icon: new Icon(Icons.group),
                    text: "Group",
                  ),
                  new Tab(
                    icon: new Icon(Icons.chat),
                    text: "Message",
                  ),
                  new Tab(
                    icon: new Icon(Icons.cloud_circle),
                    text: "Cloud",
                  )
                ]),
          ),
          body: new TabBarView(children: [
            new Tab1(),
            new Tab2(),
            new Tab3(),
            new Tab4(),
          ]),
        ));
    return new MaterialApp(title: "MultiTab Demo", home: tabController);
  }
}

/*SnackBar demo*/
class SnackbarDemo extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _showSnackBar() {
    print("Clicked Button");
    final snackBar = new SnackBar(
      content: new Text("This is Snackbar"),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.green,
      action: new SnackBarAction(
          label: 'ok',
          onPressed: () {
            print("Click button Snackbar");
          }),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: new Text("Snackbar Demo"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
                onPressed: _showSnackBar)
          ],
        ),
        body: new Text("Content Snackbar Demo"),
      ),
    );
  }
}

/*Card and SizeBox*/
class CardAndSizeBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text("Nguyễn Hữu Bình"),
            leading: new Icon(
              Icons.people,
              color: Colors.blue,
              size: 25.0,
            ),
            subtitle: new Text("Software Developer"),
          ),
          new Divider(
            color: Colors.black26,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text("binhtm3@gmail.com"),
            leading: new Icon(
              Icons.email,
              color: Colors.blue,
              size: 25.0,
            ),
            subtitle: new Text("Email Address"),
          ),
          new Divider(
            color: Colors.black26,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text("0984684851"),
            leading: new Icon(
              Icons.contacts,
              color: Colors.blue,
              size: 25.0,
            ),
            subtitle: new Text("NumberPhone"),
          ),
        ],
      ),
    );
    final sizeBox = new Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 280.0,
        child: card,
      ),
    );

    final centerBox = new Center(
      child: sizeBox,
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Card and SizeBox demo"),
        ),
        body: centerBox,
      ),
    );
  }
}

/*GridView*/
class MainPageDemo extends StatefulWidget {
  final String title;

  MainPageDemo({this.title}) : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 120.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: _buildGridTile(29),
      ),
    );
  }

  List<Widget> _buildGridTile(numberOfTiles) {
    List<Stack> listStack =
    new List<Stack>.generate(numberOfTiles, (int index) {
      final position = index + 1;
      final imageName = 'images/space-wallpaper-($position)-by-twalls.jpg';
//      return new Container(
//        child: new Image.asset(imageName,
//        fit: BoxFit.fill,),
//      );
      return new Stack(
        alignment: const Alignment(-1.0, 1.0),
        children: <Widget>[
          new Container(
            child: new Image.asset(
              imageName,
              width: 150.0,
              height: 150.0,
              fit: BoxFit.fill,
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(5.0),
            decoration:
            new BoxDecoration(color: new Color.fromARGB(150, 71, 151, 236)),
            child: new Text(
              '$index',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      );
    });
    return listStack;
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new MainPageDemo(
          title: "GridView of Images",
        ));
  }
}

class RandomEnglishWord extends StatefulWidget {
  //The co thuoc tinh thay doi
  @override
  State<StatefulWidget> createState() {
    return new RandomEnglishWordsState();
  }
}

/*ListView demo*/
//State = Thay doi thuoc tinh
class RandomEnglishWordsState extends State<RandomEnglishWord> {
  final _words = <WordPair>[];
  final _checkedWords = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List English Word"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list), onPressed: _pushToSaveWordScree)
        ],
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index], index);
      }),
    );
  }

  _pushToSaveWordScree() {
    print("You pressed icon");
    //Navigate screen
    final pagerRoute = new MaterialPageRoute(builder: (context) {
      final listTiles = _checkedWords.map((wordPair) {
        return new ListTile(
          title: new Text(
            wordPair.asUpperCase,
            style: new TextStyle(fontSize: 20.0, color: Colors.green),
          ),
        );
      }); //Convert mang doi tuong kieu A sang mang doi tuong kieu B
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("List Checked Words"),
        ),
        body: new ListView(
          children: listTiles.toList(),
        ),
      );
    });

    Navigator.of(context).push(pagerRoute);
  }

  Widget _buildRow(WordPair wordPair, int index) {
    final color = index % 2 == 0 ? Colors.red : Colors.blue;
    final isChecked = _checkedWords.contains(wordPair);
    return new ListTile(
      leading: new Icon(
        isChecked ? Icons.check_box : Icons.check_box_outline_blank,
        color: color,
      ),
      title: new Text(
        wordPair.asUpperCase,
        style: new TextStyle(fontSize: 20.0, color: color),
      ),
      onTap: () {
        setState(() {
          if (isChecked)
            _checkedWords.remove(wordPair);
          else
            _checkedWords.add(wordPair);
        });
      }, //Khi tay cham vao thi goi ham nay
    );
  }
}

class MyApp extends StatelessWidget {
  //Khong the thay doi thuoc tinh
  //Bat buoc phai co ham build
  //Xay dung giao dien trong ham build
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "This is demo flutter app", home: new RandomEnglishWord());
  }
}

/*Basic Layout Demo*/
class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), //Tren - Phai - Duoi - Trai
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "BinhIT Learn Flutter Tutorial",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.red),
                    ),
                    padding: const EdgeInsets.only(bottom: 10.0),
                  ),
                  new Text(
                    "This is basic demo layout",
                    style: new TextStyle(
                        fontSize: 16.0, color: Colors.red[200]),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              )),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text("  100"),
        ],
      ),
    );
    Widget buildButton(IconData iconData, String titleButton) {
      final tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(
            iconData,
            color: tintColor,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(
              titleButton,
              style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          )
        ],
      );
    }

    Widget fourButtonSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );
    Widget textSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Text(
        ''' Trước đó, một tài khoản cá nhân trên mạng Facebook cho biết người nhà của mình vừa bị cướp 64 triệu đồng ngay cây xăng Hiệp Thành Phát 2. Tài khoản này còn nói hiện trường vụ cướp ở trước cổng công an huyện. Qua xác minh của phóng viên Báo Người Lao Động, không có cây xăng Hiệp Thành Phát 2 nào thuộc huyện Hàm Thuận Bắc (tỉnh Bình Thuận) như thông tin đã đăng trên Facebook mà chỉ có cây xăng Hiệp Thành Phát 2 thuộc huyện Thuận Bắc (tỉnh Nình Thuận)
        Trao đổi với Báo Người Lao Động, đại tá Huỳnh Cầm cho biết qua xác minh của lực lượng trinh sát, khoảng 3 ngày trước, có cặp vợ chồng vào đổ xăng xe ở cây xăng nói trên đã làm rơi chiếc ví. Lúc đó, có đôi nam nữ đi xe máy cũng vào đổ xăng, phát hiện chiếc ví bị rơi nên đã "xớt" luôn rồi bỏ chạy. Người bị rơi ví cũng không trình báo công an.''',
        style: new TextStyle(fontSize: 18.0, color: Colors.green),
      ),
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Basic App Screen"),
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset(
                'images/ic_one.jpg',
                fit: BoxFit.cover,
              ),
              titleSection,
              fourButtonSection,
              textSection,
            ],
          )),
    );
  }
}
