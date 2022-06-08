class CoffeeType {
  final String coffeeImageUrl;
  final String coffeeName;
  final String price;
  CoffeeType(
      {required this.coffeeImageUrl,
      required this.coffeeName,
      required this.price});
}

CoffeeType cappucino = CoffeeType(
    coffeeImageUrl: "assets/cappuccino.jpg",
    coffeeName: "Cappuccino",
    price: "\$3.99");

CoffeeType latte = CoffeeType(
    coffeeImageUrl: "assets/latte.jpg", coffeeName: "Latte", price: "\$8.99");
CoffeeType milk = CoffeeType(
    coffeeImageUrl: "assets/milk.jpg", coffeeName: "Milk", price: "\$4.99");

CoffeeType cortado = CoffeeType(
    coffeeImageUrl: "assets/cortado.jpg",
    coffeeName: "Cortado",
    price: "\$3.99");

CoffeeType affogato = CoffeeType(
    coffeeImageUrl: "assets/affogato.jpg",
    coffeeName: "Affogato",
    price: "\$5.99");

CoffeeType americano = CoffeeType(
    coffeeImageUrl: "assets/americano.jpg",
    coffeeName: "Americano",
    price: "\$2.99");

CoffeeType macchiato = CoffeeType(
    coffeeImageUrl: "assets/macchiato.jpg",
    coffeeName: "Macchiato",
    price: "\$4.99");

CoffeeType espresso = CoffeeType(
    coffeeImageUrl: "assets/espresso.jpg",
    coffeeName: "Espresso",
    price: "\$2.99");

CoffeeType irishCoffee = CoffeeType(
    coffeeImageUrl: "assets/irishCoffee.jpg",
    coffeeName: "Irish Coffee",
    price: "\$8.99");

List<CoffeeType> favorite = [
  cappucino,
  latte,
  milk,
  cortado,
  affogato,
  americano,
  macchiato,
  espresso,
  irishCoffee
];
