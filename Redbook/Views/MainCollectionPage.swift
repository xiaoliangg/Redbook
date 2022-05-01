//
//  MainCollectionPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct MainCollectionPage: View {
    @State private var selection: Tab = .main

    @AppStorage("language")
    private var language = LocalizationService.shared.language
    
    enum Tab {
        case main
        case shopping
        case addNew
        case message
        case aboutMe
    }
    
    // 图标暂时使用 sf symbols
    var body: some View {
        TabView(selection: $selection) {
            MainPage()
                .tabItem {
                    Label("MainPage".localized(language), systemImage: "star")
//                        .foregroundColor(.red)
                }
                .tag(Tab.main)
            
            ShoppingPage()
                .tabItem {
                    Label("Shopping".localized(language), systemImage: "bag")
                }
                .tag(Tab.shopping)
            
            addNewPage()
                .tabItem {
                    Label("AddNew".localized(language), systemImage: "plus")
                }
                .tag(Tab.addNew)
            
            MessagePage()
                .tabItem {
                    Label("Message".localized(language), systemImage: "message")
                }
                .tag(Tab.message)
            
            AboutMePage()
                .tabItem {
                    Label("AboutMe".localized(language), systemImage: "person.crop.circle")
                }
                .tag(Tab.aboutMe)
            
        }

    }
}

struct MainCollectionPage_Previews: PreviewProvider {
    static var previews: some View {
        MainCollectionPage()
    }
}
