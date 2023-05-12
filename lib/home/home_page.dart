import 'package:flutter/material.dart';
import 'package:tokopedia_app/home/widget/custom_app_bar.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tokopedia_app/home/widget/flash_sale.dart';
import 'package:tokopedia_app/home/widget/menu_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: "f1fff8".toColor(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 14,
                                      ),
                                      Text(
                                        'Dikirim ke ',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Karawang',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 16.0,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                      Positioned(
                        top: 90,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              MenuButton(
                                label: 'Official Store',
                                imageLocation:
                                    'assets/category-icon/official-store.png',
                              ),
                              MenuButton(
                                label: 'Lihat Semua',
                                imageLocation:
                                    'assets/category-icon/lihat-semua.png',
                              ),
                              MenuButton(
                                label: 'Rumah Tangga',
                                imageLocation:
                                    'assets/category-icon/rumah-tangga.png',
                              ),
                              MenuButton(
                                label: 'Top Up & Tagihan',
                                imageLocation: 'assets/category-icon/topup.png',
                              ),
                              MenuButton(
                                label: 'Elektronik',
                                imageLocation:
                                    'assets/category-icon/elektronik.png',
                              ),
                              MenuButton(
                                label: 'Handphone',
                                imageLocation:
                                    'assets/category-icon/handphone.png',
                              ),
                              MenuButton(
                                label: 'Fashion',
                                imageLocation:
                                    'assets/category-icon/fashion.png',
                              ),
                              MenuButton(
                                label: 'Komputer & Laptop',
                                imageLocation:
                                    'assets/category-icon/komputer-dan-laptop.png',
                              ),
                              MenuButton(
                                label: 'Keuangan',
                                imageLocation:
                                    'assets/category-icon/keuangan.png',
                              ),
                              MenuButton(
                                label: 'Travel',
                                imageLocation:
                                    'assets/category-icon/travel.png',
                              ),
                              MenuButton(
                                label: 'Ibu & Bayi',
                                imageLocation:
                                    'assets/category-icon/ibu-dan-bayi.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.95,
                      aspectRatio: 50 / 16
                    ),
                    items: [
                      "assets/carousel-slider/banner-1.webp",
                      "assets/carousel-slider/banner-2.webp",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(i, fit: BoxFit.contain,),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      MenuButton(
                                label: 'Bangga Lokal',
                                imageLocation:
                                    'assets/category-icon2/bangga-lokal.png',
                              ),
                              MenuButton(
                                label: 'Bazzar Hari Ini',
                                imageLocation:
                                    'assets/category-icon2/bazar-hari-ini.png',
                              ),
                              MenuButton(
                                label: 'Bayar di Tempat',
                                imageLocation:
                                    'assets/category-icon2/bayar-ditempat.png',
                              ),
                              MenuButton(
                                label: 'Belanja Harian',
                                imageLocation:
                                    'assets/category-icon2/belanja-harian.png',
                              ),
                              MenuButton(
                                label: 'Live Shopping',
                                imageLocation:
                                    'assets/category-icon2/live-shopping.png',
                              ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const FlashSale(),
                ],
              ),
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
