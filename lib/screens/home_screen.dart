import 'package:flutter/material.dart';
import 'package:shoe_kart_ecommerce_app/database/auth_config.dart';
import 'package:shoe_kart_ecommerce_app/database/data_config.dart';
import 'package:shoe_kart_ecommerce_app/model/product_model.dart';
import 'package:shoe_kart_ecommerce_app/screens/see_all_product_screen.dart';
import 'package:shoe_kart_ecommerce_app/widgets/product_detail_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> specificCategory = [];
  List<ProductModel> mensCategory = [];
  List<ProductModel> womenCategory = [];
  List<ProductModel> childCategory = [];
  @override
  void initState() {
    super.initState();
    getNewArrivalData();
    getMensData();
    getWomenData();
    getChildData();
  }

  void getNewArrivalData() async {
    for (var data in await getProductData(context)) {
      ProductModel productDetail = ProductModel(
        productId: data.productId,
        productTitle: data.productTitle,
        productBrand: data.productBrand,
        productUrl: data.productUrl,
        productCategory: data.productCategory,
        productActualPrice: data.productActualPrice,
        productOfferPrice: data.productOfferPrice,
        productOfferPercentage: data.productOfferPercentage,
      );
      setState(() {
        specificCategory.add(productDetail);
      });
    }
  }

  void getMensData() async {
    for (var data in await getMensCategoryProduct(context)) {
      ProductModel productDetail = ProductModel(
        productId: data.productId,
        productTitle: data.productTitle,
        productBrand: data.productBrand,
        productUrl: data.productUrl,
        productCategory: data.productCategory,
        productActualPrice: data.productActualPrice,
        productOfferPrice: data.productOfferPrice,
        productOfferPercentage: data.productOfferPercentage,
      );
      setState(() {
        mensCategory.add(productDetail);
      });
    }
  }

  void getWomenData() async {
    for (var data in await getWomenCategoryProduct(context)) {
      ProductModel productDetail = ProductModel(
        productId: data.productId,
        productTitle: data.productTitle,
        productBrand: data.productBrand,
        productUrl: data.productUrl,
        productCategory: data.productCategory,
        productActualPrice: data.productActualPrice,
        productOfferPrice: data.productOfferPrice,
        productOfferPercentage: data.productOfferPercentage,
      );
      setState(() {
        womenCategory.add(productDetail);
      });
    }
  }

  void getChildData() async {
    for (var data in await getChildrenCategoryProduct(context)) {
      ProductModel productDetail = ProductModel(
        productId: data.productId,
        productTitle: data.productTitle,
        productBrand: data.productBrand,
        productUrl: data.productUrl,
        productCategory: data.productCategory,
        productActualPrice: data.productActualPrice,
        productOfferPrice: data.productOfferPrice,
        productOfferPercentage: data.productOfferPercentage,
      );
      setState(() {
        childCategory.add(productDetail);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                logoutUser();
              },
              child: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "our best shoes",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Search item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Arrival",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SeeAllProductScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "See all",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: specificCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productDetailWidget(
                      specificCategory[index].productUrl,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Mens",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mensCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productDetailWidget(
                      mensCategory[index].productUrl,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Women",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: womenCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productDetailWidget(
                      womenCategory[index].productUrl,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Children",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: childCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productDetailWidget(
                      childCategory[index].productUrl,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
