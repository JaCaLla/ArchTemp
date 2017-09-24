//
//  ArchTempColors.swift
//  ArchTemp
//
//  Created by 08APO0516 on 24/09/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation
import UIKit.UIColor

// App Colors

struct ArchTempColors {
    
    private struct Palette {
        static let Grey = UIColor(rgbaValue: 0x888888FF)
        static let Brown = UIColor(rgbaValue: 0xC48764ff)
        static let Crimsom = UIColor(rgbaValue: 0xce2124ff)
        static let Water = UIColor(rgbaValue: 0x5085DEff)
    }
    
    struct MostPopular {
        static let PlaceCountryFontColor   = ArchTempColors.Palette.Grey
        static let VoteUpButtonFontColor   = ArchTempColors.Palette.Brown
    }
    
    struct LatestPlace {
        static let CountryFontColor  = ArchTempColors.Palette.Crimsom
        static let PlaceFontColor    = ArchTempColors.Palette.Water
    }
}

typealias Color = UIColor

extension Color {
    convenience init(rgbaValue: UInt32) {
        let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
        let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
/*
enum ColorName {
    case Coffee
    case Water
    
    var rgbaValue: UInt32 {
        switch self {
        case .Coffee:
            return 0x321914
        case .Water:
            return 0xc48764
        }
    }
    
    var color: Color {
        return Color(named: self)
    }
}
// swiftlint:enable type_body_length

extension Color {
    convenience init(named name: ColorName) {
        self.init(rgbaValue: name.rgbaValue)
    }
}
*/
