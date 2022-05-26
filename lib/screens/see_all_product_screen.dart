import 'package:flutter/material.dart';
import 'package:shoe_kart_ecommerce_app/widgets/sell_all_product_detail_widget.dart';

class SeeAllProductScreen extends StatefulWidget {
  const SeeAllProductScreen({Key? key}) : super(key: key);

  @override
  State<SeeAllProductScreen> createState() => _SeeAllProductScreenState();
}

class _SeeAllProductScreenState extends State<SeeAllProductScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          "Mens Category",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
            seeAllProductDetailWidget(),
          ],
        ),
      ),
    );
  }
}
