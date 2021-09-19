

import 'package:flutter/material.dart';
import 'package:idealdukan/data/home-page-data/home-page-data.dart';

import 'package:idealdukan/screen/item_widgets/product_devider_widget.dart';
import 'package:idealdukan/screen/item_widgets/single_product_data.dart';
import 'package:idealdukan/screen/item_widgets/tab_bar_data.dart';


import 'package:idealdukan/styles/home_screen_style.dart';
import 'package:idealdukan/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // FOR TOOLBAR CODE
  AppBar buildAppBar() {
    return AppBar(
      // FOR BOTTOM TAB BAR
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("All"),
          Text("Clothing"),
          Text("Shoes"),
          Text("Accessories"),
        ],
      ),
      //FOR UPPER TAB
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: AppColors.baseBlackColor,
        ),
        IconButton(
          onPressed: () {
            
          },
          icon: const Icon(Icons.light_mode),
          color: AppColors.baseBlackColor,
        )
      ],
      title: Column(
        children: const [
          Text(
            "Ideal Dukan",
            style: HomeScreenStyles.appBarUpperTitleStyle,
          ),
          Text(
            "Shopping",
            style: HomeScreenStyles.appBarBottomTitleStyle,
          )
        ],
        //FOR ADVERTISEMENT CODE
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: buildAppBar(),
          body: TabBarView(children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                //  FOR advertisement
                // BuildAdvertisementPlaces(),
                //FOR SHOW  ALL PRODUCT
                const ProductDeviderWidget(leftText: 'New Arrival'),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
                GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.7),
                    itemBuilder: (BuildContext context, int index) {
                      var data = sigleProductData[index];
                      return SingleProductData(
                        productName: data.productName,
                        productImage: data.productImage,
                        productModel: data.productModel,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                        onPressed: () {},
                      );
                    }),
                const Divider(
                    // Trending Projects Add Here
                    ),

                // History Widget
                const ProductDeviderWidget(leftText: "History"),
                SizedBox(
                  height: 250,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: true,
                      itemCount: sigleProductData.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, childAspectRatio: 1.5),
                      itemBuilder: (context, index) {
                        var data = sigleProductData[index];
                        return SingleProductData(
                            productName: data.productName,
                            productImage: data.productImage,
                            productModel: data.productModel,
                            productOldPrice: data.productOldPrice,
                            productPrice: data.productPrice,
                            onPressed: () {
                              //  OPEN DETAILS SCREEN
                              // return Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           ProductDetailsScreen(data: data)),
                              // );
                            });
                      }),
                )
              ],
            ),
            TabBarData(
              productData: colothsData,
            ),
            TabBarData(
              productData: shoesData,
            ),
            TabBarData(
              productData: accessoriesData,
            ),
          ])),
    );
  }
}
