import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(bottom: 0),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search,
                            size: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Cari di Tokopedia',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: const Icon(Icons.email_outlined)),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: const Icon(Icons.notifications_none_rounded)),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: const Icon(Icons.shopping_cart_outlined)),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: const Icon(Icons.menu)),
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
