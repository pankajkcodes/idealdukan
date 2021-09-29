import 'package:flutter/material.dart';
import 'package:idealdukan/data/home_page_data.dart';
import 'package:idealdukan/drawer/drawer.dart';
import 'package:idealdukan/screen/screen/product_details_screen.dart';
import 'package:idealdukan/screen/widgets/item_widget/single_product_widget.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDraweWidget(),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Ideal Dukan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidget(
                    imagePath:
                        'https://d29qfl7sjqf9f5.cloudfront.net/uploads/image/image/171468/medium_photo.jpg',
                    text: 'All',
                  ),
                  CategoryWidget(
                    imagePath:
                        'https://d29qfl7sjqf9f5.cloudfront.net/uploads/image/image/171468/medium_photo.jpg',
                    text: 'Electronins',
                  ),
                  CategoryWidget(
                    imagePath:
                        'https://d29qfl7sjqf9f5.cloudfront.net/uploads/image/image/171468/medium_photo.jpg',
                    text: 'Fashions',
                  ),
                  CategoryWidget(
                    imagePath:
                        'https://d29qfl7sjqf9f5.cloudfront.net/uploads/image/image/171468/medium_photo.jpg',
                    text: 'Grocerry',
                  ),
                  CategoryWidget(
                    imagePath:
                        'https://d29qfl7sjqf9f5.cloudfront.net/uploads/image/image/171468/medium_photo.jpg',
                    text: 'Mobile',
                  ),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 500,
              child: GridView.builder(
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 0.8),
                itemCount: singleProductData.length,
                itemBuilder: (context, index) {
                  var data = singleProductData[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailsScreen(data: data)));
                    },
                    child: SingleProductWidget(
                      productImage: data.productImage,
                      productName: data.productName,
                      productType: data.productType,
                      productPrice: data.productPrice,
                      productOldPrice: data.productOldPrice,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CATEGORY WIDGET
// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  late String imagePath;
  late String text;

  CategoryWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imagePath),
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
