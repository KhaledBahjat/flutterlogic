import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  // upload image fun
  XFile? selectedImage;
  Future<void> _uploadImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      selectedImage = pickedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),

            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: selectedImage == null
                  ? null
                  : Image.file(
                      File(selectedImage!.path),
                    ),
            ),

            SizedBox(
              height: 15,
            ),
            // Upload
            GestureDetector(
              onTap: _uploadImage,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  selectedImage != null ? 'Change Image' : 'Upload Image',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),


            
            SizedBox(
              height: 15,
            ),
            //  Remove
            selectedImage == null
                ? SizedBox.shrink()
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = null;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Remove ',
                        style: TextStyle(
                          color: Colors.red,
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
