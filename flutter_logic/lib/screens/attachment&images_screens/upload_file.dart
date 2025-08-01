import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';


class UploadFile extends StatefulWidget {
  const UploadFile({super.key});

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  String? fileName;
  String? filePath;

  Future<void> _pickFile() async {
    final file = await FilePicker.platform.pickFiles();

    if (file != null && file.files.single.name.isNotEmpty) {
      setState(() {
        fileName = file.files.single.name;
        filePath = file.files.single.path;
      });
    }
  }

  void veiwFule(String? path) {
    OpenFile.open(path);
  }

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

                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fileName == null
                              ? 'Upload'
                              : fileName!.length > 30
                              ? 'File Name > 30 Character'
                              : '$fileName',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          'pdf, docx, doc, jpg',
                        ),
                      ],
                    ),
                  ),

                  Spacer(),

                  PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        // Upload
                        PopupMenuItem(
                          onTap: _pickFile,
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
                          onTap: () => veiwFule(filePath),
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
                          onTap: _pickFile,
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
                          onTap: () {
                            setState(() {
                              fileName = null;
                            });
                          },
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
