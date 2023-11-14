
void main(List<String> args) {
  task1(null);
  task2(null, 5);
  task3(name: null, age: null);
  task4(1);
  task5(null);
  phone(
      name: 'BMW',
      model: "X7",
      color: 'Red',
      long: null,
      width: null,
      weight: 250);
}

// Задание 1
// Написать функцию которая принимает String, если не передано вывести “Ошибка”
void task1(String? a) {
  if (a == null) {
    print('Error');
  } else {
    print(a);
  }
}

// Задaние 2
// Написать функцию которая принимает (int a, int b) и выводит их сумму , если значения не заданы,
//то присвоить им значения int a = 1, int b = 2;
void task2(int? a, int? b) {
  int c;
  if (a == null) {
    a = 1;
  }
  if (b == null) {
    b = 2;
  }
  c = a + b;
  print(c);
}

// Задание 3
// Создайте программу, которая просит пользователя ввести свое имя и возраст.
// Распечатайте сообщение, в котором говорится, сколько лет и как зовут.
// Если значения не переданы поставить заглушки
task3({required String? name, required int? age}) {
  print(age == null ? 'Возраст не задан' : age);
  print(name == null ? 'Имя не задано' : name);
}

// Задание 4
// Дано число. Если оно больше 3 и не null, то увеличить число на 10, иначе уменьшить на 10.
task4(int a) {
  if (a != null) {
    if (a > 3) {
      a = a + 10;
      print(a);
    } else {
      a = a - 10;
      print(a);
    }
  }
}

// Задание 5
// Создайте программу, которая в зависимости от текущей погоды подсказывает вам
// брать зонт или нет. (Подсказка: Нужно создать переменную bool и присвоить ей значение,
// сделать с помощью тернарного оператора (? : )).
// Если значение не передано, то по умолчанию присвоить false
task5(bool? isRain) {
  bool needUmbrella = isRain ?? false;
  needUmbrella == true ? print('Возьмите зонт') : print('Зонт не нужен');
}

// Задание 6
// Создать функцию phone, которая принимает обязательные поля name, model,
//color и необязательные поля длина, ширина, вес
// Распечатать пользователю характеристики телефона

void phone(
    {required String name,
    required String model,
    required String color,
    required int? long,
    required int? width,
    required int? weight}) {
  print('name == $name');
  print('model == $model');
  print('color == $color');
  print(long == null ? 'Длина не задано' : 'long == $long');
  print(width == null ? 'Ширина не задано' : 'width == $width');
  print(weight == null ? 'Вес не задано' : 'weight == $weight');
}