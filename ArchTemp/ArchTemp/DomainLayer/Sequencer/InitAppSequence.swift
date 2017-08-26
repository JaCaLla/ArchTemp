//
//  InitAppSequence.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation

class  InitAppCoordinator {

    static let shared =  InitAppCoordinator()

    fileprivate let operationQueue = OperationQueue()

    init() {} //This prevents others from using the default '()' initializer for this class.

    func start() {

        self.regularInitialSequence()
    }

    func regularInitialSequence() {

        let presentMainAppOperation = PresentMainAppOperation()

        let operations = [presentMainAppOperation]

        operationQueue.addOperations(operations, waitUntilFinished: false)
    }

}
