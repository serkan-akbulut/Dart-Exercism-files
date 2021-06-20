import 'package:robot_simulator/orientation.dart';
import 'package:robot_simulator/position.dart';

class Robot {
  Position position;
  Orientation orientation;

  Robot(this.position, this.orientation) {}

  void move(String commands) {
    List<String> commandArr = commands.split("");
    for (int i = 0; i < commandArr.length; i++) {
      if (commands[i] == "A") {
        if (orientation == Orientation.north) {
          position = Position(position.x, position.y + 1);
        } else if (orientation == Orientation.west) {
          position = Position(position.x - 1, position.y);
        } else if (orientation == Orientation.south) {
          position = Position(position.x, position.y - 1);
        } else if (orientation == Orientation.east) {
          position = Position(position.x + 1, position.y);
        }
      } else if (commands[i] == "L") {
        if (orientation == Orientation.north) {
          orientation = Orientation.west;
        } else if (orientation == Orientation.west) {
          orientation = Orientation.south;
        } else if (orientation == Orientation.south) {
          orientation = Orientation.east;
        } else if (orientation == Orientation.east) {
          orientation = Orientation.north;
        }
      } else {
        if (orientation == Orientation.north) {
          orientation = Orientation.east;
        } else if (orientation == Orientation.east) {
          orientation = Orientation.south;
        } else if (orientation == Orientation.south) {
          orientation = Orientation.west;
        } else if (orientation == Orientation.west) {
          orientation = Orientation.north;
        }
      }
    }
  }
}
