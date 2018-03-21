//
//  GalleryItem.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class GalleryItem : Uploadable{
    var imgUrl,desc : String
    
    init(creationDate: CLong, macAddress: String, username: String, adminCode: String, approveDate: CLong,name:String,imgUrl:String,desc:String) {
        self.imgUrl = imgUrl
        self.desc = desc
        super.init(creationDate: creationDate, macAddress: macAddress, username: username, adminCode: adminCode, approveDate: approveDate)
    }
}
