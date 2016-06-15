//
//  ModuleTwo.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

// !!! - Just plain dummy, mnimum, not fully VIPER module.
// !!! - See 'Module One' (ModuleOne.swift) for full VIPER modul example.

class ModuleTwoDefaultBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {
    
        let vc = ModuleTwoView.init()
        vc.title = "Two"
        return UINavigationController.init(rootViewController: vc)
    }
}