
void main(){
  // All data from user class
  User user1 =User.withDetails('Raza','def@gmail.com' );
  User user2 =User.withDetails('Zain','ghi@gmail.com' );
  User user3 =User.withDetails('Ahamad','jkl@gmail.com' );
  print('----------------------------------------------------------------\n');
  print('U s e r s\n');
  print('$user1 \n');
  print('$user2 \n');
  print('$user3 \n');
  print('\n----------------------------------------------------------------');
   
    // All data from Admin class
  print('----------------------------------------------------------------\n');
  Admin admin =Admin.withDetails('Ali', 'abc@gmail.com', 'Management of users');
 print('A d m i n\n');
 print(admin);
 print('\n----------------------------------------------------------------');

 // All data from Dog and Cat class
   print('----------------------------------------------------------------\n');
   print('A n i m a l s\n');
   Dog dog = Dog();
   dog.sound();
   Cat cat =Cat();
   cat.sound();
   print('\n----------------------------------------------------------------');

// Adding products
Product product1 =Product('Milk', 50);
Product product2 =Product('Washing powder', 50);
Product product3 =Product('Lays', 30);
Product product4 =Product('Soap', 120);
Product product5 =Product('Tea', 100);

// Shoping

ShoppingCart shoppingCart =ShoppingCart();
   print('----------------------------------------------------------------\n');
print('P r o d u c t s\n');
shoppingCart.addProduct(product5);
shoppingCart.addProduct(product3);
shoppingCart.addProduct(product1);
shoppingCart.addProduct(product2);

shoppingCart.removeProduct(product2);
  

print('\nYour total price is : ${shoppingCart.calculateTotal()}');
   print('\n----------------------------------------------------------------');
      print('----------------------------------------------------------------');



}

//  User Class
class User {
  String _name = '';
  String _email = '';

// C o n s t r u c t o r
User.withDetails(String name,String email){
_name = name;
_email = email;
}

// G e t t e r
get name => _name;
get email => _email;

// S e t t e r
set name(String newName){
  _name = newName;
}
set email(String newEmail){
  _email = newEmail;
}

String toString(){
  return 'User : $_name\nEmail : $_email';
}


}


// Admin class
 class Admin extends User{
  String work;
Admin.withDetails(String name, String email, this.work)
       : super.withDetails(name, email);


@override
String toString(){
  return 'User : $_name\nEmail : $_email\nWork : $work';
}

 }


// Animal abstract class
abstract class Animal {

void sound();

}

// Dog class extending Animal class
class Dog extends Animal{
  @override
  void sound() {
    print('Dog says: Woof!');
  }


}


// Cat class extending Animal class
class Cat extends Animal{
  @override
  void sound() {
    print('Cat says: Meow!');
  }


}

// Product class
class Product {
  String name='';
  int price =0;
  Product(this.name,this.price);
}


// ShoppingCart class
class ShoppingCart {
  List products=[];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart");
  }
  void removeProduct(Product product) {
    products.remove(product);
    print("${product.name} removed from cart");
  }

  double calculateTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }

}