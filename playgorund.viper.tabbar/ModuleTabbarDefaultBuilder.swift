//
//  ModuleTabbarBuilder.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleTabbarBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {

        let tabbarController = ModuleTabbarViewController.init()
        
        let router      = ModuleTabbarRouter.init(modules: [ModuleOneDefaultBuilder(), ModuleTwoDefaultBuilder()])
        let presenter   = ModuleTabbarPresenter.init(router: router)
        
        tabbarController.presenter = presenter
        let viewControllers = router.modules.map {(module) -> UIViewController in
        
            return module.buildModule()!
        }
        
        tabbarController.viewControllers = viewControllers
        return tabbarController
    }
}