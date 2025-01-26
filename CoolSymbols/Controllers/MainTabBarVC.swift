//
//  MainTabBarVC.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-24.
//

import UIKit

class MainTabBarVC: UITabBarController {
    override func viewDidLoad() {
        let browseSymbolsVC = BrowseSymbolsVC()
        browseSymbolsVC.tabBarItem = UITabBarItem(title: "Browse", image: UIImage(systemName: "eye.fill"), selectedImage: nil)
        let browseSymbolsNC = UINavigationController()
        browseSymbolsNC.pushViewController(browseSymbolsVC, animated: false)
        
        let settingVC = SettingVC()
        settingVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear.circle.fill"), selectedImage: nil)
        
        let AccountVC = UIViewController()
        AccountVC.tabBarItem = UITabBarItem(title: "Account", image: UIImage(systemName: "person.crop.circle.fill"), selectedImage: nil)
        
        let ShoppingVC = UIViewController()
        ShoppingVC.tabBarItem = UITabBarItem(title: "Shopping", image: UIImage(systemName: "bag.circle.fill"), selectedImage: nil)
        
        viewControllers = [AccountVC, browseSymbolsNC, ShoppingVC, settingVC]
    }
}
