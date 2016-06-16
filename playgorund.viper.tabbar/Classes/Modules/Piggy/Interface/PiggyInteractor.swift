//
//  PiggyInteractor.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation

protocol PiggyInteractor {
    
    // This could easily be asynchronyous:
    func getSomeData(parameters: [String:AnyObject]?) -> Piggy
}