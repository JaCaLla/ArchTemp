//
//  MainMVP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class HomeV: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.homeV.mostPopularP.identifier {
            
            _ = segue.destination as? MostPopularP
            
        } else if segue.identifier == R.segue.homeV.latestPlaceP.identifier {
            
            _ = segue.destination as? LatestPlaceP
        }
    }
}
