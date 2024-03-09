// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_app/core/utils/app_assets.dart';

class ProductModel {
  final String name;
  final String image;
  final String description;
  final double price;
  ProductModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List<ProductModel> products = [
  ProductModel(
    name: 'Grilled Beef',
    image: AppAssets.image4Png,
    description: 'Spicy grilled beef with special seasoning',
    price: 400.00,
  ),
  ProductModel(
    name: 'Meat Balls',
    image: AppAssets.image2Png,
    description: 'Flavoured meatballs with vegetables',
    price: 122.00,
  ),
  ProductModel(
    name: 'Steak',
    image: AppAssets.image1Png,
    description: 'Barbeques Steak with lettuce and cheese',
    price: 300.00,
  ),
  ProductModel(
    name: 'Grilled Beef',
    image: AppAssets.image3Png,
    description: 'Spicy grilled beef with special seasoning',
    price: 230.00,
  ),
];
