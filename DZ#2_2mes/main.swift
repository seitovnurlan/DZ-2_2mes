//  2 месяц. ДЗ #2 Наследование
//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//Так же в конце должен быть метод, который будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)
//
//Критерии приемки:
//Код каждого студента должен быть уникальным
//Каждый класс должен быть в отдельном файле
//Вся логика в main
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)

import Foundation

var goods1 = Products(name: "Banana", sum: 100, cost: 180)
var goods2 = Products(name: "Pineapple", sum: 200, cost: 200)
var goods3 = Products(name: "Mandarins", sum: 200, cost: 150)
var goods4 = Products(name: "Banana", sum: 300, cost: 180)

var foodArray = [Products]()
var shop = Shop(shop_name: "Dostuk", square: 50, location: "Bishkek", opening_hours: "9.00-17.00", products: foodArray)
shop.add_prod(goods1)
shop.add_prod(goods2)
shop.add_prod(goods3)
shop.add_prod(goods4)

shop.showInfoshop()
shop.showInfo()

var goods5 = Products(name: "Motor", sum: 1, cost: 25000)
var goods6 = Products(name: "Motor", sum: 2, cost: 30000)
var goods7 = Products(name: "Doors", sum: 5, cost: 5000)

var autopartArray = [Products]()
var shop2 = Auto_parts_shop(shop_name: "Kudaibergen", square: 100, location: "Bishkek", opening_hours: "10.00-18.00", products: foodArray, type_auto: "легковой")
shop2.add_prod(goods5)
shop2.add_prod(goods6)
shop2.add_prod(goods7)

shop2.showInfoshop()
shop2.showInfo()

var goods8 = Products(name: "Lacosta", sum: 5, cost: 4000)
var goods9 = Products(name: "Lacosta", sum: 5, cost: 5000)
var goods10 = Products(name: "LCW", sum: 10, cost: 6000)

var clothesArray = [Products]()
var shop3 = Auto_parts_shop(shop_name: "Asiamoll", square: 150, location: "Bishkek", opening_hours: "10.00-20.00", products: foodArray, type_auto: "верхняя одежда")
shop3.add_prod(goods8)
shop3.add_prod(goods9)
shop3.add_prod(goods10)

shop3.showInfoshop()
shop3.showInfo()
