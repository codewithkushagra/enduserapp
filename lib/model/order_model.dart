class OrderModel{
  String? uid;
  String? productUid;
  String? product;
  String? image;
  String? price;
  String? quantity;
  String? time;

  OrderModel({this.uid,this.product,this.quantity,this.productUid,this.time,this.image,this.price});

  //data from server
  factory OrderModel.fromMap(map){
    return OrderModel(
      uid: map['uid'],
      productUid: map['userUid'],
      time: map['time'],
      image: map['image'],
      quantity: map['quantity'],
      product: map['product'],
      price: map['price']
    );
  }

  //sending data to server
  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'userUid': productUid,
      'quantity': quantity,
      'product': product,
      'time': time,
      'image': image,
      'price': price,
    };
  }
}