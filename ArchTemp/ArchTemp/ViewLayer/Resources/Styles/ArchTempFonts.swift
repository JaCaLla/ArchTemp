//
//  ArchTempFontSizes.swift
//  ArchTemp
//
//  Created by 08APO0516 on 23/09/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation
import UIKit

struct ArchTempFonts {
    
    struct MostPopular {
        static let PlaceCountryFont       = TextStyle.h20Book.font
        static let BoteUpButtonFont   = TextStyle.h36Book.font
    }
    
    struct LatestPlace {
        static let CountryFont  = TextStyle.h36Book.font
        static let PlaceFont =  TextStyle.h20Book.font
    }
}

enum TextStyle {
    case dynamic(style: UIFontTextStyle)
    case customBold (size: CGFloat)
    case customBoldItalic (size: CGFloat)
    case customBook (size: CGFloat)
    case customBookItalic (size: CGFloat)
    case customLight (size: CGFloat)
    case customLightItalic (size: CGFloat)
    case customMedium (size: CGFloat)
    case customMediumItalic (size: CGFloat)
    
}

enum TextStyleSize:Int {
    case h36 = 36
    case h20 = 20
}

extension TextStyle {
    
    static let body = TextStyle.dynamic(style: .body)
    //static let headline = TextStyle.customBold(size: 20, weight: UIFontWeightBold, height: 24, dropShadow: true)
    
    static let h36Bold = TextStyle.customBold(size: CGFloat(TextStyleSize.h36.rawValue))
    static let h20Bold = TextStyle.customBold(size: CGFloat(TextStyleSize.h20.rawValue))
    
    static let h36Book = TextStyle.customBook(size: CGFloat(TextStyleSize.h36.rawValue))
    static let h20Book = TextStyle.customBook(size: CGFloat(TextStyleSize.h20.rawValue))
    
    static let h36Light = TextStyle.customLight(size: CGFloat(TextStyleSize.h36.rawValue))
    static let h20Light = TextStyle.customLight(size: CGFloat(TextStyleSize.h20.rawValue))
    
    static let h36Medium = TextStyle.customMedium(size: CGFloat(TextStyleSize.h36.rawValue))
    static let h20Medium = TextStyle.customMedium(size: CGFloat(TextStyleSize.h20.rawValue))
    
    var font :UIFont {
        let font:UIFont?
        switch self {
        case let .dynamic(style):
            font = UIFont.preferredFont(forTextStyle: style)
        case let .customBold(size):
            font = UIFont(name: "GothamRounded-Bold", size: size)!
        case let .customBoldItalic(size):
            font = UIFont(name: "GothamRounded-BoldItalic", size: size)!
        case let .customBook(size):
            font = UIFont(name: "GothamRounded-Book", size: size)!
        case let .customBookItalic(size):
            font = UIFont(name: "GothamRounded-BookItalic", size: size)!
        case let .customLight(size):
            font = UIFont(name: "GothamRounded-Light", size: size)!
        case let .customLightItalic(size):
            font = UIFont(name: "GothamRounded-LightItalic", size: size)!
        case let .customMedium(size):
            font = UIFont(name: "GothamRounded-Medium", size: size)!
        case let .customMediumItalic(size):
            font = UIFont(name: "GothamRounded-MediumItalic", size: size)!        }
        
        guard let _ = font else {
            return UIFont.systemFont(ofSize: 20, weight: UIFontWeightBold)
        }
        
        return font!
    }
    
}
