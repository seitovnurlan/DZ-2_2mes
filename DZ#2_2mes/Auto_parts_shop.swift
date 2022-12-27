//  Auto_parts_shop.swift

import Foundation

class Auto_parts_shop : Shop {
    var type_auto: String             //тип авто
    
    init(shop_name: String, square: Int, location: String, opening_hours: String, products: [Products], type_auto: String) {
        self.type_auto = type_auto
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
        print("Shop_name - \(shop_name). Square - \(square). Location - \(location). Opening_hours - \(opening_hours). Auto type - \(type_auto)")
        }
    
}
