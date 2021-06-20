import 'dart:math';

class SpaceAge {
  // Put your code here

  double age({String planet, int seconds}) {
    // double min=seconds/60;
    // double hour=min/60;
    // double day=hour/24;
    // double month=day/30;
    // double year=month/12;

    double Earthyear = seconds * 3.16887646 * pow(10, -8);
    print(seconds);
    print(Earthyear);
    switch (planet) {
      case 'Mercury':
        {
          String num = (Earthyear / 0.2408470).toStringAsFixed(2);
          return double.parse(num);
        }
      case 'Venus':
        {
          String num = (Earthyear / 0.61519726).toStringAsFixed(2);
          return double.parse(num);
        }
        break;
      case 'Mars':
        {
          String num = (Earthyear / 1.8808158).toStringAsFixed(2);
          return double.parse(num);
        }
        break;
      case 'Jupiter':
        {
          String num = (Earthyear / 11.862615).toStringAsFixed(2);
          return double.parse(num);
        }
        break;
      case 'Saturn':
        {
          String num = (Earthyear / 29.447498).toStringAsFixed(2);
          return double.parse(num);
        }
        break;
      case 'Uranus':
        {
          String num = (Earthyear / 84.016846).toStringAsFixed(2);
          return double.parse(num);
        }
        break;
      case 'Neptune':
        {
          String num = (Earthyear / 164.79132).toStringAsFixed(2);
          return double.parse(num);
        }
      default:
        {
          String num = Earthyear.toStringAsFixed(2);
          return double.parse(num);
        }
        break;
    }
  }
}
