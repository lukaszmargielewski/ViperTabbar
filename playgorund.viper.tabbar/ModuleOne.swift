//
//  ModuleOne.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

// -------------------
// -- MARK: Protocols
// -------------------

// -- MARK: Router

protocol ModuleOneRouter {
    
    // Router needs (required?) reference to the module's UIViewController to do its routing job.
    unowned var viewController : UIViewController {get}
    func goToHelp()
}


// -- MARK: Model

struct ModuleOneModel {
    var error       : Bool // Just dummy flag (too lazy to wre down enum for this demo example ;-)
    var statusData : String
}


// -- MARK: Interactor

protocol ModuleOneInteractor {
    
    // This could easily be asynchronyous:
    func getSomeData(parameters: [String:AnyObject]?) -> ModuleOneModel
}

// -- MARK: View Model

// ???: Is class enought (or better?) or should it be declared as protocol first?
class ModuleOneViewModel {
    
            var title               : String
            var refreshStatusText   : String
            var backgroundColor     : UIColor
            var textColor           : UIColor
    
    required init(title: String, refreshStatusText: String, backgroundColor: UIColor, textColor: UIColor) {
    
        self.title              = title
        self.refreshStatusText  = refreshStatusText
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
    }
}


// -- MARK: Presenter

protocol ModuleOnePresenter {
    
            var router      : ModuleOneRouter       {get set}
            var interactor  : ModuleOneInteractor   {get set}
    unowned var viewModel   : ModuleOneViewModel    {get} // Could be onwed or unowned here (I think).
    
    // Is it possible to design viewModel that well so presenter is not even aware of the view?
    unowned var view        : ModuleOneView         {get}
    
    // ???: Should we declare initializer in protocol
    //      or is declaring non-optional property enought?
    
    init(viewModel : ModuleOneViewModel, view: ModuleOneView, interactor: ModuleOneInteractor, router: ModuleOneRouter)
    
    func refreshStatus()
    func showHelp()
}


// -- MARK: View

protocol ModuleOneView : class {
    
            var presenter   : ModuleOnePresenter?   {get}
            var viewModel   : ModuleOneViewModel    {get}
    
    // ???: Again - should we decalre initializer in protocol?
    init(viewModel : ModuleOneViewModel)
    
    func refreshDisplay()
}
