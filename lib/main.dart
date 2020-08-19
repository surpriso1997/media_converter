import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:media_converter/details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.pink,
        bottomNavigationBar: Container(
          width: width,
          color: Colors.green,
          height: 30,
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              InkWell(
                onTap: () async {
                  var file = await FilePicker.getFile(type: FileType.audio);
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => DetailsPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.5)),
                  height: 100,
                  child: Text("Select audio file"),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () async {
                  var file = await FilePicker.getFile(type: FileType.video);
                  print(file);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.5)),
                  height: 100,
                  child: Text("Select video file"),
                ),
              )
            ],
          ),
        ));
  }
}
