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
    
    func refreshStatus()
    func showHelp()
}