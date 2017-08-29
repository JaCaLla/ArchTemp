//
//  AllViewsP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class PlaceDetailP: UIViewController {

    // MARK: - IBOutlet
    // @IBOutlet weak var registerV: RegisterV!
    
    // MARK: - Private attribues
    var placeDetailV: PlaceDetailV?

    override func viewDidLoad() {
        super.viewDidLoad()

     //   self.fetchAllPlaces()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         if (segue.identifier ==  R.segue.placeDetailP.placeDetailV.identifier) {
            placeDetailV = segue.destination as? PlaceDetailV
         }
    }
    
    // MARK: - Private/Internal
   
}
