import 'package:flutter/material.dart';
import 'user.dart';
class LoginDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<LoginDemo> {
  final User _mUser = User();
  @override
  Widget build(BuildContext context) {
    final TextField _txtUser = new TextField(
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: "Input account here",
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this._mUser.username = text;
        });
      },
    );
    final TextField _txtEmail = new TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: new InputDecoration(
        hintText: "Input email here",
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this._mUser.email = text;
        });
      },
    );
    final TextField _txtPass = new TextField(
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: "Input password here",
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      autocorrect: false,
      obscureText: true,
      onChanged: (text){
        setState(() {
          this._mUser.password = text;
        });
      },
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Screen"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                border: new Border.all(width: 1.2, color: Colors.black38),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0))),
            margin: new EdgeInsets.all(5.0),
            child: _txtUser,
          ),
          new Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                border: new Border.all(width: 1.2, color: Colors.black38),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0))),
            margin: new EdgeInsets.all(5.0),
            child: _txtEmail,
          ),
          new Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                border: new Border.all(width: 1.2, color: Colors.black38),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(5.0))),
            margin: new EdgeInsets.all(5.0),
            child: _txtPass,
          ),
          new Container(
            margin: new EdgeInsets.all(5.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: new Text("Login"),
                  onPressed: () {
                    print("Info: ${_mUser.username} + ${_mUser.email} + ${_mUser.password}");
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
