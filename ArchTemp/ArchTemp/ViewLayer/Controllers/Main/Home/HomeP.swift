//
//  MostPopularP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class HomeP: UIViewController {
    
    // MARK: - Private attribues
    var homeV: HomeV?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupPresenter()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier ==  R.segue.homeP.homeV.identifier) {
            homeV = segue.destination as? HomeV
        }
    }
    
    // MARK: - Private/Internal
    
    func setupPresenter() {
        self.tabBarItem = UITabBarItem(title: "_Home",
                                       image: nil ,
                                       selectedImage:  nil)
    }
    
}
