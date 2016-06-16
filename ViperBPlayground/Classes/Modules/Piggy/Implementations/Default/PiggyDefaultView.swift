//
//  PiggyViewController.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import UIKit

class PiggyDefaultView: UIViewController, PiggyView {

    var presenter : PiggyPresenter?
    var viewModel : PiggyViewModel
    
    var statusLabel : UILabel?
    
    required init(viewModel: PiggyViewModel) {
    
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.refreshDisplay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        self.view = UIView.init()
        self.statusLabel = UILabel.init()
        self.statusLabel?.numberOfLines = 0
        self.statusLabel?.lineBreakMode = .ByWordWrapping
        self.view.addSubview(self.statusLabel!)
        
        // TODO: Use SnapKit for Auto Layout
        
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem.init(barButtonSystemItem: .Refresh, target: self, action: #selector(refresh))
        self.navigationItem.leftBarButtonItem   = UIBarButtonItem.init(title: "Help", style: .Done, target: self, action: #selector(showHelp))
        
        self.updateLayout()
    }
    
    override func viewDidLoad() {
        self.refreshDisplay()
    }
    
    
    // -- MARK: Private:
    
    func refresh(sender: UIBarButtonItem) {
        self.presenter?.refreshStatus()
    }
    
    func showHelp(sender: UIBarButtonItem) {
        self.presenter?.showHelp()
    }
    
    func updateLayout() {
        // TODO: Use Auto Layout (native, SnapKit, etc...)
        self.statusLabel?.frame = CGRect.init(x: 30, y: 94, width: 280, height: 100)
    }
    
    
    // -- MARK: Protocol imlemetation:
    
    // TODO: Another strategy is to set up straighforward bindings between UI and viewModel properties
    func refreshDisplay() {
    
        self.title                  = self.viewModel.title
        self.view.backgroundColor   = self.viewModel.backgroundColor
        self.statusLabel?.text      = self.viewModel.refreshStatusText
        self.statusLabel?.textColor = self.viewModel.textColor
        self.tabBarItem.image       = self.viewModel.iconForTabbar
    }
}
