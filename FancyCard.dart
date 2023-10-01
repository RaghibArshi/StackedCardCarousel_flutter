import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_project/DetailPage.dart';

class FancyCard extends StatelessWidget {
  const FancyCard({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: Image.asset(image),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            OutlinedButton(
              child: const Text("Show Details"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailPage(title: title, imageUrl: image);
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
