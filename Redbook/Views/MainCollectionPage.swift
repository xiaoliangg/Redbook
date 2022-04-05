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
    
    var body: some View {
        TabView(selection: $selection) {
            MainPage()
                .tabItem {
                    Label("首页", systemImage: "star")
//                        .foregroundColor(.red)
                }
                .tag(Tab.main)
            
            ShoppingPage()
                .tabItem {
                    Label("购物", systemImage: "bag")
                }
                .tag(Tab.shopping)
            
            addNewPage()
                .tabItem {
                    Label("新增", systemImage: "plus")
                }
                .tag(Tab.addNew)
            
            MessagePage()
                .tabItem {
                    Label("消息", systemImage: "message")
                }
                .tag(Tab.message)
            
            AboutMePage()
                .tabItem {
                    Label("我", systemImage: "person.crop.circle")
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
