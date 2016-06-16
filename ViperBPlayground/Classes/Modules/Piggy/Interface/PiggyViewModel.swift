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
    
    var title               : String    {didSet {self.delegate?.viewModelDidChange()}}
    var refreshStatusText   : String    {didSet {self.delegate?.viewModelDidChange()}}
    var backgroundColor     : UIColor   {didSet {self.delegate?.viewModelDidChange()}}
    var textColor           : UIColor   {didSet {self.delegate?.viewModelDidChange()}}
    var iconForTabbar       : UIImage?  {didSet {self.delegate?.viewModelDidChange()}}
    
    required init(title: String, refreshStatusText: String, backgroundColor: UIColor, textColor: UIColor) {
        
        self.title              = title
        self.refreshStatusText  = refreshStatusText
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
    }
}