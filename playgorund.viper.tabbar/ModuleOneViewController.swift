//
//  ModuleOneViewController.swift
//  playgorund.viper.tabbar
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import UIKit

class ModuleOneViewController: UIViewController, ModuleOneView {

    var presenter : ModuleOnePresenter?
    var viewModel : ModuleOneViewModel
    
    var statusLabel : UILabel?
    
    required init(viewModel: ModuleOneViewModel) {
    
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        self.view = UIView.init()
        self.statusLabel = UILabel.init(frame: CGRect.init(x: 30, y: 100, width: 200, height: 100))
        self.statusLabel?.numberOfLines = 0
        self.statusLabel?.lineBreakMode = .ByWordWrapping
        self.view.addSubview(self.statusLabel!)
        
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem.init(barButtonSystemItem: .Refresh, target: self, action: #selector(refresh))
        self.navigationItem.leftBarButtonItem   = UIBarButtonItem.init(title: "Help", style: .Done, target: self, action: #selector(info))
    }
    
    override func viewDidLoad() {
        self.setupLayout()
        self.setupBindings()
    }
    
    func setupLayout() {
        // TODO: Use SnapKit for Auto Layout
    }
    
    func setupBindings() {
        // TODO: One strategy is to set up straighforward bindings between UI and viewModel properties
    }
    
    func refresh(sender: UIBarButtonItem) {
        self.presenter?.refreshStatus()
    }
    
    func info() {
        self.presenter?.showHelp()
    }
}
