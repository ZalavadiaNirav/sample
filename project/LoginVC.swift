//
//  LoginVC.swift
//  project
//
//  Created by cnsMac04 on 12/20/18.
//  Copyright © 2018 cnsMac04. All rights reserved.
//

import UIKit
import SideMenu
class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func moveToDashboard(_ sender: Any) {
        
        let objStory = UIStoryboard(name: "Main", bundle: nil)
        let objLeft = objStory.instantiateViewController(withIdentifier: "LeftMenuNavigationController")
        let appDelegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let objUserTab = objStory.instantiateViewController(withIdentifier: "rootNavigationVC")
        appDelegate.window?.rootViewController=objUserTab
       
        
//        SideMenuManager.default.menuLeftNavigationController = objLeft.navigationController as? UISideMenuNavigationController
//        
//        SideMenuManager.default.menuRightNavigationController = nil
//        
//        // Enable gestures. The left and/or right menus must be set up above for these to work.
//        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
//        //            SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        //            SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
//        ////
//        // Set up a cool background image for demo purposes
//        SideMenuManager.default.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "background")!)
//        
//        // Setting
//        SideMenuManager.default.menuFadeStatusBar = false
//        SideMenuManager.default.menuPresentMode = SideMenuManager.MenuPresentMode(rawValue: 0)!
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
