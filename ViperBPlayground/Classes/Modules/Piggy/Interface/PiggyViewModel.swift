//
//  PiggyViewModel.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 16/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import Foundation
import UIKit

protocol PiggyViewModelDelegate {
    func viewModelDidChange()
}
// ???: Is class enought (or better?) or should it be declared as protocol first?
class PiggyViewModel {
    
    var delegate            : PiggyViewModelDelegate?
    
    var title               : String    { didSet {self.delegate?.viewModelDidChange() } }
    var refreshStatusText   : String    { didSet {self.delegate?.viewModelDidChange() } }
    var backgroundColor     : UIColor?  { didSet {self.delegate?.viewModelDidChange() } }
    var textColor           : UIColor?  { didSet {self.delegate?.viewModelDidChange() } }
    var iconForTabbar       : UIImage?  { didSet {self.delegate?.viewModelDidChange() } }
    
    var iconForTabbarName : String? {
        didSet {
            if let _ = iconForTabbarName {
                self.iconForTabbar = UIImage.init(named: iconForTabbarName!)
            } else {
                self.iconForTabbar = nil
            }
        }
    }
    
    var backgroundColorName : String   {
        didSet {
            self.backgroundColor = color(backgroundColorName)
        }
    }
    var textColorName      : String   {
        didSet {
            self.textColor = color(textColorName)
        }
    }
    
    required init(title: String, refreshStatusText: String, backgroundColorName: String, textColorName: String) {
        
        self.title                  = title
        self.refreshStatusText      = refreshStatusText
        self.backgroundColorName    = backgroundColorName
        self.textColorName          = textColorName
        
        // !!!: didSet does not work during initialization!:
        self.backgroundColor        = color(backgroundColorName)
        self.textColor              = color(textColorName)
    }

    // -- Private:
    
    func color(name: String) -> UIColor {
        
        var color = UIColor.whiteColor()
        
        switch name {
            
        case "white":
            color = UIColor.whiteColor()
        case "black":
            color = UIColor.blackColor()
        case "red":
            color = UIColor.redColor()
        case "blue":
            color = UIColor.blueColor()
        case "yellow":
            color = UIColor.yellowColor()
        case "gray":
            color = UIColor.grayColor()
        default:
            color = UIColor.whiteColor()
        }
        return color
    }
}