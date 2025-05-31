import 'dart:io';
import 'Bankaccounts.dart';

void main() {
  Bankacccounts account1 = Bankacccounts(
    1,
    "Am",
    "Solim",
    111520,
    "01008984664",
  );
  Bankacccounts account2 = Bankacccounts(
    1,
    "Zain",
    "Soliman",
    184756,
    "01056484664",
  );
  account1.phone = "01008864664";
  account1.Firstname = "Amr";
  account1.Lastname = "Soliman";
  print("The full name : ${account1.getFullName}");
  print("The balance of ${account1.getFullName}  is :  ${account1.getBalance}");
  print("**************");
  account1.Deposit = 80000;
  account1.withdrow = 11152;
  print("The balance of ${account1.getFullName}  is :  ${account1.getBalance}");
  print("**************");
  print("The balance of ${account2.getFullName}  is :  ${account2.getBalance}");
  account2.Transfer(account1, account2, 60000);
  print("The balance of ${account2.getFullName}  is :  ${account2.getBalance}");
  print("The balance of ${account1.getFullName}  is :  ${account1.getBalance}");

  print("**************");
}
