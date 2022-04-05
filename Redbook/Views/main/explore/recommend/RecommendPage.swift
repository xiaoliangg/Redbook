//
//  RecommendPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct RecommendPage: View {
    let fileInfos: [FileInfo]

    init(){
        fileInfos = ModelData().fileInfos
    }
    var body: some View {
        List {
            ForEach(fileInfos) { fileInfo in
                FileItem(fileInfo: fileInfo)
            }
        }
    }
}

struct RecommendPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendPage()
    }

}
