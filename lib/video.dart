import 'package:first_project/style_widgets.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'comments_data.dart';
import 'videos_data.dart';
import 'comments.dart';

// This is a screen when user is redirected after tapping on video preview
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                  child: new Column(
                    children: new List.generate(
                        1, (index) => new SecondBody(videos[clickedVideo - 1])),
                  ), 
                ),
                Expanded( 
                  child: ListView( 
                    children: [
                      Container( 
                        child: new VideoDetails(),
                      ),
                      Container( 
                        child: new Column(
                            children: new List.generate(comments.length,
                                (index) => new CommentSec(comments[index]))),
                      ),
                    ], 
                  ), 
                )
              ],
            ),
          ),
        ])

        //dont touch
        );
  }
}

String clickedVideoPreview;
String clickedVideoTitle;
String clickedVideoDescriptionShort;
String clickedVideoAuthorAvatar;
String clickedVideoAuthor;
String clickedVideoCommentsNumber;
String clickedVideoSubscribers;
String clickedVideoLikes;
String clickedVideoDislikes;
String clickedVideoViews;

// Class for second screen with video details and comments
class SecondBody extends StatelessWidget {
  final Video video;
  SecondBody(this.video);

  @override
  Widget build(BuildContext context) {
    clickedVideoPreview = video.videoPreview;
    clickedVideoTitle = video.title;
    clickedVideoDescriptionShort = video.descriptionShort;
    clickedVideoAuthorAvatar = video.authorAvatar;
    clickedVideoAuthor = video.authorName;
    clickedVideoCommentsNumber = video.comments;
    clickedVideoSubscribers = video.subscribersCount;
    clickedVideoLikes = video.likes;
    clickedVideoDislikes = video.dislikes;
    clickedVideoViews = video.views;

    // Video preview image
    return new Column(
      children: [
        Container(
          width: screenWidth,
          height: 250.0,
          margin: const EdgeInsets.all(0.0),
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(clickedVideoPreview),
              fit: BoxFit.fill,
            ),
          ),
        ),//HERE ADD
      ],
    );
  }
}

class VideoDetails extends StatelessWidget {
  const VideoDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: new Text(
                clickedVideoTitle,
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              width: screenWidth - 80.0,
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
            ),
            Container(
              child: new Text(
                clickedVideoViews + ' views', // Video views count
                style: TextStyle(fontSize: 11.0, color: Colors.grey[700]),
              ),
              width: screenWidth - 80.0,
              margin: EdgeInsets.only(left: 15.0),
            ),
          ]),
          Container(
            child: new IconButton(
              icon: new Icon(
                Icons.arrow_drop_down,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
            width: 50.0,
            height: 30.0,
            margin: EdgeInsets.only(right: 15.0, bottom: 5.0),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //FIRST COLUMN
          Column(children: <Widget>[
            Container(
              child: new IconButton(
                icon: new Icon(Icons.thumb_up, color: Colors.grey[600]), // Like
                onPressed: () {},
              ),
              margin: EdgeInsets.only(left: 0.0),
            ),
            Container(
              child: new Text(clickedVideoLikes),
              margin: EdgeInsets.only(left: 0.0),
            ),
          ]),
          //SECOND COLUMN
          Column(children: <Widget>[
            Container(
              child: new IconButton(
                icon: new Icon(Icons.thumb_down,
                    color: Colors.grey[600]), // Dislike
                onPressed: () {},
              ),
            ),
            Container(
              child: new Text(clickedVideoDislikes),
            ),
          ]),
          //THIRD COLUMN
          Column(children: <Widget>[
            Container(
              child: new IconButton(
                icon: new Icon(Icons.share, color: Colors.grey[600]), // Share
                onPressed: () {},
              ),
            ),
            Container(
              child: new Text('Share'),
            ),
          ]),
          //FOURTH COLUMN
          Column(children: <Widget>[
            Container(
              child: new IconButton(
                icon: new Icon(Icons.file_download,
                    color: Colors.grey[600]), // Download
                onPressed: () {},
              ),
            ),
            Container(
              child: new Text('Download'),
            ),
          ]),
          //FIFTH COLUMN
          Column(children: <Widget>[
            Container(
              child: new IconButton(
                icon: new Icon(Icons.add, color: Colors.grey[600]), // Save
                onPressed: () {},
              ),
              margin: EdgeInsets.only(right: 5.0),
            ),
            Container(
              child: new Text('Save'),
              margin: EdgeInsets.only(right: 5.0),
            ),
          ]),
        ],
      ),

      new VideoSeparator(),

      // Row with authors avatar, nickname, subscribers and subscribe button
      Row(
        children: <Widget>[
          new Container(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              width: 35.0,
              height: 35.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(
                      clickedVideoAuthorAvatar), // Authors avatar
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          //AUTHOR NAME
          Column(children: <Widget>[
            Container(
              child: Text(
                clickedVideoAuthor,
                style: TextStyle(fontSize: 15.0, color: Colors.grey[900]),
              ), // Authors name
              width: screenWidth - 165,
              margin: EdgeInsets.only(bottom: 2.0),
            ),
            Container( 
              child: Text(clickedVideoSubscribers +
                  ' subscribers', style: TextStyle(fontSize: 12.0),), // Subscribers number
              width: screenWidth - 165,
            ),
          ]),
          //SUBSCRIBE BUTTOn
          Container(
              child: new Container(
            height: 10.0,
            width: 15.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage(
                    'lib/images/subscribe.png'), // Subscribe image
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          )),
          Container(
              child: new Container(
            child: Text(
              'SUBSCRIBE', // Subscrite Text
              style: TextStyle(fontSize: 13.0 ,fontWeight: FontWeight.bold, color: Colors.red),
            ),
            margin: EdgeInsets.only(left: 10.0, right: 15.0),
          )),
        ],
      ),

      new VideoSeparatorSecond(),

      // Comments section; comments number, icon
      new CommentsSection(
          clickedVideoCommentsNumber: clickedVideoCommentsNumber),
      new AddComment(),

      //LINE BETWEEN
      new Container(
        height: 1.5,
        width: screenWidth,
        margin: const EdgeInsets.only(top: 10.0),
        color: Colors.grey[200],
      ),
    ]);
  }
}