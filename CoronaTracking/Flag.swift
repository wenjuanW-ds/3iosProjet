//
//  Flag.swift
//  CoronaTracking
//
//  Created by wenjuan wang on 22/03/2021.
//

import Foundation



func convertToEmoji(str: String) -> String {
    let lowercased = str.lowercased()
    guard lowercased.count == 2 else { return "" }
    let regionalIndicators = lowercased.unicodeScalars.map { UnicodeScalar($0.value + (0x1F1E6 - 0x61))! }
    return String(regionalIndicators.map { Character($0) })
}
