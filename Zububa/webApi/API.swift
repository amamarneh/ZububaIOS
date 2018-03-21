//
//  API.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
protocol API {
    func getList(callBack : ICallBack)
    func saveItem<T>(code:String,item:T,callBack:ICompleteCallBack)
    func delete(code:String,callBack:ICompleteCallBack)
    func deleteAll(callBack: ICompleteCallBack)
}
