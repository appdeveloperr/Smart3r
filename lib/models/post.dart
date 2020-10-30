import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final String date;
  final String author;
  final String noofcomment;
  final String detail;
  final String nooflikes;

  Post(
      {@required this.id,
      @required this.date,
      @required this.author,
      @required this.noofcomment,
      @required this.detail,
      @required this.nooflikes});
}
