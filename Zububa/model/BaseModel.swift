//
//  BaseModel.swift
//  Zububa
//
//  Created by Mac on 3/18/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class BaseModel : NSObject{
    var code : String
    var creationDate : CLong
    
    init(creationDate : CLong) {
        self.code = "must be random unique"
        self.creationDate = creationDate
    }
}
