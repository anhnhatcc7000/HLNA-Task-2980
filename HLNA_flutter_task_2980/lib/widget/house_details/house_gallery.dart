import 'package:flutter/material.dart';

class HouseGallerySection extends StatelessWidget {
  final List<String> imageUrls;

  // ignore: prefer_const_constructors_in_immutables
  HouseGallerySection({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gallery',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 72,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              if (index == imageUrls.length - 1) {
                return _buildGalleryItem(imageUrls[index], isLast: true);
              } else {
                return _buildGalleryItem(imageUrls[index]);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildGalleryItem(String imageUrl, {bool isLast = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: isLast
          ? Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  '+5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
