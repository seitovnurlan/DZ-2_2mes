//  Products.swift

import Foundation

class Products {
    var name: String         //Наименование товара
    var sum: Int             //Количество товара
    var cost: Int            //Стоимость
    
    init(name: String, sum: Int, cost: Int) {
        self.name = name
        self.sum = sum
        self.cost = cost
    }
    
    func printproducts(){
        
        print(" Name - \(name). sum - \(sum). Cost - \(cost).")
    }
}
