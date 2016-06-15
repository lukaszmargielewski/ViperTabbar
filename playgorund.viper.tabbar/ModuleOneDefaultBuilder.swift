//
//  ModuleOneBuilder.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleOneDefaultBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {

        let viewModel   = self.buildViewModel()
        
        let view        = ModuleOneDefaultView.init(viewModel: viewModel)
        let interactor  = ModuleOneDefaultInteractor()
        let router      = ModuleOneDefaultRouter.init(viewController: view)
        let presenter   = ModuleOneDefaultPresenter.init(viewModel: viewModel, view: view, interactor: interactor, router: router)
        
        // To hold & retain  everything together:
        view.presenter = presenter
        return UINavigationController.init(rootViewController: view)
    }
    
    // -- MARK: Private
    
    func buildViewModel() -> ModuleOneViewModel {
        
        let viewModel = ModuleOneViewModel.init(title: "One",
                                refreshStatusText: "Press refresh to get status updates",
                                backgroundColor: UIColor.whiteColor(),
                                textColor: UIColor.lightGrayColor())
        
        let icon = UIImage.init(named: "pig_filled-50")
        viewModel.iconForTabbar = icon
        
        return viewModel
    }
}