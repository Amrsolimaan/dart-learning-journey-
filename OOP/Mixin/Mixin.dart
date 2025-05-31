mixin class CanWalk {
  void Canwalk() {
    print("Robot Can walk");
  }
}

mixin class CanTalk {
  void Cantalk() {
    print("Robot Can Talk");
  }
}

abstract class Robot {
  int num_models;
  String name;
  Robot(this.name, this.num_models);
}

class AIrobot extends Robot with CanWalk, CanTalk {
  AIrobot(super.name, super.num_models);
}

void main() {
  AIrobot robot = AIrobot("Alex", 15478872);
  robot.Cantalk();
  robot.Canwalk();
}
