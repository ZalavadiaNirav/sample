//
//  FirstTabVC.swift
//  project
//
//  Created by cnsMac04 on 12/18/18.
//  Copyright © 2018 cnsMac04. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class FirstTabVC: UIViewController, IndicatorInfoProvider{

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IndicatorInfoProvider
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "First")
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
