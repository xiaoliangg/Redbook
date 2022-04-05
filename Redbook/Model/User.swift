//
//  User.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import Foundation

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageURL: String
    var image: URLImageView {
        URLImageView(urlString: imageURL)
    }
}
