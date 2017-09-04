//
//  LatestPlaceV.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit
import MBProgressHUD

class LatestPlaceV: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imgPlace: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    
    
    
    // MARK: - Public attributes
    var place:Place?{
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
        guard let _place = self.place else { return }
        
        lblName.text = _place.name
        lblCountry.text = _place.country
        
        let spinnerActivity = MBProgressHUD.showAdded(to: imgPlace, animated: true)
        spinnerActivity.removeFromSuperViewOnHide = true
        spinnerActivity.bezelView.color = UIColor.clear
        spinnerActivity.bezelView.style = .solidColor
        _place.getImage { [weak self] (image, _ ) in
            guard let weakSelf = self else { return }
            DispatchQueue.main.async {
                spinnerActivity.hide(animated: true)
                weakSelf.imgPlace.clipsToBounds = true
                weakSelf.imgPlace.contentMode = .scaleAspectFill
                weakSelf.imgPlace.image = image
            }
        }
    }
    
}
