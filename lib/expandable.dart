import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Expandable extends StatefulWidget {
  @override
  _ExpandableState createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  bool isTapped = true;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              onHighlightChanged: (value) {
                setState(() {
                  isExpanded = value;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                height: isTapped
                    ? isExpanded
                        ? 65
                        : 70
                    : isExpanded
                        ? 240
                        : 270,
                width: isExpanded ? 385 : 390,
                decoration: BoxDecoration(
                  color: Color(0xff6F12E8),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff6F12E8).withOpacity(0.5),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: isTapped
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tap to Expand it',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                isTapped
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_up,
                                color: Colors.white,
                                size: 27,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tap to Expand it',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  isTapped
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                  size: 27,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              isTapped
                                  ? ''
                                  : 'This is a long sentence with no context '
                                      'This is a long sentence with no context  '
                                      'This is a long sentence with no context  '
                                      'This is a long sentence with no context  '
                                      'This is a long sentence with no context '
                                      'This is a long sentence with no context  '
                                      'This is a long sentence with no context '
                                      'Semi End.'
                                      'The End',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 10,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Get.back();
            //     },
            //     child: Icon(
            //       Icons.chevron_left,
            //       size: 32,
            //     ))
          ],
        ),
      ),
    );
  }
}
