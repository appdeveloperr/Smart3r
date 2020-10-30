import 'package:flutter/material.dart';

class AddSourceItem extends StatelessWidget {
  final Function sourceHandler;

  AddSourceItem(this.sourceHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    labelText: 'Source',
                  ),
                ),
              ),
              InkWell(
                onTap: sourceHandler,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/images/icons/addsource.png',
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
