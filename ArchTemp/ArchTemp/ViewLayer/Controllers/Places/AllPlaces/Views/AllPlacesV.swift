//
//  MainMVP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class AllPlacesV: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var allPlacesHeaderV: AllPlacesHeaderV!
    
    
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
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let _placeViewCell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.placeViewCell.identifier)  else {
            return UITableViewCell()
        }
        
        _placeViewCell.textLabel?.text = allPlaces[indexPath.row].name
        allPlaces[indexPath.row].getImage(completion: { [weak self] (image, isRequeredReload) in
            guard let weakSelf = self else { return }
            DispatchQueue.main.async {
                _placeViewCell.imageView?.image = image
                if isRequeredReload {
                    weakSelf.refreshView()
                }
            }
        })
        return _placeViewCell
        
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.allPlacesHeaderV.place = self.allPlaces[indexPath.row]
    }
    
    
    // MARK: - Private/Internal
    func setupView() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
    }
    
    func refreshView() {
        
        if allPlaces.isEmpty == false {
            self.allPlacesHeaderV.place = self.allPlaces.first
        }
        
        self.tableView.reloadData()
    }
    
}
