import 'package:flutter/material.dart';
import '../../models/house.model.dart';
import '../../screens/house_details.sceen.dart';

class HouseCard extends StatelessWidget {
  final House house;

  // ignore: prefer_const_constructors_in_immutables
  HouseCard({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailHousePage(house:house)))
      },
      child: Container(
        width: 222,
        height: 272,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                house.imageUrl,
                width: 222,
                height: 272,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 20,
                right: 18,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: Colors.white, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        house.distance,
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Text(
                  house.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Text(
                  house.location,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
