//
//  AppDelegate.swift
//  ArchTemp
//
//  Created by 08APO0516 on 22/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        InitAppCoordinator.shared.start()

        return true
    }

}
