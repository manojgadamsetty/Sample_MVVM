//
//  AppDelegate.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: MovieViewController())
        window?.makeKeyAndVisible()
        return true
    }

}

