import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'main.dart';

class MainSeparator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
          height: 1.5,
          width: screenWidth,
          margin: const EdgeInsets.only(
              top: 15.0, bottom: 1.0),
          color: Colors.grey[200],
        );
  }
}

class VideoSeparator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 1.5,
        width: screenWidth,
        margin: const EdgeInsets.only(
            top: 15.0, bottom: 8.0),
        color: Colors.grey[200],
      );
  }
}

class VideoSeparatorSecond extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 1.5,
        width: screenWidth,
        margin: const EdgeInsets.only(top: 8.0),
        color: Colors.grey[200],
      );
  }
}

class CommentsSeparator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 1.5,
        width: screenWidth,
        margin: const EdgeInsets.only(
            top: 5.0, bottom: 5.0),
        color: Colors.grey[200],
      );
  }
}