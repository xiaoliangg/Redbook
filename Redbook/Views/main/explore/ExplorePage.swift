//
//  ExplorePage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//


import SwiftUI
import PagerTabStripView

struct ExplorePage: View {
    private var swipeGestureEnabled: Bool
    @State var selection = 0 // 默认显示第几个tab

    public init(swipeGestureEnabled: Bool = true) {
        self.swipeGestureEnabled = swipeGestureEnabled
    }

    var body: some View {
        PagerTabStripView(swipeGestureEnabled: swipeGestureEnabled, selection: $selection) {
            RecommendPage().pagerTabItem {
                // title的文字、颜色变化等设置
                MainNavBarItem(title: "推荐")
            }

            VideoPage().pagerTabItem {
                MainNavBarItem(title: "视频")
            }

            LivePage().pagerTabItem {
                MainNavBarItem(title: "直播")
            }
            
            FashionPage().pagerTabItem {
                MainNavBarItem(title: "时尚")
            }
            
            FoodPage().pagerTabItem {
                MainNavBarItem(title: "美食")
            }
        }
        .frame(alignment: .center)
        .pagerTabStripViewStyle(.scrollableBarButton(indicatorBarColor: .blue, tabItemSpacing: 15, tabItemHeight: 50))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
