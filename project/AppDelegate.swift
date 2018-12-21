//
//  AppDelegate.swift
//  project
//
//  Created by cnsMac04 on 12/18/18.
//  Copyright © 2018 cnsMac04. All rights reserved.
//

import UIKit
import SideMenu

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
       
  
        if(true)
        {
            let objStory = UIStoryboard(name: "Main", bundle: nil)
            let objLogin = objStory.instantiateViewController(withIdentifier: "LoginVC")
            self.window?.rootViewController = objLogin
            self.window?.makeKeyAndVisible()
        }
        else
        {
            
            let objStory = UIStoryboard(name: "Main", bundle: nil)
            let objLeft = objStory.instantiateViewController(withIdentifier: "LeftMenuNavigationController")
            
            SideMenuManager.default.menuLeftNavigationController = objLeft.navigationController as? UISideMenuNavigationController
            
            SideMenuManager.default.menuRightNavigationController = nil
            
            // Enable gestures. The left and/or right menus must be set up above for these to work.
            // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
            //            SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
            //            SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
            ////
            // Set up a cool background image for demo purposes
            SideMenuManager.default.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "background")!)
            
            // Setting
            SideMenuManager.default.menuFadeStatusBar = false
            SideMenuManager.default.menuPresentMode = SideMenuManager.MenuPresentMode(rawValue: 0)!
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

