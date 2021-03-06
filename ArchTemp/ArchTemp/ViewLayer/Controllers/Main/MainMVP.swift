//
//  MainMVP.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

class MainMVP: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewControllers = [HomeP.instantiate(fromAppStoryboard: .main),
                                MostPopularP.instantiate(fromAppStoryboard: .places)]
        self.tabBar.items?[0].title = R.string.localizable.home.key.localized//"_Home"
        self.tabBar.items?[1].title = R.string.localizable.mostPopular.key.localized//"_Most Popular"
        

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
