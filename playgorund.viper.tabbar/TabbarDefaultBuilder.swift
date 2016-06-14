//
//  TabbarDefaultBuilder.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class TabbarDefaultBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {

        let tabbarController = TabbarDefaultViewController.init()
        
        let router      = TabbarDefaultRouter.init(modules: [ModuleOneBuilder(), ModuleTwoBuilder()])
        let presenter   = TabbarDefaultPresenter.init(router: router)
        
        tabbarController.presenter = presenter
        let viewControllers = router.modules.map {(module) -> UIViewController in
        
            return module.buildModule()!
        }
        
        tabbarController.viewControllers = viewControllers
        return tabbarController
    }
}