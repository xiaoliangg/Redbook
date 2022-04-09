//
//  MainCollectionPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct MainCollectionPage: View {
    @State private var selection: Tab = .main

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
                    Label(I18N.mainPage, systemImage: "star")
//                        .foregroundColor(.red)
                }
                .tag(Tab.main)
            
            ShoppingPage()
                .tabItem {
                    Label(I18N.shopping, systemImage: "bag")
                }
                .tag(Tab.shopping)
            
            addNewPage()
                .tabItem {
                    Label(I18N.addNew, systemImage: "plus")
                }
                .tag(Tab.addNew)
            
            MessagePage()
                .tabItem {
                    Label(I18N.message, systemImage: "message")
                }
                .tag(Tab.message)
            
            AboutMePage()
                .tabItem {
                    Label(I18N.aboutMe, systemImage: "person.crop.circle")
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
