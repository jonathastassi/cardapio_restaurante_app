import 'package:cardapio_restaurante/models/category.model.dart';

class CategoryRepository {
  Future<List<CategoryModel>> getCategories() async {
    List<CategoryModel> categories = [
      CategoryModel(id: 1, name: "Hamburguer"),
      CategoryModel(id: 2, name: "Pizzas"),
      CategoryModel(id: 3, name: "Bebidas"),
      CategoryModel(id: 4, name: "Entradas"),
      CategoryModel(id: 5, name: "Sobremesas"),
      CategoryModel(id: 6, name: "Doces"),
    ];

    Future.delayed(Duration(milliseconds: 1500));

    return categories;
  }
}
