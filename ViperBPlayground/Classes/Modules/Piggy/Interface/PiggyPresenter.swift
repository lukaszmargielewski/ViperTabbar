//
//  PiggyPresenter.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation


protocol PiggyPresenter {
    
            var router      : PiggyRouter       {get set}
            var interactor  : PiggyInteractor   {get set}
    unowned var viewModel   : PiggyViewModel    {get} // Could be onwed or unowned here (I think).
    
    // ???: Should we declare initializer in protocol
    //      or is declaring non-optional property enought?
    
    init(viewModel : PiggyViewModel, interactor: PiggyInteractor, router: PiggyRouter)
    
    func refreshStatus()
    func showHelp()
}