
class CategoriesController {
  List<NameCat> listCategories = [
    NameCat(mameCat: "الملاعب",imageCatUrl: "assets/images/categories/ball.png"),
    NameCat(mameCat: "المسابح",imageCatUrl: "assets/images/categories/swimming.png"),
    NameCat(mameCat: "القاعات",imageCatUrl: "assets/images/categories/hall.png"),
    NameCat(mameCat: "رائج",imageCatUrl: "assets/images/categories/compass.png")
    ];

    List<NameCat> listCategoriesInPlace = [
    NameCat(mameCat: "الملاعب",imageCatUrl: "assets/images/categories/ball.png"),
    NameCat(mameCat: "المسابح",imageCatUrl: "assets/images/categories/swimming.png"),
    NameCat(mameCat: "القاعات",imageCatUrl: "assets/images/categories/hall.png"),
    ];
}

class NameCat{
  final String mameCat;
  final String imageCatUrl;

  NameCat({required this.mameCat,required this.imageCatUrl});
}