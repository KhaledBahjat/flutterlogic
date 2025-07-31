import 'package:flutter/material.dart';

class ImageSelection extends StatefulWidget {
  const ImageSelection({super.key});

  @override
  State<ImageSelection> createState() => _ImageSelectionState();
}

class _ImageSelectionState extends State<ImageSelection> {
  final List<String> phots = [
    'assets/laptop/labtop1.png',
    'assets/laptop/labtop4.png',
    'assets/laptop/labtop2.png',
    'assets/laptop/labtop3.png',
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeee00),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.asset(
              phots[select],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                phots.length,
                (index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      select = index;
                    }),
                    child: AnimatedContainer(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: select == index ? Colors.blue : Colors.white,
                          width: 2,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      duration: Duration(
                        milliseconds: 400,
                      ),
                      child: Image.asset(
                        phots[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
