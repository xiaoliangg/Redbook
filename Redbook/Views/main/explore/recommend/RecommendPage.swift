//
//  RecommendPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct RecommendPage: View {
    let fileInfos: [FileInfo]
    var leftFileInfos:[FileInfo]{
        var r:[FileInfo] = []
        for(index,value) in fileInfos.enumerated() {
            if(index % 2 == 0){
                r.append(value)
            }
        }
        return r
    }
    var rightFileInfos:[FileInfo]{
        var r:[FileInfo] = []
        for(index,value) in fileInfos.enumerated() {
            if(index % 2 != 0){
                r.append(value)
            }
        }
        return r
    }
    
    init(){
        fileInfos = ModelData().fileInfos
    }
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .top){
                VStack(alignment: .center, spacing: 0) {
                    ForEach(leftFileInfos) { fileInfo in
                        FileItem(fileInfo: fileInfo)
                    }
                }
                VStack(alignment: .center, spacing: 0) {
                    ForEach(rightFileInfos) { fileInfo in
                        FileItem(fileInfo: fileInfo)
                    }
                }
            }
        }
        .frame(height: 600)
    }
}

struct RecommendPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendPage()
    }

}
