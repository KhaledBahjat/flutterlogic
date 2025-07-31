import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadMultiImages extends StatefulWidget {
  const UploadMultiImages({super.key});

  @override
  State<UploadMultiImages> createState() => _UploadMultiImagesState();
}

class _UploadMultiImagesState extends State<UploadMultiImages> {
  // Upload multui Images
  List<XFile?> selectedImages = [null, null, null];
  Future<void> _uploadMultiImages() async {
    final List<XFile> Images = await ImagePicker().pickMultiImage();

    setState(() {
      selectedImages = Images;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade900,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  selectedImages.length,
                  (index) {
                    final image = selectedImages[index];
                    // Images
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 120,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: image == null
                          ? null
                          : Image.file(File(image.path)),
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Upload
            GestureDetector(
              onTap: _uploadMultiImages,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.pink.shade700,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Upload Multi Images',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
