//
//  AllPlacesP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class AllPlacesP: UIViewController {

    // MARK: - IBOutlet
    // @IBOutlet weak var registerV: RegisterV!
    
    // MARK: - Private attribues
    var allPlacesV: AllPlacesV?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.fetchAllPlaces()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         if (segue.identifier ==  R.segue.allPlacesP.allPlacesV.identifier) {
            allPlacesV = segue.destination as? AllPlacesV
         }
    }
    
    // MARK: - Private/Internal
    func fetchAllPlaces() {
        guard let _allPlacesV = self.allPlacesV else {
            return
        }
        
        _allPlacesV.allPlaces =  PlacesUseCase.shared.placeList()
    }

}
