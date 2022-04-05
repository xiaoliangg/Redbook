//
//  MainPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI
import PagerTabStripView

struct MainPage: View {
    private var swipeGestureEnabled: Bool
    @State var selection = 1 // 默认显示第几个tab

    public init(swipeGestureEnabled: Bool = true) {
        self.swipeGestureEnabled = swipeGestureEnabled
    }

    var body: some View {
        PagerTabStripView(swipeGestureEnabled: swipeGestureEnabled, selection: $selection) {
            FollowPage().pagerTabItem {
                // title的文字、颜色变化等设置
                MainNavBarItem(title: "关注")
            }

            ExplorePage().pagerTabItem {
                MainNavBarItem(title: "探索")
            }

            NearbyPage().pagerTabItem {
                MainNavBarItem(title: "附近")
            }
        }
        .frame(alignment: .center)
        .pagerTabStripViewStyle(.scrollableBarButton(indicatorBarColor: .blue, tabItemSpacing: 15, tabItemHeight: 50))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
