//
//  MainPage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        List{
            FollowPage()
            ExplorePage()
            NearbyPage()
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
