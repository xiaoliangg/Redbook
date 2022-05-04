//
//  DataUtil.swift
//  Redbook
//
//  Created by yl on 2022/5/4.
//

import Foundation

class DataUtil {
    
    public static func get(key:String) ->String {
        guard let result = UserDefaults.standard.string(forKey: key) else {
            return ""
        }
        return result;
    }
    
    public static func set(key:String,value:String) {
        UserDefaults.standard.setValue(value, forKey: key)
    }

}
    
