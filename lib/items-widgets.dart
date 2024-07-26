import 'package:flutter/material.dart';
import 'package:start/single_item_screen.dart';

class ItemsWidgets extends StatelessWidget {
  List img = [
    'Black Coffee',
    'Cold Coffee',
    'Espresso',
    'Latte',
  ];

  ItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff212325),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8)
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleItemScreen(img[i]),
                        ));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/${img[i]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            img[i],
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Best Coffee",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white60),
                          ),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$30",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xffE57734),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
