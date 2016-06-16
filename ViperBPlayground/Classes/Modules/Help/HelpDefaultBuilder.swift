//
//  ModuleHelpBuilder.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

class ModuleHelpDefaultBuilder: ModuleHelpBuilder {
    
    func buildModule(delegate: ModuleHelpDelegate) -> UIViewController? {

        let viewModel   = ModuleHelpViewModel.init(title: "Help", text: "Example help text")
        
        let view        = ModuleHelpDefaultView.init(viewModel: viewModel)
        let presenter   = ModuleHelpDefaultPresenter.init(viewModel: viewModel, view: view, delegate: delegate)
        
        // To hold & retain  everything together:
        view.presenter = presenter
        return UINavigationController.init(rootViewController: view)
    }
}