//
//  FileInfo.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import Foundation
import SwiftUI

struct FileInfo: Hashable, Codable, Identifiable {
    var id: Int
    var fileURL: String
    var created_at: String
    var user: User
    var musicURL: String
    var title: String
    var text: String
    var labels: [String]
    var position: String
    var likes: Int
    var imageURL: String
//    var ceshi: String // JSONDecoder 在解析字符串时,对于接受对象的所有属性,字符串都有对应值，否则会报错。如，这里新增一个测试字段，启动时就会报错
    var type:Int //1-视频,2-直播,3-图片
    
    var image: URLImageView {
        URLImageView(urlString: imageURL)
    }
//    var image: Image {
//        Image(imageURL)
//    }
}
