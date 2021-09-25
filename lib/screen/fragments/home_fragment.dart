import 'package:flutter/material.dart';
import 'package:idealdukan/data/home_page_data.dart';
import 'package:idealdukan/screen/widgets/item_widget/single_product_widget.dart';
import 'package:idealdukan/screen/widgets/item_widget/tab_data_widget.dart';
import 'package:idealdukan/screen/widgets/text_widget/product_devider_widget.dart';
import 'package:idealdukan/utils/app_colors.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: const TabBar(
            indicator: BoxDecoration(color: Colors.transparent),
            unselectedLabelColor: Colors.black,
            labelColor: AppColors.basePrimaryColor,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Text("All"),
              Text("Clothing"),
              Text("Shoes"),
              Text("Others"),
            ],
          ),
          body: TabBarView(children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const ProductDeviderWidget(leftText: "latest"),
                GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: singleProductData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.5),
                    itemBuilder: (context, index) {
                      var data = singleProductData[index];
                      return SingleProductWidget(
                          productImage: data.productImage,
                          productName: data.productName,
                          productType: data.productType,
                          productPrice: data.productPrice,
                          productOldPrice: data.productOldPrice,
                          onPressed: () {});
                    })
              ],
            ),
            TabDataWidget(
              productData: clothingData,
            ),
            TabDataWidget(
              productData: clothingData,
            ),
            TabDataWidget(
              productData: clothingData,
            ),
          ])),
    );
  }
}
