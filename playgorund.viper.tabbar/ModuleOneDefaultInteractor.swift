//
//  ModuleOneDefaultInteractor.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 15/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation

class ModuleOneDefaultInteractor: ModuleOneInteractor {
    
    var counter = 0
    
    func getSomeData(parameters: [String:AnyObject]?) -> ModuleOneModel {
        counter += 1
        let errorFlag = (counter % 2 == 0) ? true : false
        let statusData = (errorFlag == true) ? "Error example \(counter+1) data status" : "Example \(counter+1) data status"
        return ModuleOneModel(error: errorFlag, statusData: statusData)
    }
}
