//
//  AboutMePage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct AboutMePage: View {
    @AppStorage("language")
    private var language = LocalizationService.shared.language
    
    
    var body: some View {
        VStack {
            Button("中文", action: {
                LocalizationService.shared.language = .zhHans
            })
            Button("English", action: {
                LocalizationService.shared.language = .english_us
            })
            // 只需在 Localizable.strings 声明即可直接使用
            Text("Test".localized(language))
        }
    }
}

struct AboutMePage_Previews: PreviewProvider {
    static var previews: some View {
        AboutMePage()
    }
}
