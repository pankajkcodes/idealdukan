import 'package:flutter/material.dart';
import 'package:idealdukan/utils/app_colors.dart';

class SingleProductData extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final Function onPressed;

  const SingleProductData(
      {Key? key,
      required this.productImage,
      required this.productName,
      required this.productModel,
      required this.productPrice,
      required this.productOldPrice,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: AppColors.baseGrey10Color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(productImage))),
              child: IconButton(
                  onPressed: () {

              
                  },
                  icon: const Icon(
                    Icons.favorite,
                    size: 25,
                    color: Colors.redAccent,
                  )),
            )),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          productModel,
                          style: const TextStyle(
                              color: AppColors.baseDarkPinkColor,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ $productPrice",
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "\$ $productOldPrice",
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
