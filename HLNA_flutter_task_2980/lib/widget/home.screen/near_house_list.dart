import 'package:flutter/material.dart';
import 'package:flutter_task_2980/widget/home.screen/near_house_card.dart';
import '../../models/house.model.dart';

class HouseList extends StatelessWidget {
  final List<House> houses;
  // final String title;

  // ignore: prefer_const_constructors_in_immutables
  HouseList({super.key, required this.houses});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Near from you",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
              Text("See more", style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFF858585)
              ),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: houses.map((house) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: HouseCard(house: house),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
