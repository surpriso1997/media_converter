import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: Container(
        width: width,
        color: Colors.green,
        height: 35,
        alignment: Alignment.center,
        child: ButtonTheme(
          minWidth: width,
          child: RaisedButton(
            color: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.white.withOpacity(0.5),
            elevation: 0.0,
            onPressed: () {},
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Title: This Song"),
          Text("save folder is: "),
          Text("select format"),
          Text("select bitrate"),
          Text("sample rate"),
          Text("channels"),
          Text("trim audio")
        ],
      ),
    );
  }
}
