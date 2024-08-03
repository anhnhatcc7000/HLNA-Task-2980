import 'package:flutter/material.dart';
import 'package:flutter_task_2980/models/house.model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HouseDescriptionAndOwnerInfo extends StatelessWidget {
  final House house;

  const HouseDescriptionAndOwnerInfo({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: house.description,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF858585),
                ),
              ),
              const TextSpan(
                text: ' Show More',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFC4C4C4),
                ),
                child: ClipOval(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      house.ownerImage,
                      fit: BoxFit.cover,
                      height: 44,
                      width: 29,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  house.ownerName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Owner',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A8ED9).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(Icons.phone, size: 14, color: Colors.white),
                  ),
            SizedBox(width: 15,),      
            Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A8ED9).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Center(child: FaIcon(FontAwesomeIcons.solidComment, size: 14, color: Colors.white)),
                  ),
          ],
        ),
      ],
    );
  }
}
