//
//  ModuleTwoViewController.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import UIKit

class ModuleTwoView: UIViewController {

    // This is dummy - please see ModuleOneViewController 
    // from Module One for 'correct & full' VIPER implementation
    
    override func loadView() {
        
        self.view = UIView.init()
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.greenColor()
    }
}