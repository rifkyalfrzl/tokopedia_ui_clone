import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductThumbnail extends StatelessWidget {
  final String? productImage;
  final String? discount;
  final String? price;
  final String? priceDisc;
  final String? city;

  const ProductThumbnail({super.key, this.productImage, this.discount, this.price, this.city, this.priceDisc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 230,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.blue,
              child: Image.asset(
                '$productImage',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.pink.shade50),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      '$discount',
                      style: const TextStyle(
                          fontSize: 8,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Rp $price",
                  style: const TextStyle(
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Rp $priceDisc",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                SizedBox(
                    width: 15,
                    height: 15,
                    child:
                        SvgPicture.asset("assets/product/official-badge.svg")),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "$city",
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: double.infinity,
              height: 2,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("Segera habis",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 9,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
