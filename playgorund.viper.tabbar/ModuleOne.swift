//
//  ModuleOne.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleOneBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {
        let vc = ModuleOneViewController.init()
        vc.title = "One"
        return UINavigationController.init(rootViewController: vc)
    }
}
