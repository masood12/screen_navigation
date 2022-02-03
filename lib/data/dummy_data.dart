

class ProductModel {
  String? name;
  String? time;
  String? subtitle;
  String? description;
  bool? isDone;

  ProductModel({
    this.name,
    this.time,
   this. subtitle,
    this.description,
    this.isDone
  });
}

List<ProductModel> productList = [

  ProductModel(name: "TOUR 1",subtitle:"2 Bestelugen",time:"11.30-13.00 Uhr",description: "Philipp Osterl",isDone: true),
  ProductModel(name: "TOUR 2",subtitle:"5 Bestelugen",time:"11.30-13.00 Uhr",description: "Grave Hatrik...",isDone: true),
  ProductModel(name: "TOUR 3",subtitle:"4 Bestelugen",time:"11.30-15.00 Uhr",description: "Philipp Osterl",isDone: false),
  ProductModel(name: "TOUR 4",subtitle:"4 Bestelugen",time:"12.30-14.00 Uhr",description: "Grave Hatrik...",isDone: true),
  ProductModel(name: "TOUR 5",subtitle:"6 Bestelugen",time:"14.30-16.00 Uhr",description: "Grave Hatrik...",isDone: false),
  ProductModel(name: "TOUR 6",subtitle:"4 Bestelugen",time:"15.00-17.00 Uhr",description: "Philipp Osterl",isDone: false),
  ProductModel(name: "TOUR 5",subtitle:"6 Bestelugen",time:"14.30-16.00 Uhr",description: "Grave Hatrik...",isDone: false),
  ProductModel(name: "TOUR 6",subtitle:"4 Bestelugen",time:"15.00-17.00 Uhr",description: "Philipp Osterl",isDone: false)

];