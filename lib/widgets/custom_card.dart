import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String? title, description,urlToImage;
  CustomCard(
      {
        super.key,
        required this.title,
        required this.description,
        required this.urlToImage
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Image.network(urlToImage!)
            ),
            Text(
              title!.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            Text(
              description!.toString(),
              style: TextStyle(
                fontSize: 8,
                color: Colors.blueGrey
              ),
            )
          ],
        ),
      ),
    );
  }
}
