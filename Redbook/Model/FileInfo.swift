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
    var type:Int //1-视频,2-直播,3-图片
    
    var image: URLImageView {
        URLImageView(urlString: imageURL)
    }
//    var image: Image {
//        Image(imageURL)
//    }
}
