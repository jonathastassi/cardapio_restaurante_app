import 'package:cardapio_restaurante/models/product.model.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  final ProductModel product;

  DetailProductPage({@required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height - 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: "product_image_" + product.id.toString(),
                child: Material(
                  elevation: 6,
                  child: ClipRRect(
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      height: 220,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Preço",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "R\$ " +
                                product.price
                                    .toStringAsFixed(2)
                                    .replaceAll(".", ","),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          product.description,
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                      buttonBuy(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buttonBuy(BuildContext context) {
    return Container(
      height: 72,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 33,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Comprar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
