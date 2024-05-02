import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:frontend/pages/makingFairytale.dart';

class ShowFairytale extends StatelessWidget {
  ShowFairytale({super.key, required this.images});

  List<Uint8List> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(0xFF, 0xB9, 0xEE, 0xFF),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                '동화 만들기',
                style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(0xFF, 0x3B, 0x2F, 0xCA),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Color(0xFFFFFFFF),
                margin: EdgeInsets.all(25),
                child: Story(images: images),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatefulWidget {
  Story({super.key, required this.images});

  var images;

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var images = widget.images;

    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        if (index < 7) {
          setState(
            () {
              index += 1;
            },
          );
        }
      },
    );

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      img.elementAt(index),
                      height: 500,
                      width: 500,
                    ),
                  ),
                  Positioned(
                      left: locX.elementAt(index),
                      top: locY.elementAt(index),
                      child: Container(
                        child: Image.memory(images[1]),
                      )),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        l.elementAt(index),
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
