import 'package:flutter/material.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onTapOutside: (event) => {
              FocusManager.instance.primaryFocus?.unfocus()
            },
            decoration: InputDecoration(
              hintText: 'Search address, or near you',
              hintStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF858585)),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF858585)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[100],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.tune,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}