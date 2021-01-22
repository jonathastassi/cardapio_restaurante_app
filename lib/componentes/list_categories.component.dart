import 'package:cardapio_restaurante/models/category.model.dart';
import 'package:cardapio_restaurante/repositories/category.repository.dart';
import 'package:flutter/material.dart';

class ListCategories extends StatefulWidget {
  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  final CategoryRepository _categoryRepository = new CategoryRepository();
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 46,
      width: double.maxFinite,
      child: FutureBuilder(
          future: _categoryRepository.getCategories(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text("Carregando as categorias...");
              default:
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error));
                }

                if (snapshot.hasData == false) {
                  return Container();
                }

                List<CategoryModel> list = snapshot.data;
                return ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    CategoryModel category = list[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 18),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              category.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: selectedCategoryIndex == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            ),
                            Container(
                              height: 2,
                              width: 30,
                              margin: EdgeInsets.only(top: 5),
                              color: selectedCategoryIndex == index
                                  ? Theme.of(context).accentColor
                                  : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
            }
          }),
    );
  }
}
