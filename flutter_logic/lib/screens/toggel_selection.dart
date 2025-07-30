import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggelSelection extends StatefulWidget {
  const ToggelSelection({super.key});

  @override
  State<ToggelSelection> createState() => _ToggelSelectionState();
}

class _ToggelSelectionState extends State<ToggelSelection> {
  bool isFollow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),

            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 140,
                  backgroundImage: AssetImage(
                    'assets/logo2.jpg',
                  ),
                ),

                Positioned(
                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      isFollow = !isFollow;
                    }),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.pink,
                      child: Icon(
                        isFollow
                            ? CupertinoIcons.check_mark
                            : CupertinoIcons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
