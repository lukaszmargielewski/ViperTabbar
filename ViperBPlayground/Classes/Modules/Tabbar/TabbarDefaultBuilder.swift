//
//  ModuleTabbarBuilder.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleTabbarBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {

        let tabbarController = UITabBarController.init()
        
        let modules : [ModuleBuilder] = [PiggyDefaultBuilder(), LadyBirdDefaultBuilder()]
        
        let viewControllers = modules.map {(module) -> UIViewController in
        
            return module.buildModule()!
        }
        
        tabbarController.viewControllers = viewControllers
        return tabbarController
    }
}