// Copyright (c) 2017, Alexander Rogalsky. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:dart/dart.dart';

main() {
  var awesome = new Awesome();
  print('awesome: ${awesome.isAwesome}');

  var result = fibonacci(20);
  print(result);

  var voyager = new Spacecraft('Voyager I', new DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = new Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

class Spacecraft {
  String name;
  DateTime launchDate;
  int launchYear;

  // Constructor, including syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Pretend the following is something you'd actually want to run in
    // a constructor.
    launchYear = launchDate?.year;
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = new DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
