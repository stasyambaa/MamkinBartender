//
//  Model.swift
//  Мамкин Бармен
//
//  Created by Станислав Шапетько on 16.04.2022.
//

import Foundation
import UIKit

let cocktailsArray: [Cocktail] = [Cocktail(name: "Маргарита", alco: [.tequila, .trippleSec], method: .shake, image: UIImage(named: "Маргарита")!), Cocktail(name: "Негрони", alco: [.gin, .sweetVermout, .campari], method: .stir, image: UIImage(named: "Негрони")!)]

enum Method {
    case build
    case stir
    case shake
    case blade
}

enum Alco {
    case tequila
    case trippleSec
    case bourbon
    case bitterAngostura
    case sweetVermout
    case gin
    case campari
}

struct Cocktail {
    let name: String
    let alco: [Alco]
    let method: Method
    let image: UIImage
}


