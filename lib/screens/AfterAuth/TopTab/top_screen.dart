import 'package:Anecdote/widgets/SlideRightRoute.dart';
import 'package:flutter/material.dart';
import '../../../widgets/new_post_widget.dart';

import '../../../models/post.dart';
import '../tabs_screen.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    List<Post> postList = List();
    postList.add(Post(
        id: "1",
        date: "20 aug 2019",
        author: "TheKyler",
        noofcomment: "133",
        detail:
            "Technical blogging is a great way to share your expertise while building a potentially valuable readership. It can help you to document projects, or provide guidance to other web users. You can also monetize your content, or use your blog to market your services",
        nooflikes: "376"));

    postList.add(Post(
        id: "2",
        date: "10 aug 2018",
        author: "UsmanSh",
        noofcomment: "402",
        detail:
            "The Next Web is another leading blog on the internet which provides technology stuff on the daily basis to internet users. Mostly it covers guides and topics related to business, culture and technology. Also, it publishes useful articles for upcoming gadgets.",
        nooflikes: "506"));

    postList.add(Post(
        id: "1",
        date: "20 aug 2019",
        author: "HamzaBro",
        noofcomment: "493",
        detail:
            "Tech Crunch is considered as one of the well knows and popular website for providing quality information related to new gadgets and technology news. Also, Tech Crunch is one of the leading technology media on the internet as well as one of the most famous technology blog online. ",
        nooflikes: "656"));

    postList.add(Post(
        id: "1",
        date: "20 aug 2019",
        author: "Ali Bro",
        noofcomment: "22",
        detail:
            "Wired.com is third most popular media on the internet providing news related to latest trends of technology. Also, it publishes helpful guides related to latest or upcoming gadgets, science, entertainment, business and design etc. Once you visit this website, you will surely be going to love Wired.com because of publishing quality stuff.",
        nooflikes: "376"));

    postList.add(Post(
        id: "1",
        date: "20 aug 2019",
        author: "Hassan Bro",
        noofcomment: "243",
        detail:
            "Tech2.com mostly shares articles and guides related to new gadgets such as TV, mobile, tablets, laptops and gaming devices as well. Apart from this it also covers podcasts, videos and photos related to latest technology trends. Also, it comes really handy for comparing websites or new gadgets at the same time on this website easily. You will surely be going to get a lot of valuable information through reading this website on the daily basis.",
        nooflikes: "234"));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(context, SlideRightRoute(page: TabsScreen()));
          },
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return NewPost(
              id: postList[index].id,
              date: postList[index].date,
              author: postList[index].author,
              noofcomment: postList[index].noofcomment,
              detail: postList[index].detail,
              nooflikes: postList[index].nooflikes,
            );
          },
          itemCount: postList.length,
        ),
      ),
    );
  }
}
