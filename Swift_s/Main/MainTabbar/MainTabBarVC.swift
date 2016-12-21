//
//  MainTabBarVC.swift
//  Swift_s
//
//  Created by 薛坤龙 on 2016/12/2.
//  Copyright © 2016年 sigboat. All rights reserved.
//

import UIKit

class MainTabBarVC: BaseTabBarViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad();
        
        let firstVC = FirstVC();
        let navFirstVC = UINavigationController(rootViewController: firstVC);
        navFirstVC.tabBarItem.title = "swift";
        
        
        let setVC = SettingVC();
        let navSetVC = UINavigationController(rootViewController: setVC);
        navSetVC.tabBarItem.title = "settring";
        
        let items = [navFirstVC,navSetVC];
        self.viewControllers = items;
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning();
     
    }

}
