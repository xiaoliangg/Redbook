//
//  FIleItem.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct FileItem: View {
    var fileInfo: FileInfo

    var body: some View {
        VStack(alignment: .leading) {
            fileInfo.image
//                .renderingMode(.original)
//                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white, lineWidth: 4))
//                .shadow(radius: 7)
//                .padding(.top, 100)
            Text(fileInfo.title)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct FileItem_Previews: PreviewProvider {
    static var previews: some View {
        FileItem(fileInfo: ModelData().fileInfos[0])
    }
}

