
import 'package:flutter/material.dart';

class MultySelection extends StatefulWidget {
  const MultySelection({super.key});

  @override
  State<MultySelection> createState() => _MultySelectionState();
}

class _MultySelectionState extends State<MultySelection> {
  final List<String> items = [
    "News",
    "Health",
    "Cooking",
    "Entertainment",
    "Sport",
    "Football",
    "Tech",
    "Flutter",
    "Ai",
    "Trending",
    "Fashion & Dressing",
    "LifeStyle",
  ];
  final Set<String> select = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
            ),

            Text(
              'What do you want to see in our app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 30,
              runSpacing: 10,
              children: List.generate(
                items.length,
                (index) {
                  final item = items[index];
                  final bool selected = select.contains(item);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!selected) {
                          select.add(item);
                        } else {
                          select.remove(item);
                        }
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 350),
                      curve: Curves.easeIn,
                      decoration: BoxDecoration(
                        color: selected ? Colors.blue : Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
