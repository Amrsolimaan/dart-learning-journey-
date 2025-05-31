import 'payment.dart';

class vodafoneCash extends payment {
  @override
  void pay(String name, double ammount) {
    print("Thanks $name payment using Vodafone .");
  }
}
