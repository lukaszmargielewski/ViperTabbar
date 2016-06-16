//
//  PiggyView.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation

protocol PiggyView : class {
    
    var presenter   : PiggyPresenter?   {get}
    var viewModel   : PiggyViewModel    {get}
}