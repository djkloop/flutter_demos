import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyCacheImage extends StatefulWidget {
  @override
  _MyCacheImageState createState() => _MyCacheImageState();
}

class _MyCacheImageState extends State<MyCacheImage> {
  int index = 1;

  String url = "https://www.serebii.net/pokemongo/pokemon/";

  String generateImageUrl() {
    String imageUrl = "";
    String imageIndex = "00$index";
    print("imageIndex: $imageIndex");
    if (imageIndex.length > 3) {
      imageIndex = imageIndex.substring(imageIndex.length - 3);
    }
    imageUrl = url + "$imageIndex.png";
    print("imageUrl: $imageUrl");
    return imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    var cacheIMage = new CachedNetworkImage(
      imageUrl: generateImageUrl(),
      placeholder: new CircularProgressIndicator(),
      errorWidget: new Icon(Icons.error),
      fadeOutDuration: new Duration(seconds: 1),
      fadeInDuration: new Duration(seconds: 3),
      width: 400.0,
      height: 200.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Cached Image In Flutter."),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: cacheIMage,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Back"),
                    onPressed: () {
                      setState(() {
                        index = (index <= 1 ? index : index - 1);
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text("Next"),
                    onPressed: () {
                      setState(() {
                        index = index + 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
