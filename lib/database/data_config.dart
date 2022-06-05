import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shoe_kart_ecommerce_app/model/product_model.dart';
import 'package:shoe_kart_ecommerce_app/widgets/custom_alert_box_widget.dart';

Future getProductData(context) async {
  List<ProductModel> specificCategory = [];
  try {
    await FirebaseFirestore.instance.collection('products').get().then(
      (QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          ProductModel productModel = ProductModel.fromMap(doc);
          specificCategory.add(productModel);
        }
      },
    );
    return specificCategory;
  } catch (e) {
    showMyDialog(context, "Unable to fetch data", "Warning");
  }
}

Future getMensCategoryProduct(context) async {
  List<ProductModel> mensCategoryProduct = [];
  try {
    await FirebaseFirestore.instance
        .collection('products')
        .where('productCategory', isEqualTo: "Mens")
        .get()
        .then(
      (QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          ProductModel productModel = ProductModel.fromMap(doc);
          mensCategoryProduct.add(productModel);
        }
      },
    );
    return mensCategoryProduct;
  } catch (e) {
    showMyDialog(context, "Unable to fetch data", "Warning");
  }
}

Future getWomenCategoryProduct(context) async {
  List<ProductModel> womenCategoryProduct = [];
  try {
    await FirebaseFirestore.instance
        .collection('products')
        .where('productCategory', isEqualTo: "Women")
        .get()
        .then(
      (QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          ProductModel productModel = ProductModel.fromMap(doc);
          womenCategoryProduct.add(productModel);
        }
      },
    );
    return womenCategoryProduct;
  } catch (e) {
    showMyDialog(context, "Unable to fetch data", "Warning");
  }
}

Future getChildrenCategoryProduct(context) async {
  List<ProductModel> childrenCategoryProduct = [];
  try {
    await FirebaseFirestore.instance
        .collection('products')
        .where('productCategory', isEqualTo: "Child")
        .get()
        .then(
      (QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          ProductModel productModel = ProductModel.fromMap(doc);
          childrenCategoryProduct.add(productModel);
        }
      },
    );
    return childrenCategoryProduct;
  } catch (e) {
    showMyDialog(context, "Unable to fetch data", "Warning");
  }
}
