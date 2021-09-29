import 'package:flutter/material.dart';
import 'package:idealdukan/models/single_product_model.dart';
import 'package:idealdukan/screen/screen/product_details_screen.dart';
import 'package:idealdukan/screen/widgets/item_widget/single_product_widget.dart';

// ignore: must_be_immutable
class TabDataWidget extends StatelessWidget {
  late List<SingleProductModel> productData;
  TabDataWidget({Key? key, required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.vertical,
        itemCount: productData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          var data = productData[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(data: data)));
            },
            child: SingleProductWidget(
              productImage: data.productImage,
              productName: data.productName,
              productType: data.productType,
              productPrice: data.productPrice,
              productOldPrice: data.productOldPrice,
            ),
          );
        });
  }
}
