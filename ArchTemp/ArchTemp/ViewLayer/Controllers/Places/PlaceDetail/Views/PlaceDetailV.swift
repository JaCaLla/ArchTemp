//
//  MainMVP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class PlaceDetailV: UIViewController {
    
    // MARK: - IBOutlet
    // @IBOutlet weak var allViewsHeaderV: AllViewsHeaderV!
    
    
    // MARK: - Public attributes
    var allPlaces:[Place] = [] {
        didSet {
            self.refreshView()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }
    
   
    // MARK: - Private/Internal
    func setupView() {
        
        
        
       
    }
    
    func refreshView() {
        
        
    }

}
