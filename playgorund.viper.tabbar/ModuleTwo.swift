//
//  ModuleTwo.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleTwoBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {
    
        let vc = ModuleTwoViewController.init()
        vc.title = "Two"
        return UINavigationController.init(rootViewController: vc)
    }
}


protocol ModuleTwoViewModel {
    
    var title : String {get set}
    var backgroundColor : UIColor {get set}
    
    init(title: String, backgroundColor: UIColor)
}

protocol ModuleTwoView {
    
    var viewModel : ModuleTwoViewModel {get}
    init(viewModel: ModuleTwoViewModel)
}