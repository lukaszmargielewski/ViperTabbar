//
//  ModuleHelp.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

// -------------------
// -- MARK: Protocols
// -------------------

protocol ModuleHelpDelegate : class {
    func closeHelp()
}

// -- MARK: Builder:

protocol ModuleHelpBuilder {
    func buildModule(delegate: ModuleHelpDelegate) -> UIViewController?
}

// -- MARK: View Model

// ???: Is class enought (or better?) or should it be declared as protocol first?
class ModuleHelpViewModel {
    
    var title               : String
    var text                : String
    
    required init(title: String, text: String) {
        
        self.title  = title
        self.text   = text
    }
}


// -- MARK: Presenter

protocol ModuleHelpPresenter {
    
    unowned var viewModel   : ModuleHelpViewModel    {get}
    unowned var view        : ModuleHelpView         {get}
    unowned var delegate    : ModuleHelpDelegate     {get}
    
    init(viewModel : ModuleHelpViewModel, view: ModuleHelpView, delegate: ModuleHelpDelegate)
    
    func closeHelp()
}


// -- MARK: View

protocol ModuleHelpView : class {
    
    var presenter   : ModuleHelpPresenter?   {get}
    var viewModel   : ModuleHelpViewModel    {get}
    
    init(viewModel : ModuleHelpViewModel)
    
    func refreshDisplay()
}