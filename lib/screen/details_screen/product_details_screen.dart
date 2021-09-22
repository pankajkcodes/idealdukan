import 'package:flutter/material.dart';
import 'package:idealdukan/models/single_product_model.dart';
import 'package:idealdukan/styles/deatils_screen_style.dart';
import 'package:idealdukan/utils/app_colors.dart';
import 'package:idealdukan/utils/drop_button.dart';

class DetailScreen extends StatefulWidget {
  final SingleProductModel data;

  // ignore: use_key_in_widget_constructors
  const DetailScreen({required this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String _ratingController;
  late String _sizeController;

  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Reebok",
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 25,
                color: Colors.redAccent,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.upload,
                size: 25,
                color: Colors.redAccent,
              )),
        ],
      ),
    );
  }

  buildListTile() {
    return ListTile(
      leading: const CircleAvatar(
        radius: 35,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
          'https://i2.wp.com/www.logotaglines.com/wp-content/uploads/2018/04/Reebok-new-logo.png?resize=489%2C480&ssl=1',
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.productName,
            overflow: TextOverflow.ellipsis,
            style: DetailScreenStylies.commpanyTitleStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.data.productType,
            style: DetailScreenStylies.productModelStyle,
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.productPrice.toString(),
            style: DetailScreenStylies.productPriceStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.data.productOldPrice.toString(),
            style: DetailScreenStylies.productOldPriceStyle,
          ),
        ],
      ),
    );
  }

  buildProductImages() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              widget.data.productImage,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 15, top: 15),
                  child: Image.network(widget.data.productSecondImage),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 15, top: 15),
                  child: Image.network(widget.data.productThirdImage),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 15, top: 15),
                  child: Image.network(widget.data.productFourImage),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  buildColorsAndSize() {
    return Row(
      children: [
        Expanded(
          child: DropButton(
            hintText: "Color",
            item: const ["red", "blue", "white", "black", "pink"],
            ratingController: _ratingController,
          ),
        ),
        Expanded(
          child: DropButton(
            hintText: "Size",
            item: const ["25", "30", "35", "40", "45"],
            ratingController: _sizeController,
          ),
        )
      ],
    );
  }

  buildExpensionTileRow(
      {required String firstTitle, required String secTitle}) {
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

  buildExpensionTile() {
    return ExpansionTile(
      title: const Text(
        "Description",
        style: DetailScreenStylies.descriptionTextStyle,
      ),
      children: [
        ListTile(
          title: Wrap(
            children: [
              const Text(
                "this woman's tank top is designed to help you\nstay cool. it's made of stretchy and breathable\nfabric that moves heat away from your skin\n",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Column(
                children: [
                  buildExpensionTileRow(
                    firstTitle: '.\t\tMaterial',
                    secTitle: "84%\tnylon",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "16% elastance",
                        style: TextStyle(
                          fontSize: 18.60,
                        ),
                      ),
                    ],
                  ),
                  buildExpensionTileRow(
                    firstTitle: ".\t\tSize",
                    secTitle: "2XS,\tXS, \ts,\tM, \tL",
                  ),
                  buildExpensionTileRow(
                    firstTitle: ".\t\tGender",
                    secTitle: "Woman",
                  ),
                  buildExpensionTileRow(
                    firstTitle: ".\t\tProvince",
                    secTitle: "Balochistan",
                  ),
                  buildExpensionTileRow(
                    firstTitle: ".\t\tCountry",
                    secTitle: "Pakistan",
                  ),
                  MaterialButton(
                    height: 55,
                    elevation: 0,
                    child: const Text(
                      "Size guide",
                      style: DetailScreenStylies.sizeGruideTextStyle,
                    ),
                    minWidth: double.infinity,
                    color: AppColors.basewhite60Color,
                    onPressed: () {
                      // PageRouting().goToNextPage(
                      //   context: context,
                      //   navigateTo: SizeGuideScreen(),
                      // );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  buildAddtoCart() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MaterialButton(
        elevation: 0,
        height: 50,
        color: AppColors.baseDarkGreenColor,
        shape: RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(5)),
        child: const Text(
          "Add to Cart",
          style: DetailScreenStylies.buttonTextStyle,
        ),
        onPressed: () {
          // PageRouting.goToNextPage(
          //   context: context,
          //   navigateTo: YourBagScreen(
          //   ),
          // );
        },
      ),
    );
  }

  // buildBottomGridView() {
  //   return SizedBox(
  //     height: 240,
  //     child: GridView.builder(
  //       scrollDirection: Axis.horizontal,
  //       shrinkWrap: true,
  //       primary: true,
  //       itemCount: detailScreenData.length,
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 1,
  //         childAspectRatio: 1.5,
  //       ),
  //       itemBuilder: (context, index) {
  //         var data = detailScreenData[index];
  //         return SingleProductData(
  //           onPressed: () {
  //             PageRouting().goToNextPage(
  //               context: context,
  //               navigateTo: DetailScreen(
  //                 data: data,
  //               ),
  //             );
  //           },
  //           productImage: data.productImage,
  //           productModel: data.productModel,
  //           productName: data.productName,
  //           productOldPrice: data.productOldPrice,
  //           productPrice: data.productPrice,
  //         );
  //       },
  //     ),
  //   );
  // }

  buildMayLikeYou() {
    return const ListTile(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          buildListTile(),
          buildProductImages(),
          buildColorsAndSize(),
          buildAddtoCart(),
          buildExpensionTile(),
          buildMayLikeYou(),
          // buildBottomGridView(),
        ],
      ),
    );
  }
}
