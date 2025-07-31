import 'package:flutter/material.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
