//
//  TabBarViewController.swift
//  FiberNews
//
//  Created by zhubo on 16/3/14.
//  Copyright © 2016年 zhubo. All rights reserved.
//

import UIKit
import SwiftHEXColors


class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = UINavigationController(rootViewController: HomeViewController())
        let secondVC = UINavigationController(rootViewController: MapViewController())
        let thirdVC = UINavigationController(rootViewController: MessageViewController())
        let fourthVC = UINavigationController(rootViewController: MineViewController())
        
        let item1 = UITabBarItem(title: "首页", image: UIImage(named: "tb-home"), selectedImage: UIImage(named:"tb-home-select"))
        firstVC.tabBarItem = item1
        
        let item2 = UITabBarItem(title: "地图", image: UIImage(named: "tb-map"), selectedImage: UIImage(named:"tb-map-select"))
        secondVC.tabBarItem = item2
        
        let item3 = UITabBarItem(title: "消息", image: UIImage(named: "tb-msg"), selectedImage: UIImage(named:"tb-msg-select"))
        thirdVC.tabBarItem = item3
        
        let item4 = UITabBarItem(title: "我的", image: UIImage(named: "tb-mine"), selectedImage: UIImage(named: "tb-mine-select"))
        fourthVC.tabBarItem = item4
        
        self.viewControllers = [firstVC,secondVC,thirdVC,fourthVC]
        UITabBar.appearance().tintColor = UIColor(hexString: "3d9ccc")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
