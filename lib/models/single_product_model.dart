class SingleProductModel {
  String productName;
  String productImage;
  String productType;
  double productPrice;
  double productOldPrice;
  String productSecondImage;
  String productThirdImage;
  String productFourImage;

// CONSTRUCTOR OF SINGLE PRODUCT
  SingleProductModel({
    required this.productImage,
    required this.productSecondImage,
    required this.productThirdImage,
    required this.productFourImage,
    required this.productType,
    required this.productName,
    required this.productOldPrice,
    required this.productPrice,
  });

 
}
