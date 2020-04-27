//
//  MainCheckerController.swift
//  Spell Out
//
//  Created by Nagiz on 4/27/20.
//  Copyright © 2020 Nagiz. All rights reserved.
//

import UIKit

class MainCheckerController {
    var mainCheckerView = MainCheckerView()
    
    // detected written number to convert
    func detectNumber(number:NSNumber) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "ar_EG")
        let writtenNumber = formatter.string(from: number)
        mainCheckerView.numberReader.text = writtenNumber
    }
}
