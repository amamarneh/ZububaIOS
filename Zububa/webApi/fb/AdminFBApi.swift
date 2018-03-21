//
//  AdminFBApi.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class AdminFBApi : FBApi{
    override func getFBRef() -> DatabaseReference {
        return Database.database().reference().child(FBConstants.REF_USERS).child(FBConstants.VILLAGE_ZUBUBA).child(FBConstants.USER_ADMIN)
    }
    
}
