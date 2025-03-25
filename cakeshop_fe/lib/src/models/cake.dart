// {
//     "bakery_id": 1,
//     "bakery_name": "KYERI 키에리",
//     "address": "서울특별시 용산구 이태원동 이태원로26길 16-8",
//     "description": "We are a bakery that crafts every treat with passion and love. From classic pastries to innovative dessert creations, we specialize in bringing a sweet touch to every occasion. Our cakes are freshly baked with the finest ingredients, and our signature red velvet and rich chocolate cakes are loved by all. Whether you're craving a quick snack or planning a special celebration, we have something for everyone!",
//     "open": 10,
//     "close": 21,
//     "url": "https://cakeshop-bucket-liza.s3.ap-northeast-2.amazonaws.com/assets/img/bakery_img/kyeri.jpg",
//     "cakes": [
//         {
//             "cake_id": 1,
//             "cake_name": "Red Velvet Cake",
//             "ingredients": "Flour, sugar, buttermilk, cocoa powder, red food coloring, eggs, butter, vinegar, cream cheese",
//             "category": "Creamy, Chocolate",
//             "url": "https://cakeshop-bucket-liza.s3.ap-northeast-2.amazonaws.com/assets/img/cake-img/red_velvet.jpg"
//         },
  
  class Cake {
  final int cakeId;
  final String cakeName;
  final String ingredients;
  final String category;
  final String url;

  const Cake({required this.cakeName, required this.ingredients, required this.category, required this.url, required this.cakeId});

  factory Cake.fromJson(Map<String, dynamic> json) {
    return Cake(
      cakeId: json['cake_id'],
      cakeName: json['cake_name'],
      ingredients: json['ingredients'],
      category: json['category'],
      url: json['url'],
    );
  }}