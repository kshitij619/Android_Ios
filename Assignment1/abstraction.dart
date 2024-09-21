void main() {
  var car = Car('Toyota', 2022, 'ABC123');
  car.start();
  car.getTyres();
  car.rentNow();
  car.stop();
  car.returnNow();

  print('');

  // Call methods on the bike
  var bike = Bike('Yamaha', 2021, 'XYZ789');
  bike.returnNow();
  bike.start();
  bike.rentNow();
  bike.getTyres();
  bike.stop();
  bike.returnNow();

  print('');

  // Call methods on the truck
  var truck = Truck('Volvo', 2020, 'DEF456');
  truck.rentNow();
  truck.rentNow();
  truck.start();
  truck.stop();
  truck.getTyres();
  truck.returnNow();
}

abstract class Vehicle {
  String name;
  int modelNumber;
  String licencePlate;
  bool rented = false;

  Vehicle(this.name, this.modelNumber, this.licencePlate);

  void rentNow() {
    if (rented == true) {
      print("Vehicle is not available to rent at the moment.");
    } else {
      rented = true;
      print(
          "You have rented $name $modelNumber with licence plate number $licencePlate");
    }
  }

  void returnNow() {
    if (rented == false) {
      print("You have not rented this vehicle.");
    } else {
      rented = false;
      print("Thank You for using our services");
    }
  }

  void start();
  void stop();
  void getTyres();
}

class Car extends Vehicle {
  Car(String name, int modelNumber, String licencePlate)
      : super(name, modelNumber, licencePlate);
  void start() {
    print('Car has started.');
  }

  void stop() {
    print('Car has stopped.');
  }

  void getTyres() {
    print('Got car tyres.');
  }
}

class Bike extends Vehicle {
  Bike(String name, int modelNumber, String licencePlate)
      : super(name, modelNumber, licencePlate);
  void start() {
    print('Bike has started.');
  }

  void stop() {
    print('Bike has stopped.');
  }

  void getTyres() {
    print('Got Bike tyres.');
  }
}

class Truck extends Vehicle {
  Truck(String name, int modelNumber, String licencePlate)
      : super(name, modelNumber, licencePlate);
  void start() {
    print('Truck has started.');
  }

  void stop() {
    print('Truck has stopped.');
  }

  void getTyres() {
    print('Got Truck tyres.');
  }
}
