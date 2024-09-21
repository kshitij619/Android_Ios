// import 'dart:io';

void main() {
//   User u1 = User();
//   u1.useApp();
//   print("What do you want to use?");
//   print("1. Cash");
//   print("2. Credit Card");
//   print("3. Upi");

  var cash = Cash();
  cash.paymentProcess();
  cash.paymentProcess();
  cash.refund();
  cash.paymentProcess();
  cash.paymentProcess();

  print("");

  var creditCard = CreditCard();
  creditCard.paymentProcess();
  creditCard.refund();
  creditCard.paymentProcess();
  creditCard.paymentProcess();
  creditCard.paymentProcess();

  print("");

  var upi = Upi();
  upi.refund();
  upi.paymentProcess();
  upi.paymentProcess();
  upi.paymentProcess();
  upi.refund();
  upi.paymentProcess();
}

// class User {
//   var cash = Cash();
//   var creditCard = CreditCard();
//   var upi = Upi();

//   void useApp() {
//     int? choice = int.parse(stdin.readLineSync()!);
//     while (true) {
//       switch (choice) {
//         case 1:
//           {
//             print()
//           }
//           break;
//         case 2:
//           {}
//           break;
//         case 3:
//           {}
//           break;
//         default:
//           {}
//           break;
//       }
//     }
//   }
// }

abstract class Payment {
  abstract int count;

  void paymentProcess();
  void refund();
}

class Cash implements Payment {
  int count = 0;

  void paymentProcess() {
    count++;
    print("$count. Paid with Cash.");
  }

  void refund() {
    if (count <= 0) {
      print("count: $count. No transactions");
    } else {
      count--;
      print("Cash returned. count: $count");
    }
  }
}

class CreditCard implements Payment {
  int count = 0;

  void paymentProcess() {
    count++;
    print("$count. Paid with Credit Card.");
  }

  void refund() {
    if (count <= 0) {
      print("count: $count. No transactions");
    } else {
      count--;
      print("Credit limit changed. count: $count");
    }
  }
}

class Upi implements Payment {
  int count = 0;

  void paymentProcess() {
    count++;
    print("$count. Paid with UPI.");
  }

  void refund() {
    if (count <= 0) {
      print("count: $count. No transactions");
    } else {
      count--;
      print("Money Refunded in the UPI account. count: $count");
    }
  }
}
