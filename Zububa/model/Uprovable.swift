//
//  Uprovable.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Uprovable : BaseModel {
    var adminCode: String
    var approveDate: CLong
    
    init(creationDate: CLong, adminCode:String,approveDate:CLong) {
        self.adminCode = adminCode
        self.approveDate = approveDate
        super.init(creationDate: creationDate)
    }
}
