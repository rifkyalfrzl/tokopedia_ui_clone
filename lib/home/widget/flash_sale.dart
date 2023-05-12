import 'package:flutter/material.dart';
import 'package:tokopedia_app/home/widget/countdown_widget.dart';
import 'package:tokopedia_app/home/widget/product_thumbnail.dart';
import 'package:supercharged/supercharged.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Traktiran Pengguna Baru", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text("Berakhir dalam", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                  const SizedBox(width: 5,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.timer_outlined, color: Colors.white, size: 15,),
                          SizedBox(width: 5,),
                          CountdownWidget()
                        ],
                      ),
                    )),
                  const Spacer(),
                  const Text('Lihat Semua', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          //items
          const SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: "067754".toColor(),
    
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  height: 230,
                  width: 120,
                  child: Image.asset('assets/category-icon2/diskon90.webp', fit: BoxFit.cover,),
                ),
                const ProductThumbnail(productImage: "assets/product/thumbnailproduct.webp", discount: "10%", price: "100.000", priceDisc: "90.000", city: "Jakarta",),
                const ProductThumbnail(productImage: "assets/product/headset.png", discount: "30%", price: "200.000", priceDisc: "140.000", city: "Bandung",),
                const ProductThumbnail(productImage: "assets/product/shirt.jpg", discount: "20%", price: "80.000", priceDisc: "64.000", city: "Karawang",),

                
              ],
            ),
          ),
        ],
      ),
    );
  }
}