import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import '../../../widgets/post_detail_right_drawer.dart';
import '../../../widgets/comment_widget.dart';
import 'source_list_screen.dart';
import '../NewTab/write_comment_screen.dart';

class PostDetialScreen extends StatefulWidget {
  static const routeName = "/postdetail";
  @override
  _PostDetialScreenState createState() => _PostDetialScreenState();
}

class _PostDetialScreenState extends State<PostDetialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print("Favorite Pressed..!");
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset(
                    "assets/images/icons/Favorite.png",
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: PostDetialRightDrawer(),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext ctx, int index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                Text("20 aug 2019",
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 5),
                                Container(
                                  color: Colors.grey,
                                  height: 30,
                                  width: 1,
                                ),
                                SizedBox(width: 5),
                                Text("TheKyler",
                                    style: TextStyle(color: Colors.grey)),
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
                                          "122",
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
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            child: Text(
                              "Technical blogging is a great way to share your expertise while building a potentially valuable readership. It can help you to document projects, or provide guidance to other web users. You can also monetize your content, or use your blog to market your services",
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
                              margin:
                                  EdgeInsets.only(left: 5, right: 5, top: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        print('Liked Pressed!');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 3),
                                        alignment: Alignment.centerLeft,
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Color.fromRGBO(19, 25, 70, 1),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(19, 25, 70, 1),
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                "376",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Share.share(
                                            'check out my website https://example.com',
                                            subject: 'Look what I made!');
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        margin:
                                            EdgeInsets.only(left: 2, right: 2),
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Color.fromRGBO(19, 25, 70, 1),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(19, 25, 70, 1),
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
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        print('Liked Pressed!');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 3),
                                        alignment: Alignment.centerLeft,
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Color.fromRGBO(19, 25, 70, 1),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(19, 25, 70, 1),
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            // Navigator.of(context).pushNamed(
                                            //     SourceListScreen.routeName);
                                            Navigator.push(
                                                context,
                                                SlideLeftRoute(
                                                    page: SourceListScreen()));
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            child: Text(
                                              "Sources",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 0),
                          width: double.infinity,
                          color: Colors.black54,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "COMMENTS",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    );
                  }
                  return CommentsWidget();
                },
                itemCount: 5,
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: Colors.white,
                ),
                child: TextField(
                  maxLines: null,
                  readOnly: true,
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(WriteCommentScreen.routeName);
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 10, top: 10, right: 15),
                    hintText: "Write a comment",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
