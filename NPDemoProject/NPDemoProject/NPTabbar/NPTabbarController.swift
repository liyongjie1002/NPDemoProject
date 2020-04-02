//
//  NPTabbarController.swift
//  NPDemoProject
//
//  Created by 李永杰 on 2020/4/2.
//  Copyright © 2020 NewPath. All rights reserved.
//

import UIKit
import CYLTabBarController
import NPHome
import NPMine

class NPTabbarController: CYLTabBarController {
 
    static func initWithContext() -> NPTabbarController {
        let tabBarVC = NPTabbarController(viewControllers: NPTabbarController.viewControllers(), tabBarItemsAttributes: NPTabbarController.tabBarItemsAttributesForController())
        return tabBarVC
    }
  
    static func viewControllers() -> [UINavigationController]{
        let home = NPNavigationController(rootViewController: NPHomeViewController())
        let mine = NPNavigationController(rootViewController: NPMineViewController())
        let viewControllers = [home, mine]
        return viewControllers
    }
    
    static func tabBarItemsAttributesForController() ->  [[String : String]] {
        
        let tabBarItemHome = [CYLTabBarItemTitle:"首页",
                             CYLTabBarItemImage:"",
                             CYLTabBarItemSelectedImage:""]
        let tabBarItemMine = [CYLTabBarItemTitle:"我的",
                              CYLTabBarItemImage:"",
                              CYLTabBarItemSelectedImage:""]
        let tabBarItemsAttributes = [tabBarItemHome, tabBarItemMine]
        return tabBarItemsAttributes
    }

}
