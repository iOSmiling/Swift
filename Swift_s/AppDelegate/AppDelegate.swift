//
//  AppDelegate.swift
//  Swift_s
//
//  Created by 薛坤龙 on 2016/11/14.
//  Copyright © 2016年 sigboat. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate
{

    var window: UIWindow?;

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        
        self.window = UIWindow(frame: UIScreen.main.bounds);
        let rootView = MainTabBarVC();
        self.window!.rootViewController=rootView;
        self.window!.makeKeyAndVisible();
        
        return true;
    }

    func applicationWillResignActive(_ application: UIApplication)
    {
        
   
    }

    func applicationDidEnterBackground(_ application: UIApplication)
    {
        
        
    }

    func applicationWillEnterForeground(_ application: UIApplication)
    {
       
    }

    func applicationDidBecomeActive(_ application: UIApplication)
    {
     
    }

    func applicationWillTerminate(_ application: UIApplication)
    {
     
    }

}

