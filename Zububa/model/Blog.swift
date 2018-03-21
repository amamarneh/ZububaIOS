//
//  Blog.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Blog : Uploadable{
    var title,content,imgUrl : String
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,title:String,content:String,imgUrl:String) {
        self.title = title
        self.content = content
        self.imgUrl = imgUrl
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
