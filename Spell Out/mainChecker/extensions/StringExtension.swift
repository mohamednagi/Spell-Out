//
//  StringExtension.swift
//  Spell Out
//
//  Created by Nagiz on 4/27/20.
//  Copyright © 2020 Nagiz. All rights reserved.
//

import Foundation

extension String {
    // converting string into number format
    var numberValue:NSNumber? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.number(from: self)
    }
}
