import 'payment.dart';

class Paypal extends payment {
  @override
  void pay(String name, double ammount) {
    print("Thanks $name payment using paypal .");
  }
}