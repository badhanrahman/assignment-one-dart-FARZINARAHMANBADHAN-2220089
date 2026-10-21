// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Vehicle Info: 2020 Toyota Camry (4 doors)
 * Starting the car engine...
 * Stopping the car engine...
 * 
 * Vehicle Info: 2021 Honda CBR (Has windshield: true)
 * Starting the motorcycle engine...
 * Stopping the motorcycle engine...
 * 
 * Car age: <Value> years
 * Motorcycle age: <Value> years
 */

// 1. Abstract Class Vehicle:
abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  // Add a method to calculate vehicle age (current year - vehicle year)
  int calculateAge() {
    // Using current year 2026 based on system context
    return 2026 - year;
  }
}

// 2. Concrete Classes:
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  // 3. Create a list of vehicles and demonstrate polymorphism
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true)
  ];

  // Loop through the list and call displayInfo(), start(), and stop()
  for (Vehicle vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print(""); // Empty line for spacing matching expected output blocks
  }

  // Print the age of each vehicle using calculateAge()
  print("Car age: ${vehicles[0].calculateAge()} years");
  print("Motorcycle age: ${vehicles[1].calculateAge()} years");
}
