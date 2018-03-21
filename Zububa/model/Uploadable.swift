//
//  Uploadable.swift
//  Zububa
//
//  Created by Mac on 3/18/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Uploadable : Uprovable {
    var macAddress, username : String
    
    init(creationDate:CLong,macAddress:String,username:String,adminCode:String,approveDate:CLong) {
        self.macAddress = macAddress
        self.username = username
        super.init(creationDate: creationDate, adminCode: adminCode, approveDate: approveDate)
    }
}
