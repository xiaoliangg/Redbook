//
//  ContentView.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainCollectionPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // yltodo 全局更新系统语言。 AboutMePage.swift
//            .environment(\.locale, .init(identifier: identifier))
    }
}
