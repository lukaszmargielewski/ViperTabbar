//
//  ModuleHelpViewController.swift
//  ViperBPlayground
//
//  Created by Lukasz Marcin Margielewski on 14/06/16.
//  Copyright © 2016 Lukasz Marcin Margielewski. All rights reserved.
//

import UIKit

class ModuleHelpDefaultView: UIViewController, ModuleHelpView {

    var presenter : ModuleHelpPresenter?
    var viewModel : ModuleHelpViewModel
    
    var textView : UITextView?
    
    required init(viewModel: ModuleHelpViewModel) {
    
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        self.view = UIView.init()
        self.textView = UITextView.init()
        self.textView?.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
        self.view.addSubview(self.textView!)
        
        // TODO: Use SnapKit for Auto Layout
        
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem.init(barButtonSystemItem: .Done, target: self, action: #selector(done))

        self.updateLayout()
    }
    
    override func viewDidLoad() {
        self.refreshDisplay()
    }
    
    
    // -- MARK: Private:
    
    func done(sender: UIBarButtonItem) {
        self.presenter?.closeHelp()
    }
    
    func updateLayout() {
        // TODO: Use Auto Layout (native, SnapKit, etc...)
        self.textView?.frame = self.view.bounds
    }
    
    
    // -- MARK: Protocol imlemetation:
    
    // TODO: Another strategy is to set up straighforward bindings between UI and viewModel properties
    func refreshDisplay() {
    
        self.title          = self.viewModel.title
        self.textView?.text = self.viewModel.text
    }
}
