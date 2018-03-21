//
//  Taxi.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Taxi : Uploadable{
    var name,phone,desc : String
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,name:String,phone:String,desc:String) {
        self.name = name
        self.phone = phone
        self.desc = desc
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
