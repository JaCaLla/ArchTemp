//
//  MostPopularP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class LatestPlaceP: UIViewController {
    
    // MARK: - Private attribues
    var latestPlaceV: LatestPlaceV?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fetchLatest()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier ==  R.segue.latestPlaceP.latestPlaceV.identifier) {
            latestPlaceV = segue.destination as? LatestPlaceV
        }
    }
    
    // MARK: - Private/Internal
    func fetchLatest() {
        guard let _latestPlaceV = self.latestPlaceV else {
            return
        }
        
        _latestPlaceV.place =  PlacesUseCase.shared.latest()
    }
    
}

