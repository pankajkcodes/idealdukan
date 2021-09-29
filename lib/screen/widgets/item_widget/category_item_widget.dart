import 'package:flutter/material.dart';
import 'package:idealdukan/screen/screen/show_caterory_screen.dart';

class SingleCategoryItem extends StatelessWidget {
  String catName;
  SingleCategoryItem({Key? key, required this.catName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ShowCategoryScreen()));
      },
      child: Card(
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://m.media-amazon.com/images/I/71WTxTRa1NL._AC_UL480_FMwebp_QL65_.jpg"))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        catName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
