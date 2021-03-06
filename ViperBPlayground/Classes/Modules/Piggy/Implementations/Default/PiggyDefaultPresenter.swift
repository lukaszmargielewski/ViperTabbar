//
//  PiggyDefaultPresenter.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation

class PiggyDefaultPresenter : PiggyPresenter, ModuleHelpDelegate {
    
            var router      : PiggyRouter
            var interactor  : PiggyInteractor
    unowned var viewModel   : PiggyViewModel
    
    required init(viewModel : PiggyViewModel, interactor: PiggyInteractor, router: PiggyRouter) {
    
        self.router     = router
        self.viewModel  = viewModel
        self.interactor = interactor
    }
    
    func refreshStatus() {
    
        // Example action using Interactor (data related stuff):
        
        // This could easily be asynchronyous:
        let data = self.interactor.getSomeData(nil)
        self.updateViewModelWithData(data)
    }
    
    func showHelp() {
        
        // Example action using Router (navigation related stuff):
        self.router.showHelpModule(self)
    }
    
    // -- MARK: PiggyHelpDelegate
    
    func closeHelp() {
        self.router.closeHelpModule()
    }

    // -- MARK: Private
    
    func updateViewModelWithData(data: Piggy) {
        
        let textColorName   = (data.error == true)  ? "yellow"  : "black"
        let bgColorName     = (data.error == true)  ? "red"     : "white"
        
        self.viewModel.refreshStatusText    = data.statusData
        self.viewModel.backgroundColorName  = bgColorName
        self.viewModel.textColorName        = textColorName
    }
}