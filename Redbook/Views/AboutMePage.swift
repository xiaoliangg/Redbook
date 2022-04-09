//
//  AboutMePage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct AboutMePage: View {
    @State var identifier = "en"

    var body: some View {
        VStack {
            Button("中文", action: {
                self.identifier = "zh-Hans"
            })
            Button("English", action: {
                self.identifier = "en"
            })
            Text("Test")
        }
        .environment(\.locale, .init(identifier: identifier))
    }
}

struct AboutMePage_Previews: PreviewProvider {
    static var previews: some View {
        AboutMePage()
    }
}
