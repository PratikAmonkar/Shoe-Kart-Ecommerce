class ProductModel {
  String? productId;
  String? productTitle;
  String? productBrand;
  String? productCategory;
  String? productUrl;
  int? productActualPrice;
  int? productOfferPrice;
  int? productOfferPercentage;

  ProductModel({
    this.productId,
    this.productTitle,
    this.productBrand,
    this.productCategory,
    this.productUrl,
    this.productActualPrice,
    this.productOfferPrice,
    this.productOfferPercentage,
  });

  factory ProductModel.fromMap(map) {
    return ProductModel(
      productTitle: map["productTitle"],
      productBrand: map["productBrand"],
      productCategory: map["productCategory"],
      productUrl: map["productUrl"],
      productActualPrice: map["productActualPrice"],
      productOfferPrice: map["productOfferPrice"],
      productOfferPercentage: map["productOfferPercentage"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'productTitle': productTitle,
      'productBrand': productBrand,
      'productCategory': productCategory,
      'productUrl': productUrl,
      'productActualPrice': productActualPrice,
      'productOfferPrice': productOfferPrice,
      'productOfferPercentage': productOfferPercentage,
    };
  }
}
