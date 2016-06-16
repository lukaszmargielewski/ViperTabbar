//
//  LadyBird.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

// !!! - Just plain dummy, mnimum, not fully VIPER module.
// !!! - See 'Piggy' module for full VIPER modul example.

class LadyBirdDefaultBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {
    
        let vc = LadyBirdView.init()
        vc.title = "Lady bird"
        
        let image = UIImage.init(named: "ladybird_filled-50")
        vc.tabBarItem.image = image
        
        return UINavigationController.init(rootViewController: vc)
    }
}