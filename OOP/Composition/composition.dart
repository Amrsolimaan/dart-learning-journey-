void Starline() {
  print("\n*********************\n");
}

abstract class Info_Components {
  String model;
  String name;
  double price;
  Info_Components(this.name, this.model, this.price);

  set Model(String model) {
    this.model = model;
  }

  set Name(String name) {
    this.name = name;
  }

  set Price(double price) {
    this.price = price;
  }

  get GetName => name;
  get GetModel => model;
  get GetPrice => price;
}

class Process extends Info_Components {
  Process(String name, String model, double price) : super(name, model, price);
  void DisplayInfo() {
    print(
      "Model is : ${super.model} , name is : ${super.name} , Price is : ${super.price}",
    );
  }

  void startProcessor() {
    print("✅ Processor ${super.name} (${super.model}) started successfully.");
  }
}

class Keyboard extends Info_Components {
  Keyboard(String name, String model, double price) : super(name, model, price);
  void DisplayInfo() {
    print(
      "Model is : ${super.model} , name is : ${super.name} , Price is : ${super.price}",
    );
  }

  void startKeyboard() {
    print("✅ Keyboard ${super.name} (${super.model}) started successfully.");
  }
}

class Monitor extends Info_Components {
  Monitor(String name, String model, double price) : super(name, model, price);
  void DisplayInfo() {
    print(
      "Model is : ${super.model} , name is : ${super.name} , Price is : ${super.price}",
    );
  }

  void startMonitor() {
    print("✅ Monitor ${super.name} (${super.model}) started successfully.");
  }
}

class Computer {
  late Process Proc;
  late Keyboard key;
  late Monitor mon;
  Computer() {
    print("Welcome to the excellent computer experience");
    Proc = Process("Intel", "Core I9", 2000);
    key = Keyboard("forev", "154786xz", 80);
    mon = Monitor("hp", "fsfa54421", 1000);
  }
  void Running() {
    Starline();
    Proc.startProcessor();
    Starline();
    key.startKeyboard();
    Starline();
    mon.startMonitor();
  }
}

void main() {
  Computer computer = Computer();
  computer.Running();
}
