import 'package:flutter/material.dart';
import 'package:flutter_task_2980/models/house.model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

import '../../screens/house_details.sceen.dart';
class BestHouseCard extends StatelessWidget {
  final House house;

  // ignore: prefer_const_constructors_in_immutables
  BestHouseCard({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailHousePage(house:house)))
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                house.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    house.price,
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.hotel, size: 14, color: Color(0xFF858585)),
                      const SizedBox(width: 4),
                      Text(
                        '${house.bedrooms} Bedroom',
                        style: const TextStyle(fontSize: 12, color: Color(0xFF858585)),
                      ),
                      const SizedBox(width: 16),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi), 
                        child: const FaIcon(FontAwesomeIcons.bath, size: 14, color: Color(0xFF858585)),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${house.bathrooms} Bathroom',
                        style: const TextStyle(fontSize: 12, color: Color(0xFF858585), fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
