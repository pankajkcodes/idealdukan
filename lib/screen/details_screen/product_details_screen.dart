import 'package:flutter/material.dart';
import 'package:idealdukan/models/single_product_model.dart';
import 'package:idealdukan/screen/widgets/appbar_widget/details_appbar_widget.dart';
import 'package:idealdukan/styles/details_screen_style.dart';
import 'package:idealdukan/utils/app_colors.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends StatelessWidget {

  SingleProductModel data;
  ProductDetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailsAppBarWidget(),
      backgroundColor: AppColors.basewhite10Color,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(
            // leading: CircleAvatar(
            //   radius: 35,
            //   backgroundImage: NetworkImage(data.productImage),
            // ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.productName,
                  style: DetailScreenStylies.commpanyTitleStyle,
                ),
                Text(
                  data.productType,
                  style: DetailScreenStylies.productTypeStyle,
                ),
              ],
            ),
            trailing: Column(
              children: [
                Text(data.productPrice.toString(),
                    style: DetailScreenStylies.productPriceStyle),
                const SizedBox(
                  height: 5,
                ),
                Text(data.productOldPrice.toString(),
                    style: DetailScreenStylies.productOldPriceStyle),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(data.productImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(data.productSecondImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(data.productThirdImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(data.productFourImage),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
              //FOR DROPDOWN BUTTON
              ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: MaterialButton(
              onPressed: () {},
              elevation: 0,
              height: 50,
              color: AppColors.btnSucessColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                "Add To Cart",
                style: DetailScreenStylies.buttonTextStyle,
              ),
            ),
          ),
          ExpansionTile(
            title: const Text(
              "description",
              style: DetailScreenStylies.descriptionTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: const [Text("this\n wireles \n bluetooth")],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
