import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

class ProductDeviderWidget extends StatelessWidget {
  final String leftText;
  const ProductDeviderWidget({Key? key, required this.leftText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.basePrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Show All",
            style: TextStyle(
              fontSize: 14,
              color: AppColors.basePrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
