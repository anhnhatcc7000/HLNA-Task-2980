import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/house.model.dart';

class HouseImageSection extends StatelessWidget {
  final House house;

  // ignore: prefer_const_constructors_in_immutables
  HouseImageSection({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            house.imageUrl,
            height: 304,
            width: 335,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.24),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 30,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.24),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.bookmark_border, color: Colors.white),
              onPressed: () {},
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
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                house.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                house.location,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.24),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(Icons.hotel, color: Colors.white, size: 16),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${house.bedrooms} Bedroom',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(width: 25),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.24),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi), 
                        child: const FaIcon(FontAwesomeIcons.bath, size: 14, color: Colors.white),
                      )
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${house.bathrooms} Bathroom',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
