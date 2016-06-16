//
//  ModuleTabbarRouter.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleTabbarRouter: TabbarRouter {
    
    var modules : [ModuleBuilder]
    
    required init(modules: [ModuleBuilder]) {
        self.modules = modules
    }
    
    func routeToViewController(index: Int) -> UIViewController? {
        
        let module = self.modules[index]
        return module.buildModule()
    }
}