import 'package:flutter/cupertino.dart';
import 'package:uygavazifa301/Categories/data/repository/categories_repository.dart';

import '../data/models/category_model.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel({required CategoriesRepository repo}) : _repo = repo {
    load();
  }

  final CategoriesRepository _repo;

  List<CategoriesModel>? myCategory = [];

  Future load() async {
    print("nimadir");
    myCategory = await _repo.fetchMyCategory();
    print(myCategory.toString());
    notifyListeners();
  }
}