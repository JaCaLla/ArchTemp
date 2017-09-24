//
//  String.swift
//  ArchTemp
//
//  Created by 08APO0516 on 24/09/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation
import UIKit

extension String {
    var localized: String {
        
        if let _bundle = self.getCurrentBundle() {
            return NSLocalizedString(self,
                                     tableName: nil,
                                     bundle: _bundle,
                                     value: "",
                                     comment: "")
        } else {
            return ""
        }
    }
    
    // MARK: - Internal/Private
    private func getCurrentBundle() -> Bundle? {
        
        if let bundle = Bundle.main.path(forResource: self.getSelectedLocale(), ofType: "lproj") {
            return Bundle(path: bundle)!
        } else if let bundle = Bundle.main.path(forResource: "en", ofType: "lproj") {
            return Bundle(path: bundle)!
        }
        return nil
    }
    
    private func getSelectedLocale() -> String {
        
        let availableLocales:[String] = ["es-MX","ko"]
        
        let lang = Locale.preferredLanguages//returns array of preferred languages
        let languageComponents: [String : String] = Locale.components(fromIdentifier: lang[0])
        if let countryCode = languageComponents["kCFLocaleCountryCodeKey"],
            let languageCode: String = languageComponents["kCFLocaleLanguageCodeKey"] {
            let langCountryCode =  "\(languageCode)-\(countryCode)"
            return  (availableLocales.contains(langCountryCode)) ? langCountryCode : "en"
        } else if let languageCode: String = languageComponents["kCFLocaleLanguageCodeKey"] {
            return  (availableLocales.contains(languageCode)) ? languageCode : "en"
        }
        return "en"
    }
}
