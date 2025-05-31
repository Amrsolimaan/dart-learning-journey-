import 'payment.dart';
import 'vodafoneCash.dart';
import 'paypal.dart';

void main() {
  payment pay = vodafoneCash();
  pay.pay("amr soliman", 15550);
  pay = Paypal();
  pay.pay("ahmed abdelkarem", 20000);
}
