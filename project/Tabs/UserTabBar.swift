//
//  UserTabBar.swift
//  project
//
//  Created by cnsMac04 on 12/18/18.
//  Copyright © 2018 cnsMac04. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SideMenu

class UserTabBar : ButtonBarPagerTabStripViewController {
    
    //XLPagerStrip
     let blueInstagramColor = UIColor(red: 37/255.0, green: 111/255.0, blue: 206/255.0, alpha: 1.0)
    
    @IBOutlet weak var scrollVw: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //XLPAGERSTRIP settings
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = blueInstagramColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.blueInstagramColor
        }
        super.viewDidLoad()

        setupSideMenu()
    }
    
    @IBAction func loginAction(_ sender: Any) {
       
      
        
    }
    //MARK: XLPAGERSTRIP
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let story1 = UIStoryboard(name: "Main", bundle: nil)
        let child_1=story1.instantiateViewController(withIdentifier: "FirstTabVC")
        let story2 = UIStoryboard(name: "Main", bundle: nil)
        let child_2=story2.instantiateViewController(withIdentifier: "SecondTabVC")
        
        return [child_1, child_2]
    }
    
     //MARK: SIDE MENU
    
    fileprivate func setupSideMenu() {
        // Define the menus
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        
        SideMenuManager.default.menuRightNavigationController = nil
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
//        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        // Set up a cool background image for demo purposes
        SideMenuManager.default.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        // Setting
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuPresentMode = SideMenuManager.MenuPresentMode(rawValue: 0)!
        
        
    }
}

extension UserTabBar: UISideMenuNavigationControllerDelegate {
    
    func sideMenuWillAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing! (animated: \(animated))")
    }
    
    func sideMenuDidAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared! (animated: \(animated))")
    }
    
    func sideMenuWillDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing! (animated: \(animated))")
    }
    
    func sideMenuDidDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared! (animated: \(animated))")
    }
    
}
