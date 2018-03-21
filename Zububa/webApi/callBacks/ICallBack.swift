//
//  ICallBack.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
protocol ICallBack {
    func onResponse(list : [NSObject])
    func onError(err:String)
}
