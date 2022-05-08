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
    var userInfo:User
    
    init(){
        userInfo = UserData().currentUser
    }

    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: UserEntity.entity(),sortDescriptors: [],animation: .default)
    private var userEntity: FetchedResults<UserEntity>
    @State
    private var newName = ""
    @State
    private var selectedUser:UserEntity? // 标记要编辑的表项；传递要编辑的表项到save()


    
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
            
            
            TextField("Add New", text: self.$newName).multilineTextAlignment(.center)
            Button("Save"){save(userEntity: self.selectedUser)}
            List{
                ForEach(userEntity,id: \.self){ user in
                    Text("\(user.name!)")
                        .onTapGesture {
                            self.newName = user.name!
                            self.selectedUser = user
                        }
                    
                }
//                .onDelete(perform: {(indexSet)->Void in
//                    for index in indexSet{
//                        self.viewContext.delete(self.userEntity[index])
//                        try? self.viewContext.save()
//                    }
//                })
            }


        }
    }
    
    func save(userEntity:UserEntity?){
        if self.selectedUser == nil{
            let newUser = UserEntity(context: self.viewContext)
            newUser.name = newName
            try? self.viewContext.save()
        }else{
            viewContext.performAndWait { // ??
                userEntity!.name = self.newName
                try? self.viewContext.save()
                self.newName = ""
                self.selectedUser = nil
            }
        }
    }


}

struct AboutMePage_Previews: PreviewProvider {
    static var previews: some View {
        AboutMePage()
    }
}
