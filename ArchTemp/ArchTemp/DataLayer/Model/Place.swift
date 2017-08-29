//
//  Place.swift
//  ArchTemp
//
//  Created by 08APO0516 on 28/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation
import RealmSwift


class Place:Object {

    dynamic var urlPicture:String = ""
    dynamic var name:String = ""
    dynamic var country:String = ""
    
    var imgPicture:UIImage?
    
    // MARK: - Initializers
    convenience init(name: String, country:String, urlPicture: String) {

        self.init()
        self.name = name
        self.country = country
        self.urlPicture = urlPicture
    }

    override class func primaryKey() -> String? {
        return "name"
    }

    override class func indexedProperties() -> [String] {
        return ["name"]
    }

    override static func ignoredProperties() -> [String] {
        return ["imgPicture"]
    }
    
    func getImage(completion:((UIImage,Bool) -> Void)) {
        guard imgPicture == nil else {
            completion(self.imgPicture!,false)
            return
        }
        
        if let _data = NSData(contentsOf: URL(string: self.urlPicture)!) {
            self.imgPicture = UIImage(data: _data as Data)!
            completion(self.imgPicture!, true)
        }

    }
    
    
    
}
