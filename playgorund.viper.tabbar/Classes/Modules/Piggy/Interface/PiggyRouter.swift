//
//  PiggyRouter.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

protocol PiggyRouter {
    
    // Router needs (required?) reference to the module's UIViewController to do its routing job.
    unowned var viewController : UIViewController {get}
    
    func showHelpModule(delegate: ModuleHelpDelegate)
    func closeHelpModule()
}
