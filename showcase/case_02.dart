// Подключить библиотеку math для доступа к функции sqrt()
import 'dart:math' as math;

// Создание класса Point
class Point {

    // Переменные, объявленные как final, не могут быть изменены после инициализации
    // Объявление двух числовых полей
    final num x, y;

    // Конструктор c "синтаксическим сахаром", инициализирующий поля объекта значениями аргументов
    Point(this.x, this.y);

    // Именованный конструктор со списком инициализации по умолчанию
    Point.origin() : x = 0, y = 0;

    // Метод класса
    num distanceTo(Point other) {
        var dx = x - other.x;
        var dy = y - other.y;
        return math.sqrt(dx * dx + dy * dy);
    }
}

// Все программы на Dart начинают выполнение с функции main()
main() {
    // Создание двух объектов класса Point
    var p1 = new Point(10, 10);
    var p2 = new Point.origin();
    var distance = p1.distanceTo(p2);
    print(distance);
}