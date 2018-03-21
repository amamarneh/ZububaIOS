//
//  FBApi.swift
//  Zububa
//
//  Created by Mac on 3/21/18.
//  Copyright © 2018 amarnehSoft. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FBApi : API{
    
    func getFBRef() -> DatabaseReference {
        fatalError("Subclasses need to implement the `getFBRef()` method.")
//        return Database.database().reference().child("babies").child("zububa").child("approved")
    }
    
    func getBeanFromDictionary(d : NSDictionary)->NSObject{
                fatalError("Subclasses need to implement the `getBeanFromDictionary()` method.")
//        return NSObject()
    }
    
    func getDictionaryFromBean(bean : NSObject)->NSDictionary{
                fatalError("Subclasses need to implement the `getDictionaryFromBean()` method.")
//        return ["name":"test name","age":12]
    }
    
    
    func deleteAll(callBack : ICompleteCallBack){
        delete(ref: getFBRef(), callBack: callBack)
    }
    
    func delete(code: String, callBack: ICompleteCallBack) {
        delete(ref: getFBRef().child(code),callBack : callBack)
    }
    
    func delete(ref : DatabaseReference , callBack : ICompleteCallBack){
        ref.removeValue(){ error, _ in
            if(error == nil){
                callBack.completed(success: true)
            }else{
                callBack.completed(success: false)
            }
        }
    }
    
    func saveItem<T>(code: String, item: T, callBack: ICompleteCallBack) {
        getFBRef().child(code).setValue(getDictionaryFromBean(bean: item as! NSObject)) { (error, ref) -> Void in
            if(error == nil){
                callBack.completed(success: true)
            }else{
                callBack.completed(success: false)
            }
        }
    }
    
    
    func getList(callBack: ICallBack) {
        getFBRef().observeSingleEvent(of: .value, with: { (snapshot) in
            var list = [NSObject]()
            if let snaps = snapshot.children.allObjects as? [DataSnapshot] {
                for snap in snaps{
                    let d = snap.value as? NSDictionary
                    let bean = self.getBeanFromDictionary(d: d!)
                    list.append(bean)
                }
                callBack.onResponse(list: list)
            }else{
//                print("value is not an array of dictionary")
                callBack.onError(err: "value is not an array of dictionary")
            }
        }) { (error) in
            print(error.localizedDescription)
            callBack.onError(err: error.localizedDescription)
        }
    }
}
