
import Foundation

//Enum is the same as struct except we know all cases at runtime
//Enum should only be used when we know all the cases

struct CarModel {
    let brand: carBrandOption
    let model: String
}

struct CarBrand{
    let title: String
}

//Enums are stored in the memory the same way as struct but we cannot mutate a Enum

enum carBrandOption{
    case ford, toyota, honda
    
    //Using if else
    //    var title: String{
    //        if self == .ford{
    //            return "Ford"
    //        } else if self == .toyota{
    //            return "Toyota"
    //
    //        } else if self == .honda{
    //            return "Honda"
    //        }
    //        else{
    //            return "Default Value"
    //        }
    //    }
    //}
    
    //using switch case
    var title: String{
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
//        default:
//            return "Default"
        }
    }
}
//var car1: CarModel = CarModel(brand: "Toyota", model: "Corolla")
//var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
//var car3: CarModel = CarModel(brand: "Ford", model: "Fiesta")


//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "Toyota")
//var car1: CarModel = CarModel(brand: brand2, model: "Corolla")
//var car2: CarModel = CarModel(brand: brand1, model: "Focus")
//var car3: CarModel = CarModel(brand: brand1, model: "Fiesta")


var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Corolla")

var fordBrand: carBrandOption = .ford
print(fordBrand.title)
