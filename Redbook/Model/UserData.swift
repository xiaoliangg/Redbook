//
//  UserData.swift
//  Redbook
//
//  Created by yl on 2022/5/4.
//

import Foundation

final class UserData: ObservableObject {
    @Published var currentUser: User = decodeJson(DataUtil.get(key: "userinfo"))
}

func decodeJson<T: Decodable>(_ srcString: String) -> T {
    var src = srcString;
    if(src == ""){
        // 注意转义字符的使用
//        src = "{\"name\":\"nameyl\"}"
        src = #"{"id":123,"name":"nameyl2","imageURL":"http:\\www.baidu.com"}"#
    }
    
    let data: Data = src.data(using: .utf8)!

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(srcString) as \(T.self):\n\(error)")
    }
}
