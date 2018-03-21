//
//  FBBaseModel.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
class FBBaseModel : BaseModel {
    
    func fromDictionary(_ d : NSDictionary)->BaseModel {
        let bean = BaseModel(creationDate: (d["creationDate"] as! CLong))
        bean.code = d["code"] as! String
        return bean
    }
    
    func toDictionary()->NSDictionary{
        return ["code":super.code, "creationDate":super.creationDate]
    }
}
