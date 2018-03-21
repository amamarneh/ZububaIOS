//
//  Wedding.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Wedding : Uploadable{
    var personName,imgUrl,title,content : String
    var weddingDate: CLong
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,personName:String,imgUrl:String,title:String,content:String,weddingDate:CLong) {
        self.personName = personName
        self.imgUrl = imgUrl
        self.title = title
        self.content = content
        self.weddingDate = weddingDate
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
