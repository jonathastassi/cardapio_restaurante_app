import 'package:cardapio_restaurante/models/product.model.dart';
import 'package:cardapio_restaurante/repositories/product.repository.dart';
import 'package:cardapio_restaurante/screens/detail_product_page.dart';
import 'package:flutter/material.dart';

class ListProducts extends StatelessWidget {
  final ProductRepository _productRepository = new ProductRepository();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: FutureBuilder(
          future: _productRepository.getProducts(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                return Center(child: Text("Carregando os produtos..."));
              default:
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error));
                }

                List<ProductModel> list = snapshot.data;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    ProductModel product = list[index];
                    return productItem(product, context);
                  },
                );
            }
          },
        ),
      ),
    );
  }

  Widget productItem(ProductModel product, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailProductPage(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 5,
          right: 5,
        ),
        child: Material(
          borderRadius: BorderRadius.circular(8.0),
          elevation: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.maxFinite,
                height: 170,
                child: Hero(
                  tag: "product_image_" + product.id.toString(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              Expanded(
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "R\$ ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        TextSpan(
                          text: product.price
                              .toStringAsFixed(2)
                              .replaceAll(".", ","),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
