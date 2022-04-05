//
//  TwitterNavBarItem.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI
import PagerTabStripView

private class ButtonTheme: ObservableObject {
    @Published var textColor = Color.gray
}

struct MainNavBarItem: View, PagerTabViewDelegate {
    let title: String

    @ObservedObject fileprivate var theme = ButtonTheme()

    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(theme.textColor)
                .font(.subheadline)
        }
        .background(Color.clear)
    }

    // PagerTabViewDelegate的方法
    func setState(state: PagerTabViewState) {
        switch state {
        case .selected:
            self.theme.textColor = .blue
        case .highlighted:
            self.theme.textColor = .red
        default:
            self.theme.textColor = .gray
        }
    }
}

struct MainNavBarItem_Previews: PreviewProvider {
    static var previews: some View {
        MainNavBarItem(title: "Tweets")
    }
}
