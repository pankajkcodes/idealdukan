import 'package:flutter/material.dart';
import 'package:idealdukan/data/home_page_data.dart';
import 'package:idealdukan/models/single_product_model.dart';
import 'package:idealdukan/screen/widgets/appbar_widget/details_appbar_widget.dart';
import 'package:idealdukan/screen/widgets/item_widget/single_product_widget.dart';
import 'package:idealdukan/styles/details_screen_style.dart';
import 'package:idealdukan/utils/app_colors.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends StatefulWidget {
  SingleProductModel data;
  ProductDetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeController;
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
                  widget.data.productName,
                  style: DetailScreenStylies.commpanyTitleStyle,
                ),
                Text(
                  widget.data.productType,
                  style: DetailScreenStylies.productTypeStyle,
                ),
              ],
            ),
            trailing: Column(
              children: [
                Text(widget.data.productPrice.toString(),
                    style: DetailScreenStylies.productPriceStyle),
                const SizedBox(
                  height: 5,
                ),
                Text(widget.data.productOldPrice.toString(),
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
                    widget.data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(widget.data.productImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(widget.data.productSecondImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(widget.data.productThirdImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 15, right: 15),
                        child: Image.network(widget.data.productFourImage),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            //FOR DROPDOWN BUTTON
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: sizeController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  hint: const Text(
                    "Size",
                    style: DetailScreenStylies.productDropDownValueStyle,
                  ),
                  items: ["M", "L", "S", "XL", "XXL"]
                      .map(
                        (e) => DropdownMenuItem(child: Text(e), value: e),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      sizeController = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: sizeController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  hint: const Text(
                    "Color",
                    style: DetailScreenStylies.productDropDownValueStyle,
                  ),
                  items: [
                    "red",
                    "white",
                    "pink",
                  ]
                      .map(
                        (e) => DropdownMenuItem(child: Text(e), value: e),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      sizeController = value;
                    });
                  },
                ),
              ),
            ],
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
              "Description",
              style: DetailScreenStylies.descriptionTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: const [Text("this\n wireles \n bluetooth")],
                ),
              )
            ],
          ),
          buildMayLikeYou(),
          buildBottomGridView(),
        ],
      ),
    );
  }
}

buildExpensionTileRow({required String firstTitle, required String secTitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        firstTitle,
        // ".\t\tMaterial",
        style: const TextStyle(
          fontSize: 18.60,
        ),
      ),
      Text(
        secTitle,
        // "84%\tnylon",
        style: const TextStyle(
          fontSize: 18.60,
        ),
      ),
    ],
  );
}

buildBottomGridView() {
  return SizedBox(
    height: 240,
    child: GridView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      primary: true,
      itemCount: singleProductData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        var data = singleProductData[index];
        return SingleProductWidget(
          productImage: data.productImage,
          productType: data.productType,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    ),
  );
}

buildMayLikeYou() {
  return ListTile(
    leading: Text(
      "You may also like",
      style: DetailScreenStylies.youmayalsolikeTextStyle,
    ),
    trailing: Text(
      "Show All",
      style: DetailScreenStylies.showAllTextStyle,
    ),
  );
}
