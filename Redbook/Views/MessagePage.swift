//
//  MessagePage.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

struct MessagePage: View {
    var body: some View {
        HStack{
            Text("Message Pageeeeeeeeee2!!")
                .frame(width: 150, height: 30, alignment: .leading)
                .truncationMode(.head) // 过长时截断头部
            Text("Message Pageeeeeeeeee2!!")
                .frame(width: 150, height: 30, alignment: .leading)
                .truncationMode(.tail) // 过长时截断尾部
        }
    }
}

struct MessagePage_Previews: PreviewProvider {
    static var previews: some View {
        MessagePage()
    }
}
