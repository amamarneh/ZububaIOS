//
//  Village.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Village : BaseModel{
    var name : String
    
    init(creationDate: CLong, name:String) {
        self.name = name
        super.init(creationDate: creationDate)
    }
}
