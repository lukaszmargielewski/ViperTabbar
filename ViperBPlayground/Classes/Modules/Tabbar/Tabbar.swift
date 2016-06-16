//
//  TabbarModule.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit


// -- MARK: Router

protocol TabbarRouter {

    var modules : [ModuleBuilder] {get}
    init(modules: [ModuleBuilder])
    func routeToViewController(index: Int) -> UIViewController?
}

// -- MARK: Presenter

protocol TabbarPresenter {
    var router : TabbarRouter {get set}
    init(router: TabbarRouter)
}

// -- View:

protocol TabbarView {
    var presenter : TabbarPresenter? {get}
}