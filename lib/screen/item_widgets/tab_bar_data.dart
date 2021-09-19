import 'package:flutter/material.dart';
import 'package:idealdukan/data/home-page-data/home-page-data.dart';
import 'package:idealdukan/models/single_product_model.dart';
import 'package:idealdukan/screen/item_widgets/single_product_data.dart';

class TabBarData extends StatelessWidget {
  final List<SingleProductModel> productData;

  const TabBarData({Key? key, required this.productData,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        itemCount: sigleProductData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.5),
        itemBuilder: (context, index) {
          var data = productData[index];
          return SingleProductData(
              productName: data.productName,
              productImage: data.productImage,
              productModel: data.productModel,
              productOldPrice: data.productOldPrice,
              productPrice: data.productPrice,
              onPressed: () {});
        });
  }
}
