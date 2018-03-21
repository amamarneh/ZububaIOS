//
//  Like.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Like : BaseModel{
    var macAddress : String
    
    init(creationDate: CLong, macAddress: String) {
        self.macAddress = macAddress
        super.init(creationDate: creationDate)
    }
}
