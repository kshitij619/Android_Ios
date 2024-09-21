void main() {
  Manager manager = Manager("Mahesh", 200000);
  print("For Manger:");
  print("Salary: ${manager.salary}");
  manager.addTask("Check Emails");
  manager.addTask("Attend meeting");
  manager.addTask("Monitor performance");
  manager.addTask("Review reports and data");
  manager.showTaskList();
  manager.salaryIncrement();

  print("");

  print("For HR:");
  HR hr = HR("Ramesh", 150000);
  print("Salary: ${hr.salary}");
  hr.addTask("Solve employee queries");
  hr.addTask("Attendance tracking");
  hr.addTask("Training and Development Session");
  hr.addTask("Attend the HR Strategy meeting");
  hr.showTaskList();
  hr.salaryIncrement();

  print("");

  print("For Cleaner");
  Cleaner cleaner = Cleaner("Suresh", 20000);
  print("Salary: ${cleaner.salary}");
  cleaner.addTask("Clean Cubicle and rooms");
  cleaner.addTask("Clean washrooms");
  cleaner.showTaskList();
  cleaner.salaryIncrement();
}

class Employee {
  var name;
  double salary = 0.0;
  Employee(this.name, this.salary);

  List<String> tasksAssigned = [];

  void salaryIncrement() {
    salary += salary * 5 / 100;
    print("Salary after increment: ${salary}");
  }

  void addTask(String task) {
    tasksAssigned.add(task);
    print("$task added to task list.");
  }

  void showTaskList() => print(tasksAssigned);
}

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  void salaryIncrement() {
    salary += salary * 20 / 100;
    print("Salary after increment: ${salary}");
  }
}

class Cleaner extends Employee {
  Cleaner(String name, double salary) : super(name, salary);
}

class HR extends Employee {
  HR(String name, double salary) : super(name, salary);

  @override
  void salaryIncrement() {
    salary += salary * 10 / 100;
    print("Salary after increment: ${salary}");
  }
}
