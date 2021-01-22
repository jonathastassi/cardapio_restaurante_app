import 'package:cardapio_restaurante/models/product.model.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> products = [
      ProductModel(
          id: 1,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 2,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 3,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 4,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 5,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 6,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 7,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 8,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 9,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 10,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 11,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 12,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 13,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 14,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 15,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
      ProductModel(
          id: 16,
          name: "Hamburguer",
          categoryId: 1,
          description: "teste",
          price: 19.90,
          image: "https://source.unsplash.com/300x300/?Food"),
    ];

    Future.delayed(Duration(milliseconds: 1500));

    return products;
  }
}
