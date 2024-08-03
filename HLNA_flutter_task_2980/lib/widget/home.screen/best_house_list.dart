import 'package:flutter/material.dart';
import '../../models/house.model.dart';
import 'best_house_card.dart';

class BestHouseList extends StatelessWidget {
  final List<House> houses;

  // ignore: prefer_const_constructors_in_immutables
  BestHouseList({super.key, required this.houses});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best for you",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                "See more",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF858585),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: houses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: BestHouseCard(house: houses[index]),
            );
          },
        ),
      ],
    );
  }
}
