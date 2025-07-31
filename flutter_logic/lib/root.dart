import 'package:flutter/material.dart';
import 'package:flutter_logic/screens/attachment&images_screens/upload_image.dart';
import 'package:flutter_logic/screens/selection_screens/image_selection.dart';
import 'package:flutter_logic/screens/selection_screens/multy_selection.dart';
import 'package:flutter_logic/screens/selection_screens/singele_selection.dart';
import 'package:flutter_logic/screens/selection_screens/toggel_selection.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController controller = PageController();
  int selectedIndex = 0;
  final List<Widget> screens = [
    // Selection
    const SingelSelcetion(),
    const ImageSelection(),
    const ToggelSelection(),
    const MultySelection(),
    // attachment
    const UploadImage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
        onPageChanged: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // back
            GestureDetector(
              onTap: () {
                controller.jumpToPage(selectedIndex - 1);
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              width: 8,
            ),
            // forward
            GestureDetector(
              onTap: () {
                setState(() {
                  controller.jumpToPage(selectedIndex + 1);
                });
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Row(
                  children: [
                    Text(
                      'Next Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            // Back
          ],
        ),
      ),
    );
  }
}
