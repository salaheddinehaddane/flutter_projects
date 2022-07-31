class Mylist {
  late String name;
  late double price;
  late String path;
  Mylist({required this.name,required this.price,required this.path});
static List<String> categories=
[ 
  "Sale",
  "Top",
  "Indoor",
  "Garden cress"
];
static List<Mylist> plants=
[ 
  Mylist(name:"Snake plant",price:12,path:"assets/plant2"),
  Mylist(name:"Monstera",price:10,path:"assets/plant3"),
  Mylist(name:"Parlor",price:08,path:"assets/plant4"),
  Mylist(name:"Mass can",price:20,path:"assets/plant1"),
];
}