//
//  InitAppSequence.swift
//  ArchTemp
//
//  Created by 08APO0516 on 26/08/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import Foundation

class  PlacesUseCase {

    static let shared =  PlacesUseCase()

    func placeList() -> [Place] {

        return [Place(name: "Borobodour",
                      country: "Indonesia",
                      urlPicture: "https://pbs.twimg.com/media/DCDQU6YU0AA-R3-.jpg"),
                Place(name: "Gizeh",
                      country: "Egypt",
                      urlPicture: "https://i.ytimg.com/vi/Do3oFnaoYCM/hqdefault.jpg"),
                Place(name: "Grand Canyon",
                      country: "USA",
                      urlPicture: "https://www.nd.nl/Uploads/2017/5/----------------5.jpg")]
    }

}
