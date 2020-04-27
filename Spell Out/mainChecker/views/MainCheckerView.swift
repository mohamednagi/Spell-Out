//
//  ViewController.swift
//  Spell Out
//
//  Created by Nagiz on 4/27/20.
//  Copyright © 2020 Nagiz. All rights reserved.
//

import UIKit

class MainCheckerView: UIViewController {
    
    @IBOutlet weak var numberTF: UITextField!
    @IBOutlet weak var numberReader: UILabel!
    
    var mainCheckerController: MainCheckerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCheckerController = MainCheckerController()
        mainCheckerController.mainCheckerView = self
        
        // adding target func when textfield change 
        numberTF.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let stringNumber = numberTF.text {
            mainCheckerController.detectNumber(number: stringNumber.numberValue ?? 0)
        }
    }
}

