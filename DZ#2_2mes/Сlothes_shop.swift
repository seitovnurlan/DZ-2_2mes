//  Сlothes_shop.swift

import Foundation
class Clothes_shop : Shop {
    var type_clothes: String             //тип одежды
    
    init(shop_name: String, square: Int, location: String, opening_hours: String, products: [Products], type_clothes: String) {
        self.type_clothes = type_clothes
        super.init(shop_name: shop_name, square: square, location: location, opening_hours: opening_hours, products: products)
    }
    
    override func add_prod(_ component: Products){
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
    
    
    override func showInfo(){
        for i in products {
            i.printproducts()
        }
    }
    override func showInfoshop(){
        print("Shop_name - \(shop_name). Square - \(square). Location - \(location). Opening_hours - \(opening_hours). Type clothes - \(type_clothes)")
        }
    
}
