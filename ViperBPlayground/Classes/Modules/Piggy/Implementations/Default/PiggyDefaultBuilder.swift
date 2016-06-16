//
//  PiggyBuilder.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class PiggyDefaultBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {

        let viewModel   = self.buildViewModel()
        
        let view        = PiggyDefaultView.init(viewModel: viewModel)
        let interactor  = PiggyDefaultInteractor()
        let router      = PiggyDefaultRouter.init(viewController: view)
        let presenter   = PiggyDefaultPresenter.init(viewModel: viewModel, interactor: interactor, router: router)
        
        // To hold & retain  everything together:
        view.presenter = presenter
        return UINavigationController.init(rootViewController: view)
    }
    
    // -- MARK: Private
    
    func buildViewModel() -> PiggyViewModel {
        
        let viewModel = PiggyViewModel.init(title: "Piggy",
                                refreshStatusText: "Press refresh to get status updates for our little piggy.",
                                backgroundColor: UIColor.whiteColor(),
                                textColor: UIColor.lightGrayColor())
        
        let icon = UIImage.init(named: "pig_filled-50")
        viewModel.iconForTabbar = icon
        
        return viewModel
    }
}