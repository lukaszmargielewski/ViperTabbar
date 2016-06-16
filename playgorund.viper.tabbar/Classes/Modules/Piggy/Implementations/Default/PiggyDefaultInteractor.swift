//
//  PiggyDefaultInteractor.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation

class PiggyDefaultInteractor: PiggyInteractor {
    
    var counter = 0
    
    func getSomeData(parameters: [String:AnyObject]?) -> Piggy {
        counter += 1
        let errorFlag = (counter % 2 == 0) ? true : false
        let statusData = (errorFlag == true) ? "Error example \(counter) data status" : "Example \(counter) data status"
        return Piggy(error: errorFlag, statusData: statusData)
    }
}
