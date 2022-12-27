//  Shop.swift

import Foundation

class Shop {
    var shop_name: String             //Название
    var square: Int                  //Площадь
    var location: String             //Месторасположение
    var opening_hours: String        //Часы работы
    var products: [Products]         //Массив с товарами
    
    init(shop_name: String, square: Int, location: String, opening_hours: String, products: [Products]) {
        self.shop_name = shop_name
        self.square = square
        self.location = location
        self.opening_hours = opening_hours
        self.products = products
    }
    
    func add_prod(_ component: Products){
        var sign: Bool = false
        for item in products {
            if item.name == component.name {
                item.sum += component.sum
                //item.cost +=component.cost
                sign = true
            }
        }
        if sign == false {
            products.append(component)
        }
    }
    
    
    func showInfo(){
        for i in products {
            i.printproducts()
        }
    }
    func showInfoshop(){
        print("Shop_name - \(shop_name). Square - \(square). Location - \(location). Opening_hours - \(opening_hours). ")
        }
    
}
