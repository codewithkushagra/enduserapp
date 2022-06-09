class ShopModel{
  String? uid;
  String? description;
  String? shopName;
  String? image;
  String? rating;
  List<String>? productNameList;
  List<String>? productIdList;

  ShopModel({this.uid,this.description,this.shopName,this.productIdList,this.productNameList,this.image,this.rating});

  //data from server
  factory ShopModel.fromMap(map){
    return ShopModel(
      uid: map['uid'],
      description: map['description'],
      shopName: map['shopName'],
      image: map['image'],
      rating: map['rating'],
      productNameList: map['productNameList'] is Iterable ? List.from(map['productNameList']) : null,
      productIdList: map['productIdList'] is Iterable ? List.from(map['productIdList']) : null,
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'description': description,
      'shopName': shopName,
      'image': image,
      'rating': rating,
      'productIdList': productIdList,
      'productNameList': productNameList,
    };
  }
}