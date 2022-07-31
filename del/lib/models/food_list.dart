class Food {
  late String img;
  late bool sale;
  late String name;
  late List <double> price;
  late double weight;
  Food({
    required this.img, 
    required this.sale, 
    required this.name, 
    required this.price, 
    required this.weight
    });  
  static List <Food> items = [
    Food(
      img:'assets/img/cheese_pancake.jpg',
      sale:true,
      name:'cheese_pancake',
      price:[1.20,1.90],
      weight:120,
    ),
    Food(
      img:'assets/img/cottage_cheese_pancake.jpg',
      sale:true,
      name:'cottage cheese',
      price:[2.20,3.90],
      weight:140,
    ),
    Food(
      img:'assets/img/toast_ham.jpg',
      sale:false,
      name:'toast ham',
      price:[1.00,0],
      weight:20,
    ),
    Food(
      img:'assets/img/toast_with_ham.png',
      sale:true,
      name:'toast with ham',
      price:[1.50,1.90],
      weight:120,
    ),
    Food(
      img:'assets/img/Chocolate-Pancakes.jpg',
      sale:false,
      name:'Chocolate pancake',
      price:[0.90,0],
      weight:120,
    ),
    Food(
      img:'assets/img/banana-chocolate.jpg',
      sale:true,
      name:'Banana chocolate',
      price:[1.20,1.90],
      weight:120,
    ),
   Food(
      img:'assets/img/cheese_pancake.jpg',
      sale:true,
      name:'cheese_pancake',
      price:[1.20,1.90],
      weight:120,
    ),
   ];

  static List <Map<String,String>> horzScroll=[
    {"icon": "assets/svgs/breakfast.svg", "name": "Breakfast"},
    {"icon": "assets/svgs/three-rolls.svg", "name": "Sets"},
    {"icon": "assets/svgs/sushi.svg", "name": "Sushi"},
    {"icon": "assets/svgs/salad.svg", "name": "Salad"},
    {"icon": "assets/svgs/chicken.svg", "name": "Chicken"}
  ];

}