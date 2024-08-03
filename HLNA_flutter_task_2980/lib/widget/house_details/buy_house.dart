import 'package:flutter/material.dart';

class RentButtonSection extends StatelessWidget {
  final String price;

  RentButtonSection({required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 161,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/283a/ab35/bdf8034cf30d137c478ce73bd08713fd?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BXnK24UpfGwFsCVT9g8aGnon6awZx32PrJf04i~69sWRYiJPsEBcm-2UWklhRdyft3Rm5TiZmcGDxLaAX~ioEOiXf4zO1ak4uquXtoj1IsmRwApMORiVIuizbKPTWUQ9mHt6c7Eph-yIwP0rxC9ti0R7YoFObRbVBOW-80iFRg1hmtFHCgk3X34woK9ZMPMEuVav9WPjBDiYl7fck3tJbyv~HGVvmn5Xizi4~SlmfcvWjWrQa8s4suTzGoFbRht2M3m~uxLzm26QLmlhg7tNrW7DBB03WqkPyRUV06Ks8k6KumDfptcI4SsV2R~J~hiFlCAB7YfRBHeFgz6Weie65g__'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 161,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [const Color(0XFFFAFAFA), const Color(0xFFFAFAFA).withOpacity(0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
          Positioned(
            bottom: 16,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF858585),
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 0,
            child: Container(
              width: 122,
              height: 43,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Rent Now', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
