//
//  ModuleHelpDefaultPresenter.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleHelpDefaultPresenter : ModuleHelpPresenter {
    
    unowned var viewModel   : ModuleHelpViewModel
    unowned var view        : ModuleHelpView
    unowned var delegate    : ModuleHelpDelegate
    
    required init(viewModel : ModuleHelpViewModel, view: ModuleHelpView, delegate: ModuleHelpDelegate) {

        self.viewModel  = viewModel
        self.view       = view
        self.delegate   = delegate
    }
    
    func closeHelp() {
        self.delegate.closeHelp()
    }
}