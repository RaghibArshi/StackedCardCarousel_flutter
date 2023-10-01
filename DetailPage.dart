import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String title;
  String imageUrl;
  DetailPage({Key? key, required this.title, required this.imageUrl}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Image.asset(widget.imageUrl, width: MediaQuery.of(context).size.width, height: 500, fit: BoxFit.fill,),
    );
  }
}
