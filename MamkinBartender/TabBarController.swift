//
//  TabBarController.swift
//  MamkinBartender
//
//  Created by Станислав Шапетько on 04.10.2022.
//

import UIKit

enum Tabs: Int {
    case home
    case favorites
    case search
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resourses.Colours.active
        tabBar.barTintColor = Resourses.Colours.inactive
        tabBar.backgroundColor = Resourses.Colours.background
        
        tabBar.layer.borderColor = Resourses.Colours.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let homeController = UIViewController()
        let favoritesController = UIViewController()
        let searchController = UIViewController()
        
        let homeNavigationController = UINavigationController(rootViewController: homeController)
        let favoritesNavigationController = UINavigationController(rootViewController: favoritesController)
        let searchNavigationController = UINavigationController(rootViewController: searchController)
        
        homeNavigationController.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.home,
                                                 image: Resourses.Images.TabBar.home,
                                                 tag: Tabs.home.rawValue)
        favoritesNavigationController.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.favorites,
                                                 image: Resourses.Images.TabBar.favorites,
                                                 tag: Tabs.favorites.rawValue)
        searchNavigationController.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.search,
                                                 image: Resourses.Images.TabBar.search,
                                                 tag: Tabs.search.rawValue)
        
        setViewControllers([homeNavigationController,
                            favoritesNavigationController,
                            searchNavigationController],
                           animated: false)
    }
}
