//
//  AllPlacesHeaderV.swift
//  ArchTemp
//
//  Created by 08APO0516 on 28/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class AllPlacesHeaderV: UIView {

    // MARK: - IBOutlet
    @IBOutlet weak var imgPlace: UIImageView!

    // MARK: - Public attributes
    var place:Place?  {
        didSet {
            self.refreshView()
        }
    }
    
    // MARK: - Private/Internal
    func refreshView() {
        guard let _place = self.place else { return }
        
        _place.getImage { [weak self] (image, _ ) in
            guard let weakSelf = self else { return }
            DispatchQueue.main.async {
                weakSelf.imgPlace.clipsToBounds = true
                weakSelf.imgPlace.contentMode = .scaleAspectFill
                weakSelf.imgPlace.image = image
            }
        }
        
    }

}
