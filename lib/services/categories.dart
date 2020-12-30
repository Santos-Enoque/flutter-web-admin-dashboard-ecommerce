import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_admin_tut/helpers/costants.dart';
import 'package:ecommerce_admin_tut/models/categories.dart';

class CategoriesServices {
  String collection = "categories";

  Future<List<CategoriesModel>> getAll() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<CategoriesModel> categories = [];
        for (DocumentSnapshot category in result.docs) {
          categories.add(CategoriesModel.fromSnapshot(category));
        }
        return categories;
      });
}
