import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food/models/product_model.dart';

class ProductProvier with ChangeNotifier{
  ProductModel productModel;
  List<ProductModel> search= [];
  productModels(QueryDocumentSnapshot element){
    productModel= ProductModel(
      productName: element.get('productName'),
      productImage: element.get('productImage'),
      productPrice: element.get('productPrice'),
      productDescription: element.get('productDescription'),
      productId: element.get('productId'),
    );
    search.add(productModel);
  }

  /////////////// herbsProduct ///////////////////
  List<ProductModel> herbsProductList = [];

  fetchHerbsProductData() async{
    List<ProductModel> newList =[];
    QuerySnapshot value = await FirebaseFirestore.instance.collection('HerbsProduct').get();

    value.docs.forEach((element) {
      // print(element.data());
      productModels(element);
      newList.add(productModel);
    }
    );
    herbsProductList = newList;
    notifyListeners();
  }

  List<ProductModel>get getHerbsProductDataList{
    return herbsProductList;
  }
/////////////////// fruitsProduct ///////////////////
  List<ProductModel> fruitsProductList = [];

  fetchFruitsProductData() async{
    List<ProductModel> newList =[];
    QuerySnapshot value = await FirebaseFirestore.instance.collection('FreshFruits').get();

    value.docs.forEach((element) {
      // print(element.data());
      productModels(element);
      newList.add(productModel);
    }
    );
    fruitsProductList = newList;
    notifyListeners();
  }

  List<ProductModel>get getFruitsProductDataList{
    return fruitsProductList;
  }
  //////////////////////////// search  ///////////////////////////////
  List<ProductModel>get getAllProductDataList{
    return search;
  }
  //
  // ///////////////// VegetablesProduct ///////////////////
  // List<ProductModel> vegetablesProductList = [];
  //
  // fetchVegetablesProductData() async{
  //   List<ProductModel> newList =[];
  //   QuerySnapshot value = await FirebaseFirestore.instance.collection('VegetablesProduct').get();
  //
  //   value.docs.forEach((element) {
  //     // print(element.data());
  //     productModels(element);
  //     newList.add(productModel);
  //   }
  //   );
  //   vegetablesProductList = newList;
  //   notifyListeners();
  // }
  //
  // List<ProductModel>get getvegetablesProductDataList{
  //   return vegetablesProductList;
  // }
  //
  //
}