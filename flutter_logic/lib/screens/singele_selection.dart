import 'package:flutter/material.dart';

class SingelSelcetion extends StatefulWidget {
  const SingelSelcetion({super.key});

  @override
  State<SingelSelcetion> createState() => _SingelSelcetionState();
}

class _SingelSelcetionState extends State<SingelSelcetion> {
  final List<Map> gifts = [
    {
      "name": "cow",
      "image": "assets/animals/cow.png",
    },
    {
      "name": "deer",
      "image": "assets/animals/deer.png",
    },
    {
      "name": "giraffe",
      "image": "assets/animals/giraffe.png",
    },
    {
      "name": "lion",
      "image": "assets/animals/lion.png",
    },
    {
      "name": "pingeon",
      "image": "assets/animals/pingeon.png",
    },
    {
      "name": "rat",
      "image": "assets/animals/rat.png",
    },
    {
      "name": "tiger",
      "image": "assets/animals/tiger.png",
    },
    {
      "name": "White-tiger",
      "image": "assets/animals/white-tiger.png",
    },
  ];

  int? slectIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: gifts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => setState(() {
                slectIndex = index;
              }),
              child: Stack(
                children: [
                  slectIndex == index
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black12,
                                  Colors.black87,
                                  Colors.black12,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),

                  Column(
                    children: [
                      Image.asset(
                        width: 300,
                        height: slectIndex == index ? 120 : 100,
                        gifts[index]['image'],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      slectIndex == index
                          ? SizedBox.shrink()
                          : Text(
                              gifts[index]['name'].toString().toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                    ],
                  ),
                  slectIndex == index
                      ? Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
