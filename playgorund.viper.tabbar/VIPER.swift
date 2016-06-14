//
//  VIPER.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit


// -- MARK: Builder

/**
 *    @brief Generic builder declaration:
 */
protocol ModuleBuilder {
    func buildModule() -> UIViewController?
}