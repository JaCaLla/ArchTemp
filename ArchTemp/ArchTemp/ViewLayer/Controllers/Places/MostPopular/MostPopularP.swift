//
//  MostPopularP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class MostPopularP: UIViewController {
    
    // MARK: - Private attribues
    var mostPopularV: MostPopularV?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       self.setupPresenter()
        self.fetchMostPopular()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if (segue.identifier ==  R.segue.mostPopularP.mostPopularV.identifier) {
            mostPopularV = segue.destination as? MostPopularV
            
        }
    }
    
    // MARK: - Private/Internal   
    func fetchMostPopular() {
        guard let _mostPopularV = self.mostPopularV else {
            return
        }
        _mostPopularV.place  =  PlacesUseCase.shared.mostPopular()
        
    }
    
    func setupPresenter() {
        self.tabBarItem = UITabBarItem(title: "_Popular",
                                       image: nil ,
                                       selectedImage:  nil)
    }
    
}
