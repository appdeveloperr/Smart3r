import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:share/share.dart';
import '../screens/AfterAuth/NewTab/post_details_screen.dart';
import 'SlideLeftRoute.dart';

class NewPost extends StatefulWidget {
  final String id;
  final String date;
  final String author;
  final String noofcomment;
  final String detail;
  final String nooflikes;

  NewPost(
      {@required this.id,
      @required this.date,
      @required this.author,
      @required this.noofcomment,
      @required this.detail,
      @required this.nooflikes});

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(PostDetialScreen.routeName);
            Navigator.push(context, SlideLeftRoute(page: PostDetialScreen()));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(widget.date, style: TextStyle(color: Colors.grey)),
                SizedBox(width: 5),
                Container(
                  color: Colors.grey,
                  height: 30,
                  width: 1,
                ),
                SizedBox(width: 5),
                Text(widget.author, style: TextStyle(color: Colors.grey)),
                Expanded(child: SizedBox()),
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/icons/Comments.png',
                        height: 30,
                        width: 33,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        child: Text(
                          widget.noofcomment,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 7.0),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(PostDetialScreen.routeName);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Text(
              widget.detail,
              maxLines: 8,
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 30,
              color: Color.fromRGBO(223, 224, 221, 1),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      print('Liked Pressed!');
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 130,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(19, 25, 70, 1),
                        border: Border.all(
                          color: Color.fromRGBO(19, 25, 70, 1),
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icons/Like-white.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.nooflikes,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Share.share('check out my website https://example.com',
                            subject: 'Look what I made!');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10),
                        height: 30,
                        // color: Color.fromRGBO(19, 25, 70, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color.fromRGBO(19, 25, 70, 1),
                          border: Border.all(
                            color: Color.fromRGBO(19, 25, 70, 1),
                          ),
                        ),
                        child: Container(
                          width: 75,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/icons/Share-white.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  "Share",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Color.fromRGBO(19, 25, 70, 1),
        )
      ],
    );
  }
}
