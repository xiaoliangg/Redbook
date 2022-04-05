//
//  URLImageView.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import Foundation
import SwiftUI

struct URLImageView: View {
    @ObservedObject var urlImageModel: URLImageModel
    @Environment(\.colorScheme) var colorScheme

    init(urlString: String?) {
        urlImageModel = URLImageModel(urlString: urlString)
    }

    var body: some View {
        Image(uiImage: urlImageModel.image ?? URLImageView.defaultImage!)
            .resizable()
            .foregroundColor(colorScheme == .dark ? .white : .black )
    }

    static var defaultImage = UIImage(named: "defaultImage")
}

