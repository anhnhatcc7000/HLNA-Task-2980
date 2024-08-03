import 'package:flutter/material.dart';
import 'package:flutter_task_2980/widget/house_details/buy_house.dart';
import 'package:flutter_task_2980/widget/house_details/house_descrip.dart';
import 'package:flutter_task_2980/widget/house_details/house_details.card.dart';
import 'package:flutter_task_2980/widget/house_details/house_gallery.dart';
import 'package:flutter_task_2980/widget/menu/menu.dart';
import '../../models/house.model.dart';


class DetailHousePage extends StatelessWidget {
  final House house;

  // ignore: prefer_const_constructors_in_immutables
  DetailHousePage({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,30,20,10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HouseImageSection(house: house),
              const SizedBox(height: 15),
              HouseDescriptionAndOwnerInfo(house: house),
              const SizedBox(height: 15),
              HouseGallerySection(imageUrls: house.galleryImages),
              const SizedBox(height: 20),
              RentButtonSection(price: house.price),
            ],
          ),
        ),
      ),
    );
  }
}
