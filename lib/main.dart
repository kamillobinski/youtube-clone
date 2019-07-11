import 'package:first_project/style_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'videos_data.dart';
import 'video.dart';
import 'style_widgets.dart';

String videoPreview;
String videoPreviewAuthor;
String videoPreviewTitle;
String videoPreviewDescriptionShort;

int clickedVideo;

double screenWidth;
double screenHeight;

class Card extends StatelessWidget {
  final Video video;
  Card(this.video);

  @override
  Widget build(BuildContext context) {
    // Disable screen rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    videoPreview = video.videoPreview;
    videoPreviewAuthor = video.authorAvatar;
    videoPreviewTitle = video.title;
    videoPreviewDescriptionShort = video.descriptionShort;

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.width;

    // Video preview image
    return new Column(
      children: [
        GestureDetector(
            onTap: () {
              clickedVideo = int.parse(video.id);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Container(
              width: screenWidth,
              height: 225.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(videoPreview),
                  fit: BoxFit.fill,
                ),
              ),
            )),

        // Row with authors avatar, video title, video description and icon
        Row(
          children: <Widget>[
            Container(
              child: new Avatar(), // Avatar
              width: 65.0,
            ),
            Column(children: <Widget>[
              Container(
                child: new Title(), // Title
                width: screenWidth - 140,
                margin: EdgeInsets.only(bottom: 10.0),
              ),
              Container(
                child: new Description(), // Description
                width: screenWidth - 140,
              ),
            ]),
            Container(
              child: new IconButton(
                icon: new Icon(
                  Icons.more_vert, // Icon
                  color: Colors.grey[700],
                ),
                onPressed: () {},
              ),
              width: screenWidth - 340,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),

        // Separator (line)
        new MainSeparator(),
      ],
    );
  }
}

// Class for video authors avatar
class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0),
        width: 35.0,
        height: 35.0,
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: new AssetImage(videoPreviewAuthor),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

// Class for video title
class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Text(
      videoPreviewTitle,
      style: TextStyle(
          color: Colors.grey[700], fontSize: 15.0, fontWeight: FontWeight.bold),
    );
  }
}

// Class for video description
class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Text(
      videoPreviewDescriptionShort,
      style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Image.asset('lib/images/logo.png', height: 20.0),
          backgroundColor: Colors.grey[50],
          elevation: 10.0,

          // Add new icon
          actions: [
            new IconButton(
              icon: new Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {},
            ),
            new Row(children: [
              new Container(
                child: new Image.asset('lib/images/man.png',
                    height: 25.0, width: 25.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
              ),
            ]), // User avatar
          ],

          // Change style of icon
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),

          textTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
        ),
        body: new ListView(
          children: new List.generate(4, (index) => new Card(videos[index])),
        ),
      ),
    ),
  );
}
