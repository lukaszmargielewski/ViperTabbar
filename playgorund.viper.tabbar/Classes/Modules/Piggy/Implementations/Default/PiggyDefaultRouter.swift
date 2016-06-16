//
//  PiggyDefaultRouter.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class PiggyDefaultRouter : PiggyRouter {
    
    // Router needs (required?) reference to the module's UIViewController to do its routing job.
    unowned var viewController : UIViewController
    
    init(viewController : UIViewController) {
        
        self.viewController = viewController
    }
    
    func showHelpModule(delegate: ModuleHelpDelegate) {
        
        guard let viewController = ModuleHelpDefaultBuilder().buildModule(delegate) else {
            return
        }
        self.viewController.presentViewController(viewController, animated: true, completion: nil)
    }
    
    func closeHelpModule() {
        
        self.viewController.dismissViewControllerAnimated(true, completion: nil)
    }
}