//
//  ModuleOneDefaultPresenter.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleOneDefaultPresenter : ModuleOnePresenter, ModuleHelpDelegate {
    
            var router      : ModuleOneRouter
            var interactor  : ModuleOneInteractor
    unowned var viewModel   : ModuleOneViewModel
    unowned var view        : ModuleOneView
    
    required init(viewModel : ModuleOneViewModel, view: ModuleOneView, interactor: ModuleOneInteractor, router: ModuleOneRouter) {
    
        self.router     = router
        self.viewModel  = viewModel
        self.view       = view
        self.interactor = interactor
    }
    
    func refreshStatus() {
    
        // Example action using Interactor (data related stuff):
        
        // This could easily be asynchronyous:
        let data = self.interactor.getSomeData(nil)
        self.updateViewModelWithData(data)
        self.view.refreshDisplay()
    }
    
    func showHelp() {
        
        // Example action using Router (navigation related stuff):
        self.router.showHelpModule(self)
    }
    
    // -- MARK: ModuleOneHelpDelegate
    
    func closeHelp() {
        self.router.closeHelpModule()
    }

    // -- MARK: Private
    
    func updateViewModelWithData(data: ModuleOneModel) {
        self.viewModel.refreshStatusText = data.statusData
        self.viewModel.backgroundColor   = (data.error == true) ? UIColor.redColor() : UIColor.whiteColor()
        self.viewModel.textColor         = (data.error == true) ? UIColor.yellowColor() : UIColor.blackColor()
        
    }
}