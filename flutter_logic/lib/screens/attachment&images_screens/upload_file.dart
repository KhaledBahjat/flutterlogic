import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/doc.svg',
                    width: 55,
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upload File',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'pdf, docx, doc, jpg',
                      ),
                    ],
                  ),

                  Spacer(),

                  PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        // Upload
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.arrow_up_doc,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Upload',
                              ),
                            ],
                          ),
                        ),

                        // Veiw
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.eye,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'View',
                              ),
                            ],
                          ),
                        ),
                        // Change
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.refresh,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Change',
                              ),
                            ],
                          ),
                        ),
                        // delete
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.delete,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Delete',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
