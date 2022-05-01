//
//  Language.swift
//  Redbook
//
//  Created by yl on 2022/5/2.
//

import Foundation

enum Language: String {

    case zhHans = "zh-Hans"
    case english_us = "en"
    
    var userSymbol: String {
        switch self {
        case .english_us:
            return "us"
        default:
            return rawValue
        }
    }
}
