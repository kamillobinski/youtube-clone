import 'package:first_project/style_widgets.dart';
import 'package:flutter/material.dart';
import 'comments_data.dart';
import 'main.dart';

class CommentSec extends StatelessWidget {
  final Comment comment;
  CommentSec(this.comment);

  @override
  Widget build(BuildContext context) {
    String commentAuthor = comment.username;
    String commentText = comment.commentText;
    String commentAvatar = comment.avatar;

    return new Column(children: [
      Row(children: <Widget>[
        Column(children: <Widget>[
          Container(
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              width: 35.0,
              height: 35.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(commentAvatar), // Users avatar
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ]),
        Container(
          child: Column(children: <Widget>[
            Container(
              child: Text(commentAuthor,
                  style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold)),
              width: screenWidth - 100.0,
              margin: EdgeInsets.only(bottom: 2.0, top: 5.0),
            ),
            Container(
              child: Text(commentText),
              width: screenWidth - 100.0,
              margin: EdgeInsets.only(top: 2.0),
            ),
          ]),
        ),
      ]),
      new CommentsSeparator(),
    ]);
  }
}

// Add comment
class AddComment extends StatelessWidget {
  const AddComment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Column(children: <Widget>[
        Container(
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            width: 35.0,
            height: 35.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('lib/images/man.png'), // Users avatar
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ]),
      Container(
        child: TextField( style: TextStyle(fontSize: 13.0),
          decoration: InputDecoration(
              fillColor: Colors.grey[500],
              border: InputBorder.none,
              hintText: 'Add a public comment...'), // Text input
        ),
        width: screenWidth - 100.0,
        height: 20.0,
        margin: EdgeInsets.only(right: 15.0, bottom: 0.0, top: 15.0),
        alignment: Alignment.bottomLeft,
      )
    ]);
  }
}

// Comment section
class CommentsSection extends StatelessWidget {
  const CommentsSection({
    Key key,
    @required this.clickedVideoCommentsNumber,
  }) : super(key: key);
  final String clickedVideoCommentsNumber;

  @override
  Widget build(BuildContext context) {
    int commentsNumber = comments.length;

    return Row(children: <Widget>[
      Column(children: <Widget>[
        Container(
          child: new Text(
            'Comments ' + commentsNumber.toString(), // Comments number
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
          width: screenWidth - 80.0,
          height: 40.0,
          margin: EdgeInsets.only(left: 15.0),
          alignment: Alignment.centerLeft,
        ),
      ]),
      Container(
        child: new IconButton(
          icon: new Icon(
            Icons.tune, // Icon
            color: Colors.grey[700],
          ),
          onPressed: () {},
        ),
        width: 40.0,
        height: 40.0,
        margin: EdgeInsets.only(right: 15.0),
        alignment: Alignment.topCenter,
      )
    ]);
  }
}