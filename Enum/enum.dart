import 'dart:io';

enum Weather { sunny, rainy, cloudy }

String User() {
  print("Enter today's weather : ");
  print("(Sunny , Rainy , Cloudy) : ");

  String user = stdin.readLineSync()!;
  return user;
}

void Determine_weather() {
  String weath = User();
  // to convert  Input from user to Enum
  Weather? weather;
  for (var w in Weather.values) {
    if (w.toString().split('.').last.toLowerCase() == weath) {
      weather = w;
      break;
    }
  }

  switch (weather) {
    case Weather.sunny:
      print("It's sunny ☀️");
      break;
    case Weather.rainy:
      print("It's rainy 🌧️");
      break;
    case Weather.cloudy:
      print("It's cloudy ☁️");
      break;
    default:
      print("Invalid Input");
      return;
  }
}

void main() {
  Determine_weather();
}
