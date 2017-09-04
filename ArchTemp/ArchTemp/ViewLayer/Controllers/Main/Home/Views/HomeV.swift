//
//  MainMVP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class HomeV: UIViewController {
    
    // MARK: - IBOutlet

    
    
    // MARK: - Public attributes
    
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.homeV.mostPopularP.identifier {
            
            let mostMopularP = segue.destination as? MostPopularP
            
        } else if segue.identifier == R.segue.homeV.latestPlaceP.identifier {
            
            let lastestPlace = segue.destination as? LatestPlaceP
        }
    }
    
    // MARK: - Private/Internal
    func setupView() {

    }
    
    func refreshView() {

    }
    
}
