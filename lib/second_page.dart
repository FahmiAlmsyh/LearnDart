import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ini Second Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: _getMainAxisAlignment(),
          crossAxisAlignment: _getCrossAxisAlignment(),
          children: [
            Row(
              mainAxisAlignment: _getMainAxisAlignment(),
              crossAxisAlignment: _getCrossAxisAlignment(),
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_number > 1) {
                        _number = 0;
                      } else {
                        _number += 1;
                      }
                    });
                    print(_number);
                  },
                  child: const Text("Move Button"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  MainAxisAlignment _getMainAxisAlignment() {
    if (_number == 0) {
      return MainAxisAlignment.start;
    } else if (_number == 1) {
      return MainAxisAlignment.center;
    } else {
      return MainAxisAlignment.end;
    }
  }

  CrossAxisAlignment _getCrossAxisAlignment() {
    if (_number == 0) {
      return CrossAxisAlignment.start;
    } else if (_number == 1) {
      return CrossAxisAlignment.center;
    } else {
      return CrossAxisAlignment.end;
    }
  }
}
