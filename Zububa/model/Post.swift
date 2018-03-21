//
//  Post.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class Post : Uploadable{
    var title,imgUrl,content : String
    var type : Int
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,title:String,imgUrl:String,content:String,type:Int) {
        self.title = title
        self.imgUrl = imgUrl
        self.content = content
        self.type = type
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
