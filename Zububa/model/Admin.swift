//
//  Admin.swift
//  Zububa
//
//  Created by Mac on 3/18/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Admin : BaseModel{
    var username, password, fullName : String
    
    init(creationDate: CLong,username: String,password: String,fullName: String) {
        self.username = username
        self.password = password
        self.fullName = fullName
        super.init(creationDate: creationDate)
    }
}
