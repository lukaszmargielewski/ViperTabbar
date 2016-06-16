//
//  PiggyViewModel.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

// ???: Is class enought (or better?) or should it be declared as protocol first?
class PiggyViewModel {
    
    var title               : String
    var refreshStatusText   : String
    var backgroundColor     : UIColor
    var textColor           : UIColor
    var iconForTabbar       : UIImage?
    
    required init(title: String, refreshStatusText: String, backgroundColor: UIColor, textColor: UIColor) {
        
        self.title              = title
        self.refreshStatusText  = refreshStatusText
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
    }
}