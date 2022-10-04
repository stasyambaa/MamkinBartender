//
//  Resourses.swift
//  MamkinBartender
//
//  Created by Станислав Шапетько on 04.10.2022.
//

import UIKit

enum Resourses {
    enum Colours {
        static var active = #colorLiteral(red: 0.2394288182, green: 0.2394288182, blue: 0.2394288182, alpha: 1)
        static var inactive = #colorLiteral(red: 0.3867658973, green: 0.3867658973, blue: 0.3867658973, alpha: 1)
        static var background = UIColor.white
        
        static var separator = #colorLiteral(red: 0.2394288182, green: 0.2394288182, blue: 0.2394288182, alpha: 1)
    }
    
    enum Strings {
        enum TabBar {
            static var home = "Home"
            static var favorites = "Favorites"
            static var search = "Search"
        }
    }
    
    enum Images {
        enum TabBar {
            static var home = UIImage(named: "home")
            static var favorites = UIImage(named: "favorites")
            static var search = UIImage(named: "search")
        }
    }
}
