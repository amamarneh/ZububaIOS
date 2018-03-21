//
//  Comment.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Comment : Uploadable{
    var comment : String
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,comment:String) {
        self.comment = comment
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
